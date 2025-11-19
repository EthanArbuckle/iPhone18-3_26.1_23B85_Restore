uint64_t sub_2689CD728(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B36F54())
  {
    goto LABEL_5;
  }

  sub_2689CD68C(v7);
  if (!v8)
  {
    sub_2688EF38C(v7, &qword_2802A5928, &unk_268B41110);
LABEL_5:
    v5 = 1;
    return v5 & 1;
  }

  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 8);
  v4 = sub_268B37834();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_2689CD7E0(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *a1;
  sub_268B35DC4();
  sub_26891F428(v39, v31);
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CB8, &unk_268B423A0);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        sub_2688E6514(&v33, v36);
        v13 = v37;
        v14 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v14 + 8))(&v33, a2, v13, v14);
        v15 = v33;
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
        (*(v5 + 16))(v11, v16, v4);
        v17 = sub_268B37A34();
        v18 = sub_268B37F04();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v33 = v20;
          *v19 = 136315138;
          v21 = 0xEB00000000726579;
          v22 = 0x616C50616964656DLL;
          v30 = v15;
          switch(v15)
          {
            case 1:
              v21 = 0xE500000000000000;
              v22 = 0x616964656DLL;
              break;
            case 2:
              v21 = 0xE800000000000000;
              v22 = 0x73676E6974746573;
              break;
            case 3:
              v21 = 0xE300000000000000;
              v22 = 7104878;
              break;
            default:
              break;
          }

          v15 = sub_26892CDB8(v22, v21, &v33);

          *(v19 + 4) = v15;
          _os_log_impl(&dword_2688BB000, v17, v18, "Found shared task... should handle in domain: %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x26D6266E0](v20, -1, -1);
          MEMORY[0x26D6266E0](v19, -1, -1);

          (*(v5 + 8))(v11, v4);
          LODWORD(v15) = v30;
        }

        else
        {

          (*(v5 + 8))(v11, v4);
        }

        if (v15 == 3)
        {
          sub_2688EF38C(v39, &byte_2802A6450, &byte_268B3BE10);
          v27 = v12 == 3;
        }

        else if (v12 == 3)
        {
          sub_2688EF38C(v39, &byte_2802A6450, &byte_268B3BE10);
          v27 = 0;
        }

        else
        {
          v27 = sub_26891F6C4(v15, v12);
          sub_2688EF38C(v39, &byte_2802A6450, &byte_268B3BE10);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        return v27 & 1;
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    sub_2688EF38C(v31, &byte_2802A6450, &byte_268B3BE10);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  sub_2688EF38C(&v33, &qword_2802A6CB0, &qword_268B42398);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v9, v23, v4);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Not a shared task. Handling in controls", v26, 2u);
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  sub_2688EF38C(v39, &byte_2802A6450, &byte_268B3BE10);
  v27 = 1;
  return v27 & 1;
}

uint64_t OUTLINED_FUNCTION_1_31(uint64_t result)
{
  *(result + 8) = 1024;
  *(result + 10) = v1 & 1;
  *(result + 14) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 96));
}

Swift::String_optional __swiftcall UsoTask_disable_common_RadioStation.verb()()
{
  v0 = 1886352499;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2689CDD74@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = sub_268B358F4();
  v14 = sub_2688EFD0C(v13);

  if (!v14)
  {
    sub_268B36314();
    if (!v23[1] && !UsoTask_disable_common_RadioStation.referencedSetting()())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v21 = __swift_project_value_buffer(v2, qword_2802CDA10);
      (*(v5 + 16))(v12, v21, v2);
      v16 = sub_268B37A34();
      v22 = sub_268B37F04();
      if (!os_log_type_enabled(v16, v22))
      {
        v19 = 0;
        goto LABEL_11;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v22, "UsoTask_disable_common_RadioStation#shouldHandle bare task, should handle in controls", v18, 2u);
      v19 = 0;
      goto LABEL_9;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v5 + 16))(v10, v15, v2);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (!os_log_type_enabled(v16, v17))
  {
    v19 = 3;
    v12 = v10;
    goto LABEL_11;
  }

  v18 = swift_slowAlloc();
  *v18 = 0;
  _os_log_impl(&dword_2688BB000, v16, v17, "UsoTask_disable_common_RadioStation#shouldHandle task has other nodes, rejecting", v18, 2u);
  v19 = 3;
  v12 = v10;
LABEL_9:
  MEMORY[0x26D6266E0](v18, -1, -1);
LABEL_11:

  result = (*(v5 + 8))(v12, v2);
  *a1 = v19;
  return result;
}

uint64_t UsoTask_disable_common_RadioStation.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UsoTask_disable_common_RadioStation.referencedMediaItem()()
{
  v0 = sub_268B36054();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B36264();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_268B36254();
  v12 = sub_268B36494();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_268B36484();
  (*(v3 + 104))(v7, *MEMORY[0x277D5ED48], v0);
  sub_268B36474();
  (*(v3 + 8))(v7, v0);

  sub_268B36244();

  MEMORY[0x26D6237C0](v11);
  sub_268B35F14();
  sub_268B35EA4();

  return v16[1];
}

uint64_t sub_2689CE2C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689CE31C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689CE370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689CE3C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689CE418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689CE46C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689CE4C0()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689CE514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689CE578()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689CE5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689CE630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689CE694()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689CE6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689CE75C(uint64_t a1)
{
  result = sub_2689CE808(&qword_2802A6CC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689CE808(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B363E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689CE88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_268B37B84();
  (*(a6 + 8))(a1, a2, v12, 1, a3, a4, a5, a6);
}

id sub_2689CE94C()
{
  type metadata accessor for DialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2802A6CD8 = result;
  return result;
}

void sub_2689CE9A4()
{
  OUTLINED_FUNCTION_26();
  v58 = v0;
  v59 = v1;
  v53 = v2;
  v54 = v3;
  v50 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A24();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v51 = v16;
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v49 - v17;
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v18, qword_2802CDA10);
  v27 = OUTLINED_FUNCTION_10_14();
  v28(v27);

  v29 = sub_268B37A34();
  v30 = sub_268B37F04();

  v31 = os_log_type_enabled(v29, v30);
  v56 = v8;
  v57 = v6;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60[0] = v49;
    *v32 = 136315394;
    *(v32 + 4) = sub_26892CDB8(v59, v8, v60);
    *(v32 + 12) = 2080;
    v33 = sub_268B37B74();
    v35 = v12;
    v36 = v9;
    v37 = sub_26892CDB8(v33, v34, v60);

    *(v32 + 14) = v37;
    v9 = v36;
    v12 = v35;
    _os_log_impl(&dword_2688BB000, v29, v30, "Executing CAT: %s with params: %s", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v21 + 8))(v26, v18);
  v38 = v55;
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v39 = qword_2802CDB28;
  sub_268B37A14();
  v40 = v52;
  (*(v12 + 16))(v52, v38, v9);
  v41 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v42 = v41 + v51;
  v43 = (v41 + v51) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = "executeCAT";
  *(v44 + 24) = 10;
  *(v44 + 32) = 2;
  (*(v12 + 32))(v44 + v41, v40, v9);
  *(v44 + v42) = 0;
  v45 = v44 + v43;
  v46 = v54;
  *(v45 + 8) = v53;
  *(v45 + 16) = v46;

  sub_268B38004();
  sub_268B37A04();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2689D1908;
  *(v47 + 24) = v44;
  sub_26890C900(v58 + 32, v60);
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);

  v48 = sub_268B36FA4();
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  if (v48 & 1) != 0 && (v50)
  {
    OUTLINED_FUNCTION_2_21();
    sub_2689CF8D4();
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_2689CEE3C();
  }

  (*(v12 + 8))(v38, v9);
  OUTLINED_FUNCTION_23();
}

void sub_2689CEE3C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v35 = v8;
  v9 = sub_268B368B4();
  v10 = OUTLINED_FUNCTION_1(v9);
  v36 = v11;
  v37 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_268B37A54();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v17, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_10_14();
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "BaseDialogProvider#executeTemplateResult...", v30, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v20 + 8))(v25, v17);
  sub_268B36894();
  if (qword_2802A4E08 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v31 = sub_2689D0A14();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v32 = swift_allocObject();
  v32[2] = v1;
  v32[3] = v35;
  v32[4] = v7;
  v32[5] = v5;
  v32[6] = v33;
  v32[7] = v34;

  sub_268B368A4();
  sub_268B36884();

  (*(v36 + 8))(v16, v37);
  sub_2689A7CD8(v38, &qword_2802A6CE8, &qword_268B42598);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689CF12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v80 = a7;
  v81 = a6;
  v76 = a4;
  v77 = a5;
  v75 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v8 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v70 - v9;
  v10 = sub_268B350F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v83 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CF0, qword_268B425A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v70 - v29);
  sub_2689D1808(a1, &v70 - v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v20, qword_2802CDA10);
    (*(v21 + 16))(v26, v32, v20);
    v33 = v31;
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v84[0] = v37;
      *v36 = 136446210;
      swift_getErrorValue();
      v38 = sub_268B384A4();
      v40 = sub_26892CDB8(v38, v39, v84);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2688BB000, v34, v35, "BaseDialogProvider#executeTemplateResult Error while executing dialog: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x26D6266E0](v37, -1, -1);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    else
    {
    }

    return (*(v21 + 8))(v26, v20);
  }

  else
  {
    (*(v11 + 32))(v19, v30, v10);
    sub_268B350C4();
    sub_2689D0C94();

    v41 = v19;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v20, qword_2802CDA10);
    v43 = v21;
    v44 = v83;
    (*(v21 + 16))(v83, v42, v20);
    v77 = v20;
    v45 = *(v11 + 16);
    v45(v17, v19, v10);
    v46 = v82;
    v45(v82, v19, v10);
    v47 = sub_268B37A34();
    v74 = sub_268B37EE4();
    v48 = os_log_type_enabled(v47, v74);
    v76 = v10;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v73 = v41;
      v50 = v49;
      v71 = swift_slowAlloc();
      v84[0] = v71;
      *v50 = 136315394;
      v70 = v47;
      sub_268B350D4();
      v72 = v45;
      v51 = v43;
      v52 = MEMORY[0x26D6256F0]();
      v54 = v53;

      v55 = *(v11 + 8);
      v75 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v56 = v76;
      v55(v17, v76);
      v57 = sub_26892CDB8(v52, v54, v84);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2080;
      v58 = v82;
      sub_268B350E4();
      v59 = MEMORY[0x26D6256F0]();
      v61 = v60;

      v55(v58, v56);
      v62 = sub_26892CDB8(v59, v61, v84);

      *(v50 + 14) = v62;
      v63 = v70;
      _os_log_impl(&dword_2688BB000, v70, v74, "BaseDialogProvider#executeTemplateResult returning template.print: %s template.speak: %s", v50, 0x16u);
      v64 = v71;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v64, -1, -1);
      v65 = v50;
      v41 = v73;
      MEMORY[0x26D6266E0](v65, -1, -1);

      (*(v51 + 8))(v83, v77);
      v45 = v72;
    }

    else
    {

      v55 = *(v11 + 8);
      v75 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v67 = v46;
      v56 = v76;
      v55(v67, v76);
      v55(v17, v56);
      (*(v43 + 8))(v44, v77);
    }

    v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) + 48);
    v69 = v79;
    v45(v79, v41, v56);
    *(v69 + v68) = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
    swift_storeEnumTagMultiPayload();
    v81(v69);
    sub_2689A7CD8(v69, &qword_2802A6300, &unk_268B3BD80);
    return (v55)(v41, v56);
  }
}

void sub_2689CF8D4()
{
  OUTLINED_FUNCTION_26();
  v61 = v1;
  v62 = v0;
  v58 = v3;
  v59 = v2;
  v60 = v4;
  v63 = v5;
  v6 = sub_268B367A4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v54 = v8;
  v55 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v53 = v12 - v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v25 = *(v16 + 16);
  v25(v23, v24, v13);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "BaseDialogProvider#executeDialog...", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v56 = *(v16 + 8);
  v56(v23, v13);
  sub_268B36754();
  v29 = sub_268B36734();
  if (!v29)
  {
    v29 = sub_268B36744();
  }

  v57 = v29;
  v25(v21, v24, v13);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v64[0] = v33;
    *v32 = 136315138;
    if (sub_268B36734())
    {
      sub_268B36714();

      v34 = v53;
      sub_268B36B14();

      v35 = sub_268B36784();
      v37 = v36;
      (*(v54 + 8))(v34, v55);
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 4271950;
    }

    v38 = sub_26892CDB8(v35, v37, v64);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_2688BB000, v30, v31, "BaseDialogProvider#executeDialog is executing a dialog with responseMode = %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v56(v21, v13);
  v56 = objc_opt_self();
  if (qword_2802A4E08 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v55 = qword_2802A6CD8;
  v39 = v59;
  v40 = v63;
  v54 = sub_268B37BC4();
  v41 = v60;

  sub_268A1A918(v42);

  v43 = sub_268B37B54();

  v44 = v62;
  v45 = sub_2689D0A14();
  sub_268B367F4();

  v46 = sub_268B37B54();

  v47 = *MEMORY[0x277D05220];
  v48 = swift_allocObject();
  v49 = v58;
  v48[2] = v57;
  v48[3] = v49;
  v48[4] = v61;
  v48[5] = v44;
  v48[6] = v39;
  v48[7] = v40;
  v48[8] = v41;
  v64[4] = sub_2689D16F0;
  v64[5] = v48;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 1107296256;
  v64[2] = sub_2689D0988;
  v64[3] = &block_descriptor_2;
  v50 = _Block_copy(v64);

  v51 = v54;
  [v56 execute:v55 catId:v54 parameters:v43 globals:v46 callback:0 options:v47 completion:v50];
  _Block_release(v50);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689CFF04(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t *a8)
{
  v108 = a2;
  v104 = a8;
  v107 = a3;
  v12 = sub_268B350F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v17 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v106 = (&v98 - v18);
  v19 = sub_268B37A54();
  *&v109 = *(v19 - 8);
  v20 = *(v109 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v24 = &v98 - v23;
  if (a1)
  {
    v25 = a1;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v19, qword_2802CDA10);
    v27 = v109;
    (*(v109 + 16))(v24, v26, v19);
    v28 = a1;
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v108;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v110 = v104;
      *v33 = 136446210;
      swift_getErrorValue();
      LODWORD(v102) = v30;
      v34 = sub_268B384A4();
      v36 = sub_26892CDB8(v34, v35, &v110);
      v103 = v19;
      v37 = v36;

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2688BB000, v29, v102, "BaseDialogProvider#executeDialog Error while executing dialog: %{public}s", v33, 0xCu);
      v38 = v104;
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      MEMORY[0x26D6266E0](v38, -1, -1);
      MEMORY[0x26D6266E0](v33, -1, -1);

      (*(v27 + 8))(v24, v103);
    }

    else
    {

      (*(v27 + 8))(v24, v19);
    }

    v58 = v106;
    *v106 = a1;
    swift_storeEnumTagMultiPayload();
    v59 = a1;
    v32(v58);

    return sub_2689A7CD8(v58, &qword_2802A6300, &unk_268B3BD80);
  }

  else
  {
    v102 = v12;
    v103 = v22;
    v100 = v16;
    v101 = v13;
    v39 = [a7 meta];
    sub_268B37B64();

    v40 = a5;
    sub_2689D0C94();

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v19, qword_2802CDA10);
    v42 = v109;
    v43 = v103;
    (*(v109 + 16))(v103, v41, v19);
    v44 = a7;

    v45 = sub_268B37A34();
    v46 = sub_268B37F04();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v19;
      v98 = v45;
      LODWORD(v104) = v46;
      v48 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v110 = v99;
      *v48 = 136446722;
      *(v48 + 4) = sub_26892CDB8(v40, a6, &v110);
      *(v48 + 12) = 2082;
      v49 = [v44 dialog];
      sub_2689D1764();
      v50 = sub_268B37CF4();

      if (sub_2688EFD0C(v50))
      {
        sub_2688EFD10(0, (v50 & 0xC000000000000001) == 0, v50);
        v51 = v47;
        if ((v50 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x26D625BD0](0, v50);
        }

        else
        {
          v52 = *(v50 + 32);
        }

        v53 = v52;

        v54 = [v53 fullSpeak];

        v55 = sub_268B37BF4();
        v57 = v56;
      }

      else
      {
        v55 = 4271950;

        v57 = 0xE300000000000000;
        v51 = v47;
      }

      v61 = sub_26892CDB8(v55, v57, &v110);

      *(v48 + 14) = v61;
      *(v48 + 22) = 2082;
      v62 = [v44 dialog];
      v63 = sub_268B37CF4();

      if (sub_2688EFD0C(v63))
      {
        sub_2688EFD10(0, (v63 & 0xC000000000000001) == 0, v63);
        if ((v63 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x26D625BD0](0, v63);
        }

        else
        {
          v64 = *(v63 + 32);
        }

        v65 = v64;

        v66 = [v65 fullPrint];

        v67 = sub_268B37BF4();
        v69 = v68;
      }

      else
      {
        v67 = 4271950;

        v69 = 0xE300000000000000;
      }

      v70 = sub_26892CDB8(v67, v69, &v110);

      *(v48 + 24) = v70;
      v71 = v98;
      _os_log_impl(&dword_2688BB000, v98, v104, "BaseDialogProvider#executeDialog Successfully evaluated CAT: catId:%{public}s, result.speak:%{public}s, result.print:%{public}s", v48, 0x20u);
      v72 = v99;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v72, -1, -1);
      MEMORY[0x26D6266E0](v48, -1, -1);

      (*(v109 + 8))(v103, v51);
    }

    else
    {

      (*(v42 + 8))(v43, v19);
    }

    v73 = [v44 catId];
    sub_268B37BF4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v74 = swift_allocObject();
    v109 = xmmword_268B3BBC0;
    *(v74 + 16) = xmmword_268B3BBC0;
    v75 = [v44 dialog];
    sub_2689D1764();
    v76 = sub_268B37CF4();

    if (sub_2688EFD0C(v76))
    {
      sub_2688EFD10(0, (v76 & 0xC000000000000001) == 0, v76);
      if ((v76 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x26D625BD0](0, v76);
      }

      else
      {
        v77 = *(v76 + 32);
      }

      v78 = v77;

      v79 = [v78 fullSpeak];

      v80 = sub_268B37BF4();
      v82 = v81;
    }

    else
    {

      v80 = 0;
      v82 = 0xE000000000000000;
    }

    *(v74 + 32) = v80;
    *(v74 + 40) = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = v109;
    v84 = [v44 dialog];
    v85 = sub_268B37CF4();

    if (sub_2688EFD0C(v85))
    {
      sub_2688EFD10(0, (v85 & 0xC000000000000001) == 0, v85);
      v86 = v102;
      if ((v85 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x26D625BD0](0, v85);
      }

      else
      {
        v87 = *(v85 + 32);
      }

      v88 = v87;

      v89 = [v88 fullPrint];

      v90 = sub_268B37BF4();
      v92 = v91;
    }

    else
    {

      v90 = 0;
      v92 = 0xE000000000000000;
      v86 = v102;
    }

    *(v83 + 32) = v90;
    *(v83 + 40) = v92;
    v93 = v100;
    sub_268B350A4();
    v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) + 48);
    v95 = v101;
    v96 = v106;
    (*(v101 + 16))(v106, v93, v86);
    *(v96 + v94) = v44;
    swift_storeEnumTagMultiPayload();
    v97 = v44;
    v108(v96);
    sub_2689A7CD8(v96, &qword_2802A6300, &unk_268B3BD80);
    return (*(v95 + 8))(v93, v86);
  }
}

void sub_2689D0988(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_2689D0A14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = *(v0 + 72);
  if (*(v5 + 16))
  {
    sub_26892E0F4(*(v0 + 72), &v10);
    if (v11)
    {
      OUTLINED_FUNCTION_6_21();
    }

    else
    {
      sub_2689A7CD8(&v10, &byte_2802A6450, &byte_268B3BE10);
    }

    sub_26892E0F4(v5, &v10);
    if (v11)
    {
      OUTLINED_FUNCTION_6_21();
    }

    else
    {
      sub_2689A7CD8(&v10, &byte_2802A6450, &byte_268B3BE10);
    }

    sub_26892E0F4(v5, &v10);
    if (v11)
    {
      OUTLINED_FUNCTION_6_21();
    }

    else
    {
      sub_2689A7CD8(&v10, &byte_2802A6450, &byte_268B3BE10);
    }

    sub_268B36864();
    sub_268B36814();
    sub_268B36834();

    sub_268B36844();
  }

  else
  {
    sub_268B36874();
    sub_268B36804();
  }

  v6 = sub_268B367A4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  sub_268B36824();

  sub_2689A7CD8(v4, &qword_2802A6CE0, &qword_268B49D30);
  v7 = sub_268B36854();

  return v7;
}

void sub_2689D0C94()
{
  OUTLINED_FUNCTION_26();
  v58 = v1;
  v59 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v60 = *(v9 + 16);
  v61 = v19;
  v60(v18);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "BaseDialogProvider#catchAllForRadarFilingConsideration...", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v9 + 8);
  v23(v18, v6);
  v24 = sub_2689A99EC(v3);
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v57 = v23;
    *&v65 = v24;
    *(&v65 + 1) = v25;
    MEMORY[0x28223BE20](v24);
    *(&v54 - 2) = &v65;
    if (sub_268ACD018())
    {
      (v60)(v16, v61, v6);

      v28 = sub_268B37A34();
      v29 = sub_268B37EC4();

      v30 = os_log_type_enabled(v28, v29);
      v56 = v5;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        *v31 = 136315394;
        *(v31 + 4) = sub_26892CDB8(v59, v5, &v65);
        *(v31 + 12) = 2080;
        v32 = sub_26892CDB8(v26, v27, &v65);

        *(v31 + 14) = v32;
        _os_log_impl(&dword_2688BB000, v28, v29, "BaseDialogProvider#catchAllForRadarFilingConsideration, catId: %s and category: %s, possible TTR candidate", v31, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      v57(v16, v6);
      v33 = v58;
      sub_26892E0F4(v58, &v65);
      if (v66)
      {
        v34 = OUTLINED_FUNCTION_3_24();
        if (v34)
        {
          v35 = v63;
        }

        else
        {
          v35 = 0;
        }

        if (v34)
        {
          v36 = v64;
        }

        else
        {
          v36 = 0;
        }

        v54 = v36;
        v55 = v35;
      }

      else
      {
        sub_2689A7CD8(&v65, &byte_2802A6450, &byte_268B3BE10);
        v54 = 0;
        v55 = 0;
      }

      OUTLINED_FUNCTION_9_13();
      if (v66)
      {
        if (OUTLINED_FUNCTION_3_24())
        {
          v37 = v63;
          v38 = v64;
          goto LABEL_29;
        }
      }

      else
      {
        sub_2689A7CD8(&v65, &byte_2802A6450, &byte_268B3BE10);
      }

      OUTLINED_FUNCTION_9_13();
      if (v66)
      {
        if (OUTLINED_FUNCTION_3_24())
        {
          *&v65 = v63;
          v37 = sub_268B38404();
          v38 = v39;
          goto LABEL_29;
        }
      }

      else
      {
        sub_2689A7CD8(&v65, &byte_2802A6450, &byte_268B3BE10);
      }

      v37 = 0;
      v38 = 0;
LABEL_29:
      (v60)(v62, v61, v6);
      v40 = sub_268B37A34();
      v41 = sub_268B37ED4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_14();
        *v42 = 0;
        _os_log_impl(&dword_2688BB000, v40, v41, "BaseDialogProvider#catchAllForRadarFilingConsideration TTR attempt", v42, 2u);
        OUTLINED_FUNCTION_12();
      }

      v57(v62, v6);
      sub_26892E0F4(v33, &v65);
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
        if (OUTLINED_FUNCTION_3_24())
        {
          v43 = v63;
          sub_26892E200(0xD00000000000001BLL, 0x8000000268B59740, v63);
          OUTLINED_FUNCTION_8_15(0x6150726579616C70);

          v44 = v65;
          v45 = sub_26892E200(0xD000000000000016, 0x8000000268B59760, v43);
          if (v46)
          {
            v47 = v46;
          }

          else
          {
            v45 = 0xD000000000000015;
            v47 = 0x8000000268B59780;
          }

          strcpy(&v65, "commandID = ");
          BYTE13(v65) = 0;
          HIWORD(v65) = -5120;
          MEMORY[0x26D625650](v45, v47);

          v48 = v65;
          sub_26892E200(0xD000000000000013, 0x8000000268B597A0, v43);

          OUTLINED_FUNCTION_8_15(0x7245664F656D6974);

          v49 = v65;
          *&v65 = 10;
          *(&v65 + 1) = 0xE100000000000000;
          MEMORY[0x26D625650](v44, *(&v44 + 1));

          MEMORY[0x26D625650](2570, 0xE200000000000000);
          MEMORY[0x26D625650](v48, *(&v48 + 1));

          MEMORY[0x26D625650](10, 0xE100000000000000);
          MEMORY[0x26D625650](v49, *(&v49 + 1));

          v51 = *(&v65 + 1);
          v50 = v65;
          goto LABEL_39;
        }
      }

      else
      {
        sub_2689A7CD8(&v65, &byte_2802A6450, &byte_268B3BE10);
      }

      v50 = 0;
      v51 = 0xE000000000000000;
LABEL_39:
      sub_268B372E4();
      v52 = swift_allocObject();
      v52[2] = v37;
      v52[3] = v38;
      v52[4] = v59;
      v53 = v55;
      v52[5] = v56;
      v52[6] = v53;
      v52[7] = v54;
      v52[8] = v50;
      v52[9] = v51;

      sub_268B372D4();

      goto LABEL_40;
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D1494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a3;
  if (!a3)
  {

    a2 = a4;
    v15 = a5;
  }

  type metadata accessor for ErrorFilingHelper();

  static ErrorFilingHelper.fileTTR(errorToReport:errorDomain:extraInfo:extraDescInfo:duc:attachmentURLs:)(a2, v15, 0, 0xE000000000000000, a6, a7, a8, a9, a4, a5, a1, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, vars0);
}

void *sub_2689D1568()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  return v0;
}

uint64_t sub_2689D1598()
{
  sub_2689D1568();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2689D1614()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2689D1698()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2689D16F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  return sub_2689CFE4C();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2689D1764()
{
  result = qword_2802A57D0;
  if (!qword_2802A57D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A57D0);
  }

  return result;
}

uint64_t sub_2689D17A8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2689D1808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CF0, qword_268B425A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2689D1878()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_11_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2689D1908(uint64_t a1)
{
  v3 = *(sub_268B37A24() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + 32);

  return sub_2689A3D90(a1, v6, v7, v12, v1 + v4, v8, v10);
}

uint64_t sub_2689D19B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_2_21()
{
  result = *(v0 - 128);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_8_15(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = v1 | 0xED00002000000000;

  JUMPOUT(0x26D625650);
}

double OUTLINED_FUNCTION_9_13()
{

  return sub_26892E0F4(v0, (v1 - 120));
}

Swift::String_optional __swiftcall UsoTask_skipForward_uso_NoEntity.verb()()
{
  v0 = 1885956979;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipForward_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2689D1C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689D1C5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689D1CB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689D1D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689D1D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689D1DAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689D1E00()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689D1E54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689D1EB8()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689D1F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689D1F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689D1FD4()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689D2038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689D209C(uint64_t a1)
{
  result = sub_2689D2148(&qword_2802A6CF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689D2148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B361F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2689D21AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2689D21EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

id ResumeMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ResumeMediaIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B36C54();
  v35 = sub_268B36C44();
  sub_268B37204();
  v34 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v42);
  sub_268AD33CC(v41);
  sub_268B36754();
  v33 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v42, v42[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v39 = v1;
  v40 = MEMORY[0x277D5F680];
  *&v38 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v37[4] = &off_28795F5E0;
  v37[3] = v13;
  v37[0] = v12;
  v36[4] = &off_287960608;
  v36[3] = v2;
  v36[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v41, (v14 + 7));
  v14[12] = v33;
  sub_2688E6514(&v38, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);

  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  sub_268B34C64();
  sub_2689D8CB0(v35, v34, &v43, v14, v42);
  swift_getObjectType();
  v31 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v32 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689D2690()
{
  OUTLINED_FUNCTION_26();
  v26 = v1;
  v27 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_268B36754();
  v25 = sub_268B36734();
  OUTLINED_FUNCTION_0_3();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v9 + 16))(v13, v15, v6);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = v18 + v11;
  v20 = v6;
  v21 = (v18 + v11) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleResumeMedia";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  (*(v9 + 32))(v22 + v18, v13, v20);
  *(v22 + v19) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_2689D2900(v26, v27, v25, sub_268958A64, v22);

  (*(v9 + 8))(v15, v20);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D2900(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v59 = a3;
  v60 = a2;
  v64 = a1;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = swift_allocObject();
  v61 = a4;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268958D98;
  *(v18 + 24) = v17;
  v62 = v18;
  v63 = a5;
  v19 = qword_2802A4F30;
  swift_retain_n();
  v65 = v17;
  swift_retain_n();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v21 = v8[2];
  v21(v16, v20, v7);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "Handling resume media", v24, 2u);
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  v25 = v8[1];
  v25(v16, v7);
  v26 = sub_268B18100();
  if (v26)
  {
    v27 = v26;
    if (sub_2688EFD0C(v26))
    {
      v28 = v60;
      v29 = *&v60[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 32];
      __swift_project_boxed_opaque_existential_1(&v60[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState], *&v60[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 24]);
      if (sub_2688C3308())
      {
        v21(v58, v20, v7);
        v30 = sub_268B37A34();
        v31 = sub_268B37F04();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_2688BB000, v30, v31, "Resume media submitting suppress delay feedback", v32, 2u);
          MEMORY[0x26D6266E0](v32, -1, -1);
        }

        v25(v58, v7);
        sub_268B38004();
        if (qword_2802A5028 != -1)
        {
          swift_once();
        }

        v33 = v60;
        sub_268B37A04();
        v34 = *&v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper];
        v61 = [objc_allocWithZone(MEMORY[0x277D47B38]) init];
        v35 = swift_allocObject();
        v35[2] = v33;
        v35[3] = v27;
        v36 = v64;
        v37 = v59;
        v35[4] = v64;
        v35[5] = v37;
        v38 = v62;
        v35[6] = sub_2688E19F8;
        v35[7] = v38;

        v39 = v34[11];
        __swift_project_boxed_opaque_existential_1(v34 + 7, v34[10]);
        sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
        v40 = v36;
        v41 = v33;

        v42 = v61;
        sub_268B35134();
      }

      else
      {
        v50 = *&v28[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper];
        v51 = v59;

        v52 = v63;
        swift_retain_n();

        v53 = v64;
        v54 = v28;
        sub_268A31684(v27, 0, v50, v53, v54, v51, v27, v61, v52, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1]);
      }

      goto LABEL_18;
    }
  }

  v21(v14, v20, v7);
  v43 = sub_268B37A34();
  v44 = sub_268B37EE4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "No devices found in ResumeMediaIntent, returning failure", v45, 2u);
    MEMORY[0x26D6266E0](v45, -1, -1);
  }

  v25(v14, v7);
  v46 = sub_268B36EA4();
  v47 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v48 = v46;
  v49 = ResumeMediaIntentResponse.init(code:userActivity:)(5, v46);
  v66[0] = v49;
  v61(v66);

LABEL_18:
}

uint64_t sub_2689D2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v54 = a7;
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v52 = a2;
  v55 = sub_268B37A54();
  v48 = *(v55 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v55);
  v47 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6368, qword_268B3EE78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44[-v15];
  v17 = sub_268B351A4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v44[-v23];
  sub_2688F1FA4(a1, v16, &qword_2802A6368, qword_268B3EE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v24, v16, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = v55;
    v26 = __swift_project_value_buffer(v55, qword_2802CDA10);
    v27 = v48;
    (*(v48 + 16))(v47, v26, v25);
    v28 = *(v18 + 16);
    v28(v22, v24, v17);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v31 = 138412290;
      sub_2689D99EC(&qword_2802A6370, MEMORY[0x277D5BE90]);
      swift_allocError();
      v45 = v30;
      v28(v32, v22, v17);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = *(v18 + 8);
      v34(v22, v17);
      *(v31 + 4) = v33;
      v35 = v46;
      *v46 = v33;
      _os_log_impl(&dword_2688BB000, v29, v45, "ACE service submission error: %@", v31, 0xCu);
      sub_2688C058C(v35, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v35, -1, -1);
      MEMORY[0x26D6266E0](v31, -1, -1);

      (*(v27 + 8))(v47, v55);
      v34(v24, v17);
    }

    else
    {

      v42 = *(v18 + 8);
      v42(v22, v17);
      (*(v27 + 8))(v47, v25);
      v42(v24, v17);
    }
  }

  else
  {
    sub_2688C058C(v16, &qword_2802A6368, qword_268B3EE78);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v36 = v55;
    v37 = __swift_project_value_buffer(v55, qword_2802CDA10);
    v38 = v48;
    (*(v48 + 16))(v12, v37, v36);
    v39 = sub_268B37A34();
    v40 = sub_268B37F04();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "ACE service submission succeeded", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    (*(v38 + 8))(v12, v36);
  }

  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  sub_268B37A04();
  return sub_2689D73FC(v49, v50, v51, 0, v53, v54);
}

void sub_2689D3650()
{
  OUTLINED_FUNCTION_26();
  v83 = v0;
  v84 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_86_1();
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v87 = v6;
  v88 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v85 = (v9 - v10);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v82[1] = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v86 = v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  v20 = v82 - v19;
  v21 = sub_268B36F24();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v82 - v31;
  sub_2688F1FA4(v3, v20, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = (*(v24 + 32))(v32, v20, v21);
    if (qword_2802A4F30 != -1)
    {
      v33 = OUTLINED_FUNCTION_0_0();
    }

    v34 = v88;
    OUTLINED_FUNCTION_20_13(v33, qword_2802CDA10);
    v35 = v87;
    v36 = OUTLINED_FUNCTION_42_4();
    v37(v36);
    (*(v24 + 16))(v29, v32, v21);
    v38 = sub_268B37A34();
    v39 = sub_268B37ED4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_172_0();
      v41 = OUTLINED_FUNCTION_173_0();
      v92[0] = v41;
      *v40 = 136315138;
      sub_2689D99EC(&qword_2802A5DE0, MEMORY[0x277D5F6E0]);
      v42 = sub_268B38404();
      v44 = v43;
      v85 = v32;
      v45 = *(v24 + 8);
      v45(v29, v21);
      v46 = sub_26892CDB8(v42, v44, v92);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_2688BB000, v38, v39, "Not registering correction/undo for resume intent because resume did not succeed: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v87 + 8))(v86, v88);
      v45(v85, v21);
    }

    else
    {

      v67 = *(v24 + 8);
      v67(v29, v21);
      (*(v35 + 8))(v86, v34);
      v67(v32, v21);
    }

    goto LABEL_20;
  }

  sub_2688C058C(v20, &qword_2802A5DE8, &qword_268B3D790);
  if (v0)
  {
    sub_268B36704();
    sub_268B34A44();

    v47 = v87;
    if (*(&v90 + 1))
    {
      v48 = sub_2688E6514(&v89, v92);
      if (qword_2802A4F30 != -1)
      {
        v48 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_20_13(v48, qword_2802CDA10);
      v49 = *(v47 + 16);
      v50 = OUTLINED_FUNCTION_39_3();
      v51(v50);
      v52 = sub_268B37A34();
      v53 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v53))
      {
        v54 = OUTLINED_FUNCTION_14();
        *v54 = 0;
        OUTLINED_FUNCTION_37_7();
        _os_log_impl(v55, v56, v57, v58, v54, 2u);
        OUTLINED_FUNCTION_12();
      }

      v59 = *(v47 + 8);
      v60 = OUTLINED_FUNCTION_192();
      v61(v60);
      __swift_project_boxed_opaque_existential_1(v92, v92[3]);
      OUTLINED_FUNCTION_0_3();
      v62 = swift_allocObject();
      v63 = v83;
      v64 = v84;
      *(v62 + 16) = v83;
      *(v62 + 24) = v64;
      v65 = v63;
      v66 = v64;
      sub_268B34A34();

      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      goto LABEL_20;
    }
  }

  else
  {
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v47 = v87;
  }

  v68 = sub_2688C058C(&v89, &qword_2802A6D60, &qword_268B50890);
  if (qword_2802A4F30 != -1)
  {
    v68 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_20_13(v68, qword_2802CDA10);
  v69 = *(v47 + 16);
  v70 = OUTLINED_FUNCTION_39_3();
  v71(v70);
  v72 = sub_268B37A34();
  v73 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_115_0(v73))
  {
    v74 = OUTLINED_FUNCTION_14();
    *v74 = 0;
    OUTLINED_FUNCTION_37_7();
    _os_log_impl(v75, v76, v77, v78, v74, 2u);
    OUTLINED_FUNCTION_12();
  }

  v79 = *(v47 + 8);
  v80 = OUTLINED_FUNCTION_192();
  v81(v80);
LABEL_20:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D3C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2689D3C94, 0, 0);
}

uint64_t sub_2689D3C94()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_268B352B4();
  *v3 = v0;
  v3[1] = sub_2689D3D90;
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000032, 0x8000000268B59990, sub_2689D983C, v1, v4);
}

uint64_t sub_2689D3D90()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_2689D3EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  v5 = *(v49 - 8);
  v46[1] = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = v46 - v6;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController, v54);
  v12 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState, v53);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService, v51);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceService, v50);
  v13 = v52;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = v55;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 16))(v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_268AF5A60();
  v46[0] = v25;
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  v26 = [objc_allocWithZone(type metadata accessor for PauseMediaIntent()) init];
  if (sub_268B18100())
  {
    type metadata accessor for Device();
    v27 = sub_268B37CE4();
  }

  else
  {
    v27 = 0;
  }

  [v26 setDevices_];

  if (sub_268B18140())
  {
    type metadata accessor for DeviceContext();
    v28 = sub_268B37CE4();
  }

  else
  {
    v28 = 0;
  }

  [v26 setDeviceContext_];

  [v26 setMediaType_];
  if (sub_268B18120())
  {
    type metadata accessor for DeviceQuery();
    v29 = sub_268B37CE4();
  }

  else
  {
    v29 = 0;
  }

  [v26 setDeviceQueries_];

  if (sub_2689D8BEC(a3))
  {
    type metadata accessor for ControlsSettingAttribute();
    v30 = sub_268B37CE4();
  }

  else
  {
    v30 = 0;
  }

  [v26 setSettingAttributes_];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v31 = sub_268B38054();
  [v26 setIsDirectInvocation_];

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v11, v32, v7);
  v33 = v26;
  v34 = a3;
  v35 = sub_268B37A34();
  v36 = sub_268B37ED4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412546;
    *(v37 + 4) = v33;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v33;
    v38[1] = v34;
    v39 = v33;
    v40 = v34;
    _os_log_impl(&dword_2688BB000, v35, v36, "Executing pause intent %@ as a correction/undo for resume intent %@", v37, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v38, -1, -1);
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v41 = v47;
  v42 = v49;
  (*(v5 + 16))(v47, v48, v49);
  v43 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v44 = swift_allocObject();
  (*(v5 + 32))(v44 + v43, v41, v42);
  v45 = v46[0];
  sub_268AEE8D8();
}

uint64_t sub_2689D45A4(char *a1)
{
  v2 = sub_268B352B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v7] == 4)
  {
    *(v6 + 4) = 0;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v8 = MEMORY[0x277D5BFD0];
  }

  else
  {
    *(v6 + 4) = 0;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_268B381C4();

    v16 = 0xD000000000000015;
    v17 = 0x8000000268B599D0;
    v9 = [a1 description];
    v10 = sub_268B37BF4();
    v12 = v11;

    MEMORY[0x26D625650](v10, v12);

    v13 = v17;
    *(v6 + 5) = v16;
    *(v6 + 6) = v13;
    v8 = MEMORY[0x277D5BFC8];
  }

  (*(v3 + 104))(v6, *v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  return sub_268B37D94();
}

void sub_2689D477C(char *a1, uint64_t a2, void (**a3)(void, void))
{
  v70 = a2;
  v5 = sub_268B36C04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x28223BE20](v5);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v64 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - v16;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
LABEL_32:
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v19 = v10[2];
  v66 = v18;
  v67 = v19;
  (v19)(v17);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v68 = v6;
    v23 = v5;
    v24 = v9;
    v25 = v10;
    v26 = a1;
    v27 = a3;
    v28 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Resolving devices for resume media", v22, 2u);
    v29 = v28;
    a3 = v27;
    a1 = v26;
    v10 = v25;
    v9 = v24;
    v5 = v23;
    v6 = v68;
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v68 = v10[1];
  (v68)(v17, v9);
  v30 = sub_2689D8C4C(a1);
  if (!v31)
  {
    v42 = sub_268921060();
    v43 = v70;
    if ((v42 & 1) != 0 && (v44 = *(v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState), *(v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
    {
      v57 = v64;
      v67(v64, v66, v9);
      v58 = sub_268B37A34();
      v59 = sub_268B37EE4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2688BB000, v58, v59, "Whole House Audio requests are unsupported on this platform", v60, 2u);
        MEMORY[0x26D6266E0](v60, -1, -1);
      }

      (v68)(v57, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_268B3BBA0;
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      *(v61 + 32) = sub_268B17B04(2);
      v62 = sub_268B37CE4();
      (a3)[2](a3, v62);
    }

    else
    {
      v45 = *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector);
      v46 = v65;
      (*(v6 + 13))(v65, *MEMORY[0x277D5F660], v5);
      [a1 mediaType];
      _Block_copy(a3);
      sub_268909C48();
      (*(v6 + 1))(v46, v5);
    }

LABEL_24:
    _Block_release(a3);
    _Block_release(a3);
    return;
  }

  v32 = v30;
  v33 = v31;
  v6 = v69;
  v67(v69, v66, v9);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v6 = a1;
    v36 = swift_slowAlloc();
    v37 = a3;
    v38 = swift_slowAlloc();
    v71 = v38;
    *v36 = 136315138;
    v39 = sub_26892CDB8(v32, v33, &v71);

    *(v36 + 4) = v39;
    _os_log_impl(&dword_2688BB000, v34, v35, "Request to resume app: %s. Forcing resolved device to be the local device", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    v40 = v38;
    a3 = v37;
    MEMORY[0x26D6266E0](v40, -1, -1);
    MEMORY[0x26D6266E0](v36, -1, -1);

    v41 = v69;
  }

  else
  {

    v41 = v6;
  }

  (v68)(v41, v9);
  v47 = sub_268B18140();
  if (!v47)
  {
LABEL_22:
    v50 = 0;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_268B3BBA0;
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v53 = *(v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector);
    v54 = sub_268901CB8(v50);
    v55 = sub_268B2CC98(v54);

    *(v52 + 32) = v55;
    v56 = sub_268B37CE4();
    (a3)[2](a3, v56);

    goto LABEL_24;
  }

  v17 = v47;
  v48 = sub_2688EFD0C(v47);
  v9 = 0;
  v5 = v17 & 0xC000000000000001;
  v10 = (v17 & 0xFFFFFFFFFFFFFF8);
  a1 = &unk_279C42000;
  while (1)
  {
    if (v48 == v9)
    {

      goto LABEL_22;
    }

    if (v5)
    {
      v49 = MEMORY[0x26D625BD0](v9, v17);
    }

    else
    {
      if (v9 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v49 = *(v17 + 8 * v9 + 32);
    }

    v50 = v49;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v51 = [v49 proximity];
    if ((v51 - 1) >= 4)
    {
      break;
    }

    ++v9;
  }

  v63 = v51;
  if (!v51)
  {

    goto LABEL_23;
  }

  _Block_release(a3);
  _Block_release(a3);
  v71 = v63;
  sub_268B38474();
  __break(1u);
}

void sub_2689D4EDC()
{
  OUTLINED_FUNCTION_26();
  v65 = v0;
  v66 = v1;
  v3 = v2;
  v4 = sub_268B36C04();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v61 = (v11 - v10);
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v60 = v18 - v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v62 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v12, qword_2802CDA10);
  v63 = v23;
  v64 = *(v15 + 16);
  v64(v0);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving devices for resume media", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v15 + 8);
  v15 += 8;
  v27 = v28;
  v28(v0, v12);
  v29 = sub_2689D8C4C(v3);
  if (!v30)
  {
    if ((sub_268921060() & 1) != 0 && (v42 = *(v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState), *(v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 24)), OUTLINED_FUNCTION_189(), (sub_2688C3240() & 1) == 0))
    {
      v53 = v27;
      (v64)(v60, v63, v12);
      v54 = sub_268B37A34();
      v55 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v55))
      {
        v56 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v56);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v57, v58, "Whole House Audio requests are unsupported on this platform");
        OUTLINED_FUNCTION_83_0();
      }

      v53(v60, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v59 = OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_11_17(v59, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v59[2].n128_u64[0] = sub_268B17B04(2);
      v66(v59);
    }

    else
    {
      v43 = *(v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector);
      v7[13](v61, *MEMORY[0x277D5F660], v4);
      [v3 mediaType];

      sub_26890A508();
      (v7[1])(v61, v4);
    }

LABEL_24:
    OUTLINED_FUNCTION_23();
    return;
  }

  v31 = v29;
  v32 = v30;
  v61 = v27;
  v4 = v62;
  (v64)(v62, v63, v12);
  v33 = sub_268B37A34();
  v34 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v34))
  {
    v35 = OUTLINED_FUNCTION_172_0();
    v36 = OUTLINED_FUNCTION_173_0();
    v67 = v36;
    *v35 = 136315138;
    v37 = sub_26892CDB8(v31, v32, &v67);

    *(v35 + 4) = v37;
    OUTLINED_FUNCTION_72();
    _os_log_impl(v38, v39, v40, v41, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v61(v62, v12);
  v44 = sub_268B18140();
  if (!v44)
  {
LABEL_22:
    v47 = 0;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v49 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_11_17(v49, xmmword_268B3BBA0);
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v50 = *(v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector);
    v51 = sub_268901CB8(v47);
    v52 = sub_268B2CC98(v51);

    v49[2].n128_u64[0] = v52;
    v66(v49);

    goto LABEL_24;
  }

  v0 = v44;
  v45 = sub_2688EFD0C(v44);
  v3 = 0;
  v12 = v0 & 0xFFFFFFFFFFFFFF8;
  v7 = &unk_279C42000;
  while (1)
  {
    if (v45 == v3)
    {

      goto LABEL_22;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x26D625BD0](v3, v0);
    }

    else
    {
      if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v46 = *(v0 + 8 * v3 + 32);
    }

    v47 = v46;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v48 = [v46 proximity];
    if (v48 - 1 >= 4)
    {
      break;
    }

    ++v3;
  }

  if (!v48)
  {

    goto LABEL_23;
  }

  v67 = v48;
  sub_268B38474();
  __break(1u);
}

void sub_2689D54E8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_141();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        v19 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_20_13(v19, qword_2802CDA10);
      v22 = OUTLINED_FUNCTION_42_4();
      v23(v22);

      v24 = sub_268B37A34();
      v25 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_172_0();
        v27 = OUTLINED_FUNCTION_173_0();
        v78 = v27;
        *v26 = 136315138;
        v28 = type metadata accessor for Device();
        v29 = MEMORY[0x26D6256F0](v6, v28);
        OUTLINED_FUNCTION_30_3(v29, v30);
        v76 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v26 + 4) = v10;
        _os_log_impl(&dword_2688BB000, v24, v25, "ResumeMediaIntentHandler#resolveDevices Disambiguating between devices: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v2[1](v0, v7);
        v2 = v76;
      }

      else
      {

        (*(v10 + 8))(v0, v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v58 = OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_11_17(v58, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v59 = sub_268B2CCFC(v6);
    }

    else
    {
      v76 = v2;
      if (qword_2802A4F30 != -1)
      {
        v19 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_20_13(v19, qword_2802CDA10);
      v74 = *(v10 + 16);
      v75 = v44;
      v74(v21);
      v45 = sub_268B37A34();
      v46 = sub_268B37EE4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_172_0();
        v73 = v10;
        v48 = v47;
        v72 = OUTLINED_FUNCTION_173_0();
        v78 = v72;
        *v48 = 136315138;
        v77 = v6 & 1;
        sub_26890C84C();
        v49 = sub_268B384A4();
        v51 = OUTLINED_FUNCTION_48_5(v49, v50);

        *(v48 + 4) = v51;
        _os_log_impl(&dword_2688BB000, v45, v46, "ResumeMediaIntentHandler#resolveDevices Error resolving devices: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        OUTLINED_FUNCTION_12();
        v10 = v73;
        OUTLINED_FUNCTION_12();
      }

      v52 = *(v10 + 8);
      v52(v21, v7);
      v2 = v76;
      if ((v6 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v69 = OUTLINED_FUNCTION_29_6();
        OUTLINED_FUNCTION_11_17(v69, xmmword_268B3BBA0);
        type metadata accessor for ResumeMediaDevicesResolutionResult();
        v69[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v74)(v15, v75, v7);
      v53 = sub_268B37A34();
      v54 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v54))
      {
        v55 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v55);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v56, v57, "ResumeMediaIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v52(v15, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v58 = OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_11_17(v58, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v59 = sub_268B17B04(1);
    }

    v58[2].n128_u64[0] = v59;
LABEL_32:
    v70 = sub_268B37CE4();
    (v2)[2](v2, v70);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    v19 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_20_13(v19, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = OUTLINED_FUNCTION_39_3();
  v33(v32);

  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_172_0();
    v37 = OUTLINED_FUNCTION_173_0();
    v78 = v37;
    *v36 = 136315138;
    v38 = type metadata accessor for Device();
    v39 = MEMORY[0x26D6256F0](v6, v38);
    OUTLINED_FUNCTION_30_3(v39, v40);
    v76 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v36 + 4) = v10;
    _os_log_impl(&dword_2688BB000, v34, v35, "ResumeMediaIntentHandler#resolveDevices Success resolving devices: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v41 = v2[1];
    v42 = OUTLINED_FUNCTION_192();
    v43(v42);
    v2 = v76;
  }

  else
  {

    v60 = *(v10 + 8);
    v61 = OUTLINED_FUNCTION_192();
    v62(v61);
  }

  v63 = sub_2688EFD0C(v6);
  if (!v63)
  {
LABEL_30:
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    goto LABEL_32;
  }

  v64 = v63;
  v78 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v64 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v65 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x26D625BD0](v65, v6);
      }

      else
      {
        v66 = *(v6 + 8 * v65 + 32);
      }

      v67 = v66;
      ++v65;
      sub_268B2CC98(v66);

      sub_268B38214();
      v68 = v78[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v64 != v65);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_2689D5BA8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v63 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
      (*(v12 + 16))(v0);

      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_173_0();
        v65 = v25;
        *v24 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v8, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v62 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v24 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v22, v23, "ResumeMediaIntentHandler#resolveDevices Disambiguating between devices: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v12 + 8))(v0, v62);
      }

      else
      {

        (*(v12 + 8))(v0, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v50 = OUTLINED_FUNCTION_29_6();
      OUTLINED_FUNCTION_11_17(v50, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v51 = sub_268B2CCFC(v8);
    }

    else
    {
      v62 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
      v60 = *(v12 + 16);
      v61 = v36;
      v60(v21);
      v37 = sub_268B37A34();
      v38 = sub_268B37EE4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_172_0();
        v59 = v12;
        v40 = v39;
        v58 = OUTLINED_FUNCTION_173_0();
        v65 = v58;
        *v40 = 136315138;
        v64 = v8 & 1;
        sub_26890C84C();
        v41 = sub_268B384A4();
        v43 = OUTLINED_FUNCTION_48_5(v41, v42);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_2688BB000, v37, v38, "ResumeMediaIntentHandler#resolveDevices Error resolving devices: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        OUTLINED_FUNCTION_12();
        v12 = v59;
        OUTLINED_FUNCTION_12();
      }

      v44 = *(v12 + 8);
      v44(v21, v9);
      if (v8)
      {
        (v60)(v1, v61, v9);
        v45 = sub_268B37A34();
        v46 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v46))
        {
          v47 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v47);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v48, v49, "ResumeMediaIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v44(v1, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v50 = OUTLINED_FUNCTION_29_6();
        OUTLINED_FUNCTION_11_17(v50, xmmword_268B3BBA0);
        type metadata accessor for ResumeMediaDevicesResolutionResult();
        v51 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v50 = OUTLINED_FUNCTION_29_6();
        OUTLINED_FUNCTION_11_17(v50, xmmword_268B3BBA0);
        type metadata accessor for ResumeMediaDevicesResolutionResult();
        v51 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v50[2].n128_u64[0] = v51;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
  (*(v12 + 16))(v18);

  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_172_0();
    v32 = OUTLINED_FUNCTION_173_0();
    v65 = v32;
    *v31 = 136315138;
    v33 = type metadata accessor for Device();
    v34 = MEMORY[0x26D6256F0](v8, v33);
    OUTLINED_FUNCTION_30_3(v34, v35);
    v62 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v31 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v29, v30, "ResumeMediaIntentHandler#resolveDevices Success resolving devices: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v12 + 8))(v18, v62);
  }

  else
  {

    (*(v12 + 8))(v18, v9);
  }

  v52 = sub_2688EFD0C(v8);
  v50 = MEMORY[0x277D84F90];
  if (!v52)
  {
    goto LABEL_32;
  }

  v53 = v52;
  v65 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v53 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v54 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D625BD0](v54, v8);
      }

      else
      {
        v55 = *(v8 + 8 * v54 + 32);
      }

      v56 = v55;
      ++v54;
      sub_268B2CC98(v55);

      sub_268B38214();
      v57 = v65[2];
      sub_268B38244();
      OUTLINED_FUNCTION_43_5();
      sub_268B38254();
      sub_268B38224();
    }

    while (v53 != v54);
    v50 = v65;
LABEL_32:
    v63(v50);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_2689D6268(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_86_1();
  type metadata accessor for ResumeMediaDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689D62D0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v5 = ResumeMediaIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689D633C(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v4 = ResumeMediaIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689D63C8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_2689D6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_268B36F24();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_2688F1FA4(v23, &a9 - v38, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v27[4];
    v40(v33, v39, v24);
    sub_268B36EC4();
    v41 = v27[1];
    v41(v33, v24);
    v42 = OUTLINED_FUNCTION_189();
    (v40)(v42);
    v43 = v27[11];
    v44 = OUTLINED_FUNCTION_103();
    v46 = v45(v44);
    if (v46 != *MEMORY[0x277D5F6C8] && v46 != *MEMORY[0x277D5F688] && v46 != *MEMORY[0x277D5F690])
    {
      v47 = OUTLINED_FUNCTION_103();
      (v41)(v47);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D6670(void *a1, uint64_t a2, char *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v49 = a2;
  v50 = a3;
  v8 = sub_268B37A54();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_268958EDC;
  *(v13 + 24) = v12;
  v51 = a5;

  v14 = [a1 mediaType];
  v15 = sub_268AACBE0();
  v16 = sub_268A62F08(v14, v15);
  if (v17)
  {
    sub_2689A51F0(v16, v17, a1);
    v18 = v50;
    v19 = *&v50[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v50[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v50[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v49;
    v20[4] = a1;
    v20[5] = sub_268958EA4;
    v20[6] = v13;

    v21 = a1;

    v22 = v18;
    sub_268B36CE4();
  }

  else
  {
    v23 = v11;
    v24 = v48;
    v25 = v8;
    v26 = v13;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v28 = v24;
    v29 = v23;
    (*(v24 + 16))(v23, v27, v25);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    v32 = os_log_type_enabled(v30, v31);
    v50 = v26;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v49 = v12;
      v34 = v33;
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136446466;
      v36 = NLMediaType.description.getter(v14);
      v38 = sub_26892CDB8(v36, v37, &v53);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v52 = sub_268AACBE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
      v39 = sub_268B38094();
      v41 = sub_26892CDB8(v39, v40, &v53);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_2688BB000, v30, v31, "ResumeMediaIntentHandler#resumeLocalFirstPartyAppForMediaType App bundle id for mediaType %{public}s on %{public}s is nil. Returning failure", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v35, -1, -1);
      MEMORY[0x26D6266E0](v34, -1, -1);

      (*(v28 + 8))(v29, v25);
    }

    else
    {

      (*(v24 + 8))(v29, v25);
    }

    v42 = a4;
    v43 = sub_268B36EA4();
    v44 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
    v45 = v43;
    v46 = ResumeMediaIntentResponse.init(code:userActivity:)(5, v43);
    v53 = v46;

    v42(&v53);
  }
}

void sub_2689D6B0C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v44 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v17 = (v16 - v15);
  v18 = [v8 mediaType];
  v19 = sub_268AACBE0();
  v20 = sub_268A62F08(v18, v19);
  if (v21)
  {
    sub_2689A51F0(v20, v21, v8);
    v43 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
    OUTLINED_FUNCTION_24_9();
    v22 = v3;
    v23 = swift_allocObject();
    v23[2] = v1;
    v23[3] = v6;
    v23[4] = v8;
    v23[5] = v44;
    v23[6] = v22;

    v24 = v8;

    v25 = v1;
    sub_268B36CE4();

    OUTLINED_FUNCTION_23();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
    v27 = v12;
    v28 = v9;
    v29 = v17;
    (*(v27 + 16))(v17);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v32 = 136446466;
      v33 = NLMediaType.description.getter(v18);
      v35 = v27;
      v36 = OUTLINED_FUNCTION_48_5(v33, v34);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v45 = sub_268AACBE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
      v17 = &v45;
      v37 = sub_268B38094();
      v39 = OUTLINED_FUNCTION_48_5(v37, v38);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_2688BB000, v30, v31, "ResumeMediaIntentHandler#resumeLocalFirstPartyAppForMediaType App bundle id for mediaType %{public}s on %{public}s is nil. Returning failure", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v35 + 8))(v29, v28);
    }

    else
    {

      (*(v27 + 8))(v17, v28);
    }

    sub_268B36EA4();
    OUTLINED_FUNCTION_86_1();
    v40 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
    v41 = v17;
    v42 = ResumeMediaIntentResponse.init(code:userActivity:)(5, v17);
    v44();

    OUTLINED_FUNCTION_23();
  }
}

void sub_2689D6EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_268B36ED4();
  sub_2689D3650();
  sub_2689D6454(a1, v8, v9, v10, v11, v12, v13, v14, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  v16 = v15;
  v17 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v18 = v7;
  v21 = ResumeMediaIntentResponse.init(code:userActivity:)(v16, v7);
  a5();
}

void sub_2689D6FB0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_0();
  }

  v40 = v1;
  v41 = v14;
  OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
  v42 = v17;
  v43 = *(v9 + 16);
  v43(v0);

  v18 = sub_268B37A34();
  v19 = sub_268B37EC4();
  v39 = v3;
  if (os_log_type_enabled(v18, v19))
  {
    v38 = v9;
    v20 = swift_slowAlloc();
    v1 = OUTLINED_FUNCTION_173_0();
    v44 = v1;
    *v20 = 134218242;
    *(v20 + 4) = sub_2688EFD0C(v5);

    *(v20 + 12) = 2082;
    v21 = NLMediaType.description.getter(v3);
    v23 = sub_26892CDB8(v21, v22, &v44);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_2688BB000, v18, v19, "ResumeMediaIntentHandler#shouldResumeLocalFirstPartyAppForMediaType Determining if we should resume the local first party app using %ld device(s) and mediaType %{public}s.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_83_0();
    v9 = v38;
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v14 = *(v9 + 8);
  v24 = OUTLINED_FUNCTION_103();
  (v14)(v24);
  if (sub_2688EFD0C(v5) == 1)
  {
    v25 = sub_2688EFD0C(v5);
    v26 = 0;
    v1 = (v5 & 0xC000000000000001);
    v3 = v5 & 0xFFFFFFFFFFFFFF8;
    while (v25 != v26)
    {
      if (v1)
      {
        v27 = MEMORY[0x26D625BD0](v26, v5);
      }

      else
      {
        if (v26 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v27 = *(v5 + 8 * v26 + 32);
      }

      v0 = v27;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v28 = sub_2689840D4();
      if ((v28 - 1) >= 4)
      {
        if (v28)
        {
          v44 = v28;
          sub_268B38474();
          __break(1u);
          return;
        }

        v29 = [v0 context];

        if (!v29)
        {
          break;
        }

        v30 = sub_268A514F4(v39, 1, 1);
        v31 = sub_268AD404C(v39, qword_2802A7A80) & (v30 ^ 1);
        v32 = v40;
        (v43)(v40, v42, v6);
        v33 = sub_268B37A34();
        v34 = sub_268B37F04();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_236();
          *v35 = 67109120;
          *(v35 + 4) = v31 & 1;
          _os_log_impl(&dword_2688BB000, v33, v34, "ResumeMediaIntentHandler#shouldResumeLocalFirstPartyAppForMediaType shouldResumeLocalFirstPartyAppForMediaType = %{BOOL}d", v35, 8u);
          OUTLINED_FUNCTION_83_0();
        }

        goto LABEL_22;
      }

      ++v26;
    }
  }

  v32 = v41;
  (v43)(v41, v42, v6);
  v29 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v29, v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v37);
    _os_log_impl(&dword_2688BB000, v29, v36, "ResumeMediaIntentHandler#shouldResumeLocalFirstPartyAppForMediaType More than one device found in the intent or primary device not found. shouldResumeLocalFirstPartyAppForMediaType = false", v1, 2u);
    OUTLINED_FUNCTION_83_0();
  }

LABEL_22:

  (v14)(v32, v6);
  OUTLINED_FUNCTION_23();
}

void sub_2689D74A4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v137 = v5;
  v140 = v6;
  v141 = v7;
  v9 = v8;
  LODWORD(v138) = v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4(v132);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v133 = &v129 - v14;
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v130 = v21 - v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v134 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v131 = v26;
  OUTLINED_FUNCTION_8();
  v28 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v29 = swift_allocObject();
  v135 = v4;
  *(v29 + 16) = v4;
  *(v29 + 24) = v2;
  OUTLINED_FUNCTION_0_3();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_268958EDC;
  *(v30 + 24) = v29;
  v142 = v30;
  v31 = qword_2802A4F30;
  swift_retain_n();
  v139 = v29;
  swift_retain_n();
  if (v31 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v32 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v33 = *(v18 + 16);
  v143 = v15;
  v136 = v33;
  v33(v0, v32, v15);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_236();
    *v36 = 67109120;
    *(v36 + 4) = v138 & 1;
    _os_log_impl(&dword_2688BB000, v34, v35, "Prepare for audio handoff came back with result: %{BOOL}d", v36, 8u);
    OUTLINED_FUNCTION_12();
  }

  v37 = *(v18 + 8);
  (v37)(v0, v143);
  sub_2689D8C4C(v9);
  if (v38)
  {
    v39 = v140;
    v40 = *&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
    OUTLINED_FUNCTION_24_9();
    v41 = swift_allocObject();
    v41[2] = v39;
    v42 = v142;
    v41[3] = v141;
    v41[4] = v9;
    v41[5] = sub_268958EA4;
    v41[6] = v42;

    v43 = v9;

    v44 = v39;
    OUTLINED_FUNCTION_189();
    sub_268B36CE4();
    OUTLINED_FUNCTION_47_3();

LABEL_7:

    goto LABEL_8;
  }

  v138 = v18 + 8;
  [v9 mediaType];
  v45 = v137;
  sub_2689D6FB0();
  if ((v46 & 1) == 0)
  {
    OUTLINED_FUNCTION_24_9();
    v55 = swift_allocObject();
    v56 = v140;
    v57 = v141;
    v55[2] = v140;
    v55[3] = v57;
    v55[4] = v9;
    v55[5] = sub_268958EA4;
    v129 = v55;
    v55[6] = v142;
    v58 = *&v56[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper];

    v59 = v9;

    v140 = v56;
    sub_268921344();
    if (!v60[2])
    {

      OUTLINED_FUNCTION_14_10();
      v66();
      v67 = sub_268B37A34();
      v68 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v68))
      {
        v69 = OUTLINED_FUNCTION_14();
        *v69 = 0;
        OUTLINED_FUNCTION_72();
        _os_log_impl(v70, v71, v72, v73, v69, 2u);
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_36_7();
      v37();
      v74 = *MEMORY[0x277D5F6D8];
      v75 = sub_268B36F24();
      OUTLINED_FUNCTION_4(v75);
      v77 = v133;
      (*(v76 + 104))(v133, v74);
      swift_storeEnumTagMultiPayload();
      v78 = OUTLINED_FUNCTION_34_5();
      sub_2689D3650();
      sub_2689D6454(v77, v79, v80, v81, v82, v83, v84, v85, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
      OUTLINED_FUNCTION_86_1();
      objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
      v86 = v78;
      v87 = OUTLINED_FUNCTION_103();
      v89 = ResumeMediaIntentResponse.init(code:userActivity:)(v87, v88);
      v144 = v89;

      v135(&v144);

      sub_2688C058C(v77, &qword_2802A5DE8, &qword_268B3D790);
      OUTLINED_FUNCTION_47_3();
      goto LABEL_7;
    }

    v62 = v60[4];
    v61 = v60[5];

    if (sub_268B37734() == v62 && v63 == v61)
    {
    }

    else
    {
      v65 = sub_268B38444();

      if ((v65 & 1) == 0)
      {
        OUTLINED_FUNCTION_14_10();
        v110();

        v111 = sub_268B37A34();
        v112 = sub_268B37F04();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = OUTLINED_FUNCTION_172_0();
          v114 = OUTLINED_FUNCTION_236();
          *v113 = 138412290;
          type metadata accessor for Device();
          v115 = sub_268B37CE4();
          *(v113 + 4) = v115;
          *v114 = v115;
          OUTLINED_FUNCTION_37_7();
          _os_log_impl(v116, v117, v118, v119, v113, 0xCu);
          sub_2688C058C(v114, &qword_2802A6420, &unk_268B3C680);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_36_7();
        v37();
        v120 = v140;
        v121 = *__swift_project_boxed_opaque_existential_1(&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
        sub_268920C54();
        v123 = v122;
        v124 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v124, v125, v123, v45);

        v126 = *&v120[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v120[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v120[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
        OUTLINED_FUNCTION_0_3();
        v127 = swift_allocObject();
        v128 = v129;
        *(v127 + 16) = sub_2689D9AA8;
        *(v127 + 24) = v128;

        sub_268B36E54();
        OUTLINED_FUNCTION_47_3();

        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_14_10();
    v90();
    v91 = sub_268B37A34();
    v92 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v92))
    {
      v93 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v93);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v94, v95, "Resuming in here");
      OUTLINED_FUNCTION_83_0();
    }

    OUTLINED_FUNCTION_36_7();
    v37();
    v96 = v140;
    v97 = __swift_project_boxed_opaque_existential_1(&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v140[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    if (sub_2688EFD0C(v45))
    {
      sub_2688EFD10(0, (v45 & 0xC000000000000001) == 0, v45);
      if ((v45 & 0xC000000000000001) == 0)
      {
        v99 = *(v45 + 32);
LABEL_29:
        *(inited + 32) = v99;
        v100 = *v97;
        sub_268920C54();
        v102 = v101;
        v103 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v103, v104, v102, inited);

        swift_setDeallocating();
        sub_268ACE718();
        v105 = *&v96[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v96[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v96[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
        v106 = swift_allocObject();
        OUTLINED_FUNCTION_11_17(v106, xmmword_268B3BBC0);
        sub_268B36C54();
        v106[2].n128_u64[0] = sub_268B36C24();
        v106[2].n128_u64[1] = v107;
        OUTLINED_FUNCTION_0_3();
        v108 = swift_allocObject();
        v109 = v129;
        *(v108 + 16) = sub_2689D9AA8;
        *(v108 + 24) = v109;

        OUTLINED_FUNCTION_39_3();
        sub_268B36E54();
        OUTLINED_FUNCTION_47_3();

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v99 = MEMORY[0x26D625BD0](0, v45);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_14_10();
  v47();
  v48 = sub_268B37A34();
  v49 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_115_0(v49))
  {
    v50 = OUTLINED_FUNCTION_14();
    *v50 = 0;
    OUTLINED_FUNCTION_37_7();
    _os_log_impl(v51, v52, v53, v54, v50, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_36_7();
  v37();

  sub_2689D6670(v9, v141, v140, v135, v2);

LABEL_8:

  OUTLINED_FUNCTION_23();
}

void sub_2689D7F68()
{
  OUTLINED_FUNCTION_26();
  v128 = v2;
  v129 = v1;
  v130 = v3;
  v131 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4(v123);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v124 = &v119 - v14;
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v121 = (v21 - v22);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v125 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v122 = v26;
  OUTLINED_FUNCTION_8();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v119 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v15, qword_2802CDA10);
  v31 = *(v18 + 16);
  v126 = v32;
  v127 = v31;
  (v31)(v0);
  v33 = sub_268B37A34();
  v34 = sub_268B37F04();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_236();
    *v35 = 67109120;
    *(v35 + 4) = v10 & 1;
    _os_log_impl(&dword_2688BB000, v33, v34, "Prepare for audio handoff came back with result: %{BOOL}d", v35, 8u);
    OUTLINED_FUNCTION_12();
  }

  v36 = *(v18 + 8);
  v37 = OUTLINED_FUNCTION_189();
  v36(v37);
  sub_2689D8C4C(v8);
  if (v38)
  {
    OUTLINED_FUNCTION_32_5(OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController);
    OUTLINED_FUNCTION_24_9();
    v39 = swift_allocObject();
    v39[2] = v6;
    v40 = v130;
    v39[3] = v129;
    v39[4] = v8;
    v41 = v131;
    v39[5] = v40;
    v39[6] = v41;

    v42 = v8;

    v43 = v6;
    sub_268B36CE4();
LABEL_7:

LABEL_8:

    goto LABEL_23;
  }

  [v8 mediaType];
  sub_2689D6FB0();
  if (v44)
  {
    v127(v30, v126, v15);
    v45 = sub_268B37A34();
    v46 = sub_268B37EC4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_14();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "User asked to Resume [mediaType], however no devices with a matching nowPlayingMediaType was found. Falling back to resuming the corresponding first party app locally", v47, 2u);
      OUTLINED_FUNCTION_12();
    }

    v48 = OUTLINED_FUNCTION_43_5();
    v36(v48);
    sub_2689D6B0C();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_24_9();
  v49 = swift_allocObject();
  v49[2] = v6;
  v50 = v130;
  v49[3] = v129;
  v49[4] = v8;
  v51 = v131;
  v120 = v49;
  v49[5] = v50;
  v49[6] = v51;
  v52 = *&v6[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper];

  v8;

  v53 = v6;
  sub_268921344();
  if (v54[2])
  {
    v56 = v54[4];
    v55 = v54[5];

    if (sub_268B37734() == v56 && v57 == v55)
    {
    }

    else
    {
      v59 = sub_268B38444();

      if ((v59 & 1) == 0)
      {
        v127(v121, v126, v15);
        v102 = v128;

        v103 = sub_268B37A34();
        v104 = sub_268B37F04();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = OUTLINED_FUNCTION_172_0();
          v106 = OUTLINED_FUNCTION_236();
          *v105 = 138412290;
          type metadata accessor for Device();
          v107 = sub_268B37CE4();
          *(v105 + 4) = v107;
          *v106 = v107;
          OUTLINED_FUNCTION_72();
          _os_log_impl(v108, v109, v110, v111, v105, 0xCu);
          sub_2688C058C(v106, &qword_2802A6420, &unk_268B3C680);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        (v36)(v121, v15);
        v112 = *__swift_project_boxed_opaque_existential_1(&v53[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v53[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
        sub_268920C54();
        v114 = v113;
        v115 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v115, v116, v114, v102);

        OUTLINED_FUNCTION_32_5(OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController);
        OUTLINED_FUNCTION_0_3();
        v117 = swift_allocObject();
        v118 = v120;
        *(v117 + 16) = sub_2689D969C;
        *(v117 + 24) = v118;

        sub_268B36E54();

        goto LABEL_8;
      }
    }

    v81 = v125;
    v127(v125, v126, v15);
    v82 = sub_268B37A34();
    v83 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v83))
    {
      v84 = OUTLINED_FUNCTION_14();
      *v84 = 0;
      OUTLINED_FUNCTION_72();
      _os_log_impl(v85, v86, v87, v88, v84, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v36)(v81, v15);
    v89 = __swift_project_boxed_opaque_existential_1(&v53[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v53[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    v91 = v128;
    if (sub_2688EFD0C(v128))
    {
      sub_2688EFD10(0, (v91 & 0xC000000000000001) == 0, v91);
      if ((v91 & 0xC000000000000001) == 0)
      {
        v92 = *(v91 + 32);
LABEL_30:
        *(inited + 32) = v92;
        v93 = *v89;
        sub_268920C54();
        v95 = v94;
        v96 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v96, v97, v95, inited);

        swift_setDeallocating();
        sub_268ACE718();
        OUTLINED_FUNCTION_32_5(OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
        v98 = swift_allocObject();
        OUTLINED_FUNCTION_11_17(v98, xmmword_268B3BBC0);
        sub_268B36C54();
        v98[2].n128_u64[0] = sub_268B36C24();
        v98[2].n128_u64[1] = v99;
        OUTLINED_FUNCTION_0_3();
        v100 = swift_allocObject();
        v101 = v120;
        *(v100 + 16) = sub_2689D969C;
        *(v100 + 24) = v101;

        sub_268B36E54();

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v92 = MEMORY[0x26D625BD0](0, v91);
    goto LABEL_30;
  }

  v128 = v53;

  v127(v122, v126, v15);
  v60 = sub_268B37A34();
  v61 = sub_268B37EE4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_14();
    *v62 = 0;
    _os_log_impl(&dword_2688BB000, v60, v61, "Failed to handle Resume intent. No route ids found.", v62, 2u);
    OUTLINED_FUNCTION_12();
  }

  v63 = OUTLINED_FUNCTION_43_5();
  v36(v63);
  v64 = *MEMORY[0x277D5F6D8];
  v65 = sub_268B36F24();
  OUTLINED_FUNCTION_4(v65);
  v67 = v124;
  (*(v66 + 104))(v124, v64);
  swift_storeEnumTagMultiPayload();
  v68 = OUTLINED_FUNCTION_34_5();
  sub_2689D3650();
  sub_2689D6454(v67, v69, v70, v71, v72, v73, v74, v75, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  v76 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v77 = v68;
  v78 = OUTLINED_FUNCTION_43_5();
  v80 = ResumeMediaIntentResponse.init(code:userActivity:)(v78, v79);
  v130();

  sub_2688C058C(v67, &qword_2802A5DE8, &qword_268B3D790);
LABEL_23:
  OUTLINED_FUNCTION_23();
}

void sub_2689D8928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_268B36ED4();
  sub_2689D3650();
  sub_2689D6454(a1, v8, v9, v10, v11, v12, v13, v14, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  v16 = v15;
  v17 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v18 = v7;
  v21 = ResumeMediaIntentResponse.init(code:userActivity:)(v16, v7);
  a5();
}

void sub_2689D8A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v9 = sub_268B36ED4();
  sub_2689D3650();
  sub_2689D6454(a1, v10, v11, v12, v13, v14, v15, v16, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
  v18 = v17;
  v19 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v20 = v9;
  v23 = ResumeMediaIntentResponse.init(code:userActivity:)(v18, v9);
  a7();
}

id ResumeMediaIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2689D8BEC(void *a1)
{
  v1 = [a1 settingAttributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for ControlsSettingAttribute();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2689D8C4C(void *a1)
{
  v1 = [a1 targetBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

id sub_2689D8CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v30[3] = type metadata accessor for AnalyticsServiceImpl();
  v30[4] = &off_2879539D0;
  v30[0] = a4;
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = v28;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_26892D53C(a2, v29, *v15, v26, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_2689D8F3C(a1, v17, v29, *v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v24;
}

uint64_t sub_2689D8F08()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

id sub_2689D8F3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v29[3] = sub_268B36C54();
  v29[4] = MEMORY[0x277D5F680];
  v29[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v28[3] = v10;
  v28[4] = &off_2879539D0;
  v28[0] = a4;
  v11 = type metadata accessor for ResumeMediaIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = v18;
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v19 = qword_2802CDB28;
  sub_268B37A14();
  sub_26890C900(v29, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector] = a2;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState]);
  sub_26890C900(a3, v26);
  sub_26890C900(a5, v25);
  type metadata accessor for AceServiceHelper();
  v20 = swift_allocObject();
  sub_2688E6514(v26, v20 + 16);
  sub_2688E6514(v25, v20 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper] = v20;
  sub_26890C900(a5, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceService]);
  v24.receiver = v12;
  v24.super_class = v11;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return v21;
}

void sub_2689D91C8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v32[3] = v0;
  v32[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v1 - 8) + 32))(boxed_opaque_existential_1, v11, v1);
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v31[3] = v14;
  v31[4] = &off_2879539D0;
  v31[0] = v5;
  v15 = type metadata accessor for ResumeMediaIntentHandler();
  v16 = objc_allocWithZone(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v14);
  OUTLINED_FUNCTION_3_8();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  v24 = *v22;
  v30[3] = v14;
  v30[4] = &off_2879539D0;
  v30[0] = v24;
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  v25 = qword_2802CDB28;
  sub_268B37A14();
  sub_26890C900(v32, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController]);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector] = v9;
  sub_26890C900(v30, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService]);
  sub_26890C900(v7, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState]);
  sub_26890C900(v7, v29);
  sub_26890C900(v3, v28);
  type metadata accessor for AceServiceHelper();
  v26 = swift_allocObject();
  sub_2688E6514(v29, v26 + 16);
  sub_2688E6514(v28, v26 + 56);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper] = v26;
  sub_26890C900(v3, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceService]);
  v27.receiver = v16;
  v27.super_class = v15;
  objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D9450()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t type metadata accessor for ResumeMediaIntentHandler()
{
  result = qword_2802A6D48;
  if (!qword_2802A6D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689D9538()
{
  result = sub_268B37A24();
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

uint64_t sub_2689D96A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0xD00000000000001BLL, 0x8000000268B59930);
}

uint64_t sub_2689D96E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0xD000000000000017, 0x8000000268B59910);
}

uint64_t sub_2689D9754()
{
  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689D9790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2688C01F0;

  return sub_2689D3C70(a1, v5, v4);
}

uint64_t sub_2689D9844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2689D98D0(char *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850) - 8) + 80);

  return sub_2689D45A4(a1);
}

uint64_t sub_2689D994C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689D9984()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2689D99EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_24_9();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_32_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 32);
  v4 = *(v1 + a1 + 24);

  return __swift_project_boxed_opaque_existential_1((v1 + a1), v4);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_268B36ED4();
}

uint64_t OUTLINED_FUNCTION_47_3()
{
  v2 = *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_48_5(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 88));
}

void sub_2689D9C28()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D90, qword_268B3EDB0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_31_8();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_8();
  sub_268B35034();
  if (v3)
  {

    sub_2689DD330();
    v19 = v18;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v12, qword_2802CDA10);
    v20 = OUTLINED_FUNCTION_23_10();
    v21(v20);
    swift_unknownObjectRetain();
    sub_268B37A34();
    v22 = sub_268B37F04();
    swift_unknownObjectRelease();
    if (OUTLINED_FUNCTION_33_8())
    {
      v35 = v8;
      v23 = OUTLINED_FUNCTION_172_0();
      v24 = OUTLINED_FUNCTION_173_0();
      v37 = v24;
      *v23 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v25 = sub_268B37C24();
      v22 = v26;
      v27 = sub_26892CDB8(v25, v26, &v37);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_21_9(&dword_2688BB000, v28, v29, "Including SystemOffered in context update: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      OUTLINED_FUNCTION_12();
      v8 = v35;
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    (*(v15 + 8))(v0, v12);
    sub_2689DD988();
    if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
    {

      swift_unknownObjectRelease();
      sub_2688C058C(v1, &qword_2802A6D90, qword_268B3EDB0);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_16_16();
      v31(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
      v32 = OUTLINED_FUNCTION_22_8();
      v33 = OUTLINED_FUNCTION_15_13(v32, xmmword_268B3BBC0);
      v34(v33);
      sub_268B34FB4();
      swift_unknownObjectRelease();

      (*(v22 + 8))(v19, v8);
    }
  }

  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

void sub_2689D9FD4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D90, qword_268B3EDB0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_31_8();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_8();
  sub_268B35034();
  if (v3)
  {

    sub_2689DD330();
    v19 = v18;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v12, qword_2802CDA10);
    v20 = OUTLINED_FUNCTION_23_10();
    v21(v20);
    swift_unknownObjectRetain();
    sub_268B37A34();
    v22 = sub_268B37F04();
    swift_unknownObjectRelease();
    if (OUTLINED_FUNCTION_33_8())
    {
      v35 = v8;
      v23 = OUTLINED_FUNCTION_172_0();
      v24 = OUTLINED_FUNCTION_173_0();
      v37 = v24;
      *v23 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v25 = sub_268B37C24();
      v22 = v26;
      v27 = sub_26892CDB8(v25, v26, &v37);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_21_9(&dword_2688BB000, v28, v29, "Including SystemOffered in context update: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      OUTLINED_FUNCTION_12();
      v8 = v35;
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    (*(v15 + 8))(v0, v12);
    sub_2689DD988();
    if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
    {

      swift_unknownObjectRelease();
      sub_2688C058C(v1, &qword_2802A6D90, qword_268B3EDB0);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_16_16();
      v31(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
      v32 = OUTLINED_FUNCTION_22_8();
      v33 = OUTLINED_FUNCTION_15_13(v32, xmmword_268B3BBC0);
      v34(v33);
      sub_268B34FB4();
      swift_unknownObjectRelease();

      (*(v22 + 8))(v19, v8);
    }
  }

  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DA380(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v6;
    v20 = a5;
    v21 = a2;
    v22 = a1;
    v23 = a4;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "ConfirmIntentStrategy.makePromptForConfirmation() called", v19, 2u);
    v25 = v24;
    a4 = v23;
    a1 = v22;
    a2 = v21;
    a5 = v20;
    v6 = v30;
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a2;
  v26[5] = v6;
  v26[6] = a1;

  v27 = a2;

  sub_2689DCA54();
}

void sub_2689DA704()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v26 = v5;
  v6 = v0;
  v27 = v8;
  v28 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v16 + 16))(v0, v19, v13);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "ConfirmIntentStrategy.makePromptForConfirmation() called", v22, 2u);
    v6 = v0;
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v0, v13);
  v23 = swift_allocObject();
  v23[2] = v26;
  v23[3] = v27;
  v23[4] = v28;
  v23[5] = v6;
  v23[6] = v12;

  v24 = v28;

  v2(v25, v24, v10, v4, v23);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DA904(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v74 = a6;
  v78 = a4;
  v79 = a5;
  v80 = a2;
  v81 = a3;
  v76 = a1;
  v6 = sub_268B37A54();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 8);
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = sub_268B34E24();
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v75 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v67 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  sub_2688C053C(v76, v28, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v28, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = v73;
    v39 = __swift_project_value_buffer(v73, qword_2802CDA10);
    v41 = v71;
    v40 = v72;
    (*(v72 + 2))(v71, v39, v38);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2688BB000, v42, v43, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v44, 2u);
      MEMORY[0x26D6266E0](v44, -1, -1);
    }

    v40[1](v41, v38);
    sub_2688C2ECC();
    v45 = swift_allocError();
    *v46 = -75;
    v82[0] = v45;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v28, v37, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v67 = v48;
    v71 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(v79 + 8, v79[11]);
    v51 = *MEMORY[0x277D5BB48];
    v52 = *(v77 + 104);
    v72 = v24;
    v73 = v21;
    v52(v24, v51, v21);
    v76 = v37;
    sub_2688C053C(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);

    v53 = sub_268B350F4();
    v54 = *(v53 - 8);
    (*(v54 + 32))(v20, v35, v53);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v53);
    v55 = sub_268B34B94();
    v56 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v55);
    v57 = *v50;
    v58 = v68;
    sub_2688C053C(v20, v68, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v53) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v54 + 8))(v58, v53);
    }

    v59 = v72;
    sub_2688E3A78();

    sub_2688C058C(v56, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
    (*(v77 + 8))(v59, v73);
    v60 = v79[16];
    v61 = v79[17];
    v79 = __swift_project_boxed_opaque_existential_1(v79 + 13, v60);
    v63 = v75;
    v62 = v76;
    sub_2688C053C(v76, v75, &unk_2802A56E0, &unk_268B3CDF0);
    v64 = *(v63 + *(v29 + 48));
    v65 = v70;
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    v66 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
    (*(v61 + 16))(v63, v64, v65, v80, v81, v60, v61);

    sub_2688C058C(v65, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v62, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v54 + 8))(v63, v53);
  }
}

void sub_2689DB180()
{
  OUTLINED_FUNCTION_26();
  v107 = v1;
  v98 = v2;
  v105 = v3;
  v110 = v4;
  v111 = v5;
  v112 = v6;
  v113 = v7;
  v108 = v8;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v103 = v11;
  v104 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v102 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  v101 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v24);
  v100 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v99 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v33 = &v97 - v32;
  v34 = sub_268B34E24();
  v35 = OUTLINED_FUNCTION_1(v34);
  v109 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_8();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v42);
  v44 = &v97 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v106 = v49;
  OUTLINED_FUNCTION_8();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v97 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v97 - v54;
  sub_2688C053C(v108, v44, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v44, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v56 = v104;
    __swift_project_value_buffer(v104, qword_2802CDA10);
    v58 = v102;
    v57 = v103;
    OUTLINED_FUNCTION_14_11();
    v59(v58);
    v60 = sub_268B37A34();
    v61 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v61))
    {
      v62 = OUTLINED_FUNCTION_14();
      *v62 = 0;
      _os_log_impl(&dword_2688BB000, v60, v58, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v62, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v57 + 8))(v58, v56);
    sub_2688C2ECC();
    v63 = swift_allocError();
    *v64 = -75;
    v114[0] = v63;
    v115 = 1;
    v112(v114);
    sub_2688C058C(v114, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v44, v55, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v98 = v65;
    v67 = v66;
    v68 = __swift_project_boxed_opaque_existential_1(v111 + 8, v111[11]);
    v69 = *MEMORY[0x277D5BB48];
    v70 = *(v109 + 104);
    v103 = v0;
    v104 = v34;
    v70(v0, v69, v34);
    v108 = v55;
    sub_2688C053C(v55, v53, &unk_2802A56E0, &unk_268B3CDF0);
    v102 = v45;

    v71 = sub_268B350F4();
    v72 = *(v71 - 8);
    (*(v72 + 32))(v33, v53, v71);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v71);
    sub_268B34B94();
    v76 = v100;
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    v81 = *v68;
    v82 = v99;
    sub_2688C053C(v33, v99, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v82, 1, v71) == 1)
    {
      sub_2688C058C(v82, &unk_2802A57B0, &unk_268B3CE00);
      v83 = 0;
      v84 = 0;
    }

    else
    {
      v83 = sub_268B350B4();
      v84 = v85;
      (*(v72 + 8))(v82, v71);
    }

    v86 = v103;
    v107(v105, v103, v110, v83, v84, v98, v67, v76, v81);

    sub_2688C058C(v76, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v109 + 8))(v86, v104);
    v87 = v111[16];
    v88 = v111[17];
    v111 = __swift_project_boxed_opaque_existential_1(v111 + 13, v87);
    v89 = v108;
    v90 = v106;
    sub_2688C053C(v108, v106, &unk_2802A56E0, &unk_268B3CDF0);
    v91 = v101;
    v92 = *(v90 + *(v102 + 48));
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    sub_268B35044();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
    (*(v88 + 16))(v90, v92, v91, v112, v113, v87, v88);

    sub_2688C058C(v91, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v89, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v72 + 8))(v90, v71);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DB95C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v74 = a6;
  v78 = a4;
  v79 = a5;
  v80 = a2;
  v81 = a3;
  v76 = a1;
  v6 = sub_268B37A54();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 8);
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = sub_268B34E24();
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v75 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v67 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  sub_2688C053C(v76, v28, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v28, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = v73;
    v39 = __swift_project_value_buffer(v73, qword_2802CDA10);
    v41 = v71;
    v40 = v72;
    (*(v72 + 2))(v71, v39, v38);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2688BB000, v42, v43, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v44, 2u);
      MEMORY[0x26D6266E0](v44, -1, -1);
    }

    v40[1](v41, v38);
    sub_2688C2ECC();
    v45 = swift_allocError();
    *v46 = -75;
    v82[0] = v45;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v28, v37, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v67 = v48;
    v71 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(v79 + 8, v79[11]);
    v51 = *MEMORY[0x277D5BB48];
    v52 = *(v77 + 104);
    v72 = v24;
    v73 = v21;
    v52(v24, v51, v21);
    v76 = v37;
    sub_2688C053C(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);

    v53 = sub_268B350F4();
    v54 = *(v53 - 8);
    (*(v54 + 32))(v20, v35, v53);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v53);
    v55 = sub_268B34B94();
    v56 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v55);
    v57 = *v50;
    v58 = v68;
    sub_2688C053C(v20, v68, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v53) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v54 + 8))(v58, v53);
    }

    v59 = v72;
    sub_2688E2F3C();

    sub_2688C058C(v56, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
    (*(v77 + 8))(v59, v73);
    v60 = v79[16];
    v61 = v79[17];
    v79 = __swift_project_boxed_opaque_existential_1(v79 + 13, v60);
    v63 = v75;
    v62 = v76;
    sub_2688C053C(v76, v75, &unk_2802A56E0, &unk_268B3CDF0);
    v64 = *(v63 + *(v29 + 48));
    v65 = v70;
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    v66 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
    (*(v61 + 16))(v63, v64, v65, v80, v81, v60, v61);

    sub_2688C058C(v65, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v62, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v54 + 8))(v63, v53);
  }
}

uint64_t sub_2689DC1D8(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v74 = a6;
  v78 = a4;
  v79 = a5;
  v80 = a2;
  v81 = a3;
  v76 = a1;
  v6 = sub_268B37A54();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 8);
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = sub_268B34E24();
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v75 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v67 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  sub_2688C053C(v76, v28, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v28, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = v73;
    v39 = __swift_project_value_buffer(v73, qword_2802CDA10);
    v41 = v71;
    v40 = v72;
    (*(v72 + 2))(v71, v39, v38);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2688BB000, v42, v43, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v44, 2u);
      MEMORY[0x26D6266E0](v44, -1, -1);
    }

    v40[1](v41, v38);
    sub_2688C2ECC();
    v45 = swift_allocError();
    *v46 = -75;
    v82[0] = v45;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v28, v37, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v67 = v48;
    v71 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(v79 + 8, v79[11]);
    v51 = *MEMORY[0x277D5BB48];
    v52 = *(v77 + 104);
    v72 = v24;
    v73 = v21;
    v52(v24, v51, v21);
    v76 = v37;
    sub_2688C053C(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);

    v53 = sub_268B350F4();
    v54 = *(v53 - 8);
    (*(v54 + 32))(v20, v35, v53);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v53);
    v55 = sub_268B34B94();
    v56 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v55);
    v57 = *v50;
    v58 = v68;
    sub_2688C053C(v20, v68, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v53) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v54 + 8))(v58, v53);
    }

    v59 = v72;
    sub_2688E3AD8();

    sub_2688C058C(v56, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
    (*(v77 + 8))(v59, v73);
    v60 = v79[16];
    v61 = v79[17];
    v79 = __swift_project_boxed_opaque_existential_1(v79 + 13, v60);
    v63 = v75;
    v62 = v76;
    sub_2688C053C(v76, v75, &unk_2802A56E0, &unk_268B3CDF0);
    v64 = *(v63 + *(v29 + 48));
    v65 = v70;
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    v66 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
    (*(v61 + 16))(v63, v64, v65, v80, v81, v60, v61);

    sub_2688C058C(v65, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v62, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v54 + 8))(v63, v53);
  }
}

void sub_2689DCA54()
{
  OUTLINED_FUNCTION_26();
  v77 = v0;
  v83 = v2;
  v84 = v1;
  v85 = v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v81);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  v82 = (&v77 - v7);
  OUTLINED_FUNCTION_9();
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v80 = &v77 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v78 = &v77 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    __swift_project_value_buffer(v8, qword_2802CDA10);
    v24 = v11;
    v26 = v11[2];
    v11 += 2;
    v25 = v26;
    OUTLINED_FUNCTION_30_8();
    v26();
    v27 = sub_268B37A34();
    v28 = sub_268B37ED4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "SetRepeatStateConfirmIntentStrategy.makeDialogForConfirmation()", v29, 2u);
      OUTLINED_FUNCTION_12();
    }

    v30 = v24 + 1;
    v31 = v24[1];
    v31(v23, v8);
    v32 = v85;
    v33 = sub_268B18100();
    if (!v33)
    {
      break;
    }

    v34 = v33;
    v79 = v30;
    v35 = sub_2688EFD0C(v33);
    if (!v35)
    {

      break;
    }

    v36 = v35;
    v37 = [v32 repeatState];
    if ((v37 - 1) >= 3)
    {

      v61 = v78;
      OUTLINED_FUNCTION_30_8();
      v25();
      v62 = sub_268B37A34();
      v63 = sub_268B37EE4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_14();
        *v64 = 0;
        _os_log_impl(&dword_2688BB000, v62, v63, "Unexpected repeat mode found", v64, 2u);
        OUTLINED_FUNCTION_12();
      }

      v31(v61, v8);
      sub_2688C2ECC();
      v58 = swift_allocError();
      v60 = 72;
      goto LABEL_16;
    }

    v85 = ((v37 - 1) & 7);
    v38 = v80;
    OUTLINED_FUNCTION_30_8();
    v25();

    v39 = sub_268B37A34();
    v23 = sub_268B37EC4();

    if (os_log_type_enabled(v39, v23))
    {
      v40 = OUTLINED_FUNCTION_172_0();
      v11 = OUTLINED_FUNCTION_173_0();
      v86 = v11;
      *v40 = 136315138;
      v41 = type metadata accessor for Device();
      v42 = MEMORY[0x26D6256F0](v34, v41);
      v44 = sub_26892CDB8(v42, v43, &v86);

      *(v40 + 4) = v44;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v50 = v80;
    }

    else
    {

      v50 = v38;
    }

    v31(v50, v8);
    v16 = 0;
    LODWORD(v85) = 3u >> v85;
    v66 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v36 == v16)
      {

        v76 = *(v77 + 56);
        sub_268AB5420(v66, v85 & 1, v84, v83);

        goto LABEL_17;
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x26D625BD0](v16, v34);
      }

      else
      {
        if (v16 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v67 = *(v34 + 8 * v16 + 32);
      }

      v8 = v67;
      v11 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v68 = sub_268988580(v67);
      if (v69)
      {
        v23 = v68;
        v71 = v69;

        goto LABEL_29;
      }

      v23 = sub_268988568(v8);
      v71 = v70;

      v16 = (v16 + 1);
      if (v71)
      {
LABEL_29:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = *(v66 + 16);
          sub_2689876A4();
          v66 = v74;
        }

        v8 = *(v66 + 16);
        if (v8 >= *(v66 + 24) >> 1)
        {
          sub_2689876A4();
          v66 = v75;
        }

        *(v66 + 16) = v8 + 1;
        v72 = v66 + 16 * v8;
        *(v72 + 32) = v23;
        *(v72 + 40) = v71;
        v16 = v11;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_30_8();
  v25();
  v51 = sub_268B37A34();
  v52 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v52))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v53, v54, v55, v56, v57, 2u);
    OUTLINED_FUNCTION_12();
  }

  v31(v16, v8);
  sub_2688C2ECC();
  v58 = swift_allocError();
  v60 = 71;
LABEL_16:
  *v59 = v60;
  v65 = v82;
  *v82 = v58;
  swift_storeEnumTagMultiPayload();
  v84(v65);
  sub_2688C058C(v65, &qword_2802A6300, &unk_268B3BD80);
LABEL_17:
  OUTLINED_FUNCTION_23();
}

void sub_2689DD0D8()
{
  type metadata accessor for SetRepeatStateConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_2689DD154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689DD218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetRepeatStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_2689DD2B4(uint64_t a1)
{
  result = sub_2689DD2DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689DD2DC()
{
  result = qword_2802A6D70;
  if (!qword_2802A6D70)
  {
    type metadata accessor for SetRepeatStateConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6D70);
  }

  return result;
}

void sub_2689DD330()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v62 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v63 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v59 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v28 = sub_268B357A4();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_268B3BBA0;
  *(v32 + 32) = v1;
  sub_268B35BD4();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);

  v37 = MEMORY[0x26D623520](v32, v14);

  sub_2688C058C(v14, &unk_2802A62D0, &qword_268B3EDD0);
  v64 = v37;
  sub_268B36604();
  v61 = v27;
  sub_2688C058C(v27, &qword_2802A5770, &unk_268B3BDC0);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v28);
  sub_268954254(v25, v27, &qword_2802A5770, &unk_268B3BDC0);
  v41 = v62;
  sub_2688C053C(v27, v21, &qword_2802A5770, &unk_268B3BDC0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v28) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_26895417C();
    v42 = MEMORY[0x26D6259D0](v21);
    (*(*(v28 - 8) + 8))(v21, v28);
    v43 = objc_allocWithZone(MEMORY[0x277D5F5E8]);
    v62 = v42;
    v44 = [v43 initWithReference_];
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v2, qword_2802CDA10);
    OUTLINED_FUNCTION_14_11();
    v45 = v63;
    v46(v63);
    v47 = v44;
    v48 = sub_268B37A34();
    v49 = sub_268B37F04();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_172_0();
      v51 = OUTLINED_FUNCTION_173_0();
      v65 = v51;
      *v50 = 136315138;
      v52 = v41;
      v53 = v47;
      v54 = [v53 description];
      v55 = sub_268B37BF4();
      v60 = v2;
      v57 = v56;

      v58 = sub_26892CDB8(v55, v57, &v65);

      *(v50 + 4) = v58;
      _os_log_impl(&dword_2688BB000, v48, v49, "uso UserWantedToProceed: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      OUTLINED_FUNCTION_12();
      v27 = v61;
      OUTLINED_FUNCTION_12();

      v52[1](v63, v60);
    }

    else
    {

      v41[1](v45, v2);
    }

    [objc_allocWithZone(MEMORY[0x277D5F5A0]) initWithOfferedAct_];

    sub_2688C058C(v27, &qword_2802A5770, &unk_268B3BDC0);
    OUTLINED_FUNCTION_23();
  }
}

void sub_2689DD988()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v143 = v2;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v141 = v5;
  v142 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78();
  v144 = v9;
  OUTLINED_FUNCTION_9();
  v145 = sub_268B35664();
  v10 = OUTLINED_FUNCTION_1(v145);
  v128 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_78();
  v127 = v15;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B35554();
  v17 = OUTLINED_FUNCTION_1(v16);
  v139 = v18;
  v140 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v136 = v22;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B35614();
  v24 = OUTLINED_FUNCTION_1(v23);
  v137 = v25;
  v138 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_78();
  v133 = v29;
  OUTLINED_FUNCTION_9();
  v30 = sub_268B355B4();
  v31 = OUTLINED_FUNCTION_1(v30);
  v134 = v32;
  v135 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_78();
  v131 = v36;
  OUTLINED_FUNCTION_9();
  v37 = sub_268B35504();
  v38 = OUTLINED_FUNCTION_1(v37);
  v132 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  v130 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v47);
  v49 = v124 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v51 = OUTLINED_FUNCTION_22(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_20_0();
  v56 = v54 - v55;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = v124 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = v124 - v61;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_268B3BBA0;
  *(v66 + 32) = v1;
  sub_268B35BD4();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);

  v71 = MEMORY[0x26D623520](v66, v49);

  sub_2688C058C(v49, &unk_2802A62D0, &qword_268B3EDD0);
  sub_268B35BE4();
  v72 = sub_268B35C44();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  sub_268B35C34();
  v129 = v71;
  sub_268B356B4();
  sub_2688C058C(v62, &unk_2802A5760, &unk_268B3BDB0);

  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v37);
  sub_268954254(v60, v62, &unk_2802A5760, &unk_268B3BDB0);
  v78 = v62;
  sub_2688C053C(v62, v56, &unk_2802A5760, &unk_268B3BDB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v37);
  v80 = v144;
  v81 = v145;
  v82 = v142;
  if (EnumTagSinglePayload == 1)
  {
    sub_2688C058C(v56, &unk_2802A5760, &unk_268B3BDB0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v82, qword_2802CDA10);
    OUTLINED_FUNCTION_29_7();
    v83 = v126;
    v84(v126);

    v85 = sub_268B37A34();
    v86 = sub_268B37EE4();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = OUTLINED_FUNCTION_172_0();
      v88 = OUTLINED_FUNCTION_173_0();
      v125 = v78;
      v89 = v88;
      v146[0] = v88;
      *v87 = 136315138;
      v90 = sub_268B36614();
      v92 = sub_26892CDB8(v90, v91, v146);

      *(v87 + 4) = v92;
      _os_log_impl(&dword_2688BB000, v85, v86, "Unable to map graph into protoGraph: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v56 + 8))(v126, v82);
      v93 = v125;
    }

    else
    {

      (*(v56 + 8))(v83, v82);
      v93 = v62;
    }

    sub_2688C058C(v93, &unk_2802A5760, &unk_268B3BDB0);
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v81);
  }

  else
  {
    v125 = v62;
    v94 = v130;
    (*(v132 + 32))(v130, v56, v37);
    v95 = v131;
    sub_268B355A4();
    v96 = v133;
    sub_268B35604();
    v97 = v136;
    sub_268B35544();
    v98 = v127;
    sub_268B35654();
    OUTLINED_FUNCTION_14_11();
    v99(v124[1], v94, v37);
    sub_268B355F4();
    (*(v137 + 16))(v124[3], v96, v138);
    sub_268B35594();
    (*(v134 + 16))(v124[2], v95, v135);
    sub_268B35534();
    (*(v139 + 16))(v124[4], v97, v140);
    sub_268B35634();
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v82, qword_2802CDA10);
    OUTLINED_FUNCTION_29_7();
    v100(v80);
    v101 = sub_268B37A34();
    v102 = sub_268B37F04();
    v103 = OUTLINED_FUNCTION_19(v102);
    v104 = v128;
    v105 = v145;
    if (v103)
    {
      v106 = OUTLINED_FUNCTION_172_0();
      v107 = OUTLINED_FUNCTION_173_0();
      v146[0] = v107;
      *v106 = 136315138;
      swift_beginAccess();
      OUTLINED_FUNCTION_14_11();
      v108(v124[0], v98, v105);
      v109 = sub_268B37C24();
      v111 = sub_26892CDB8(v109, v110, v146);

      *(v106 + 4) = v111;
      v98 = v127;
      v104 = v128;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v112, v113, v114, v115, v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v95 + 8))(v144, v82);
    }

    else
    {

      (*(v95 + 8))(v80, v82);
    }

    (*(v139 + 8))(v136, v140);
    (*(v137 + 8))(v133, v138);
    (*(v134 + 8))(v131, v135);
    (*(v132 + 8))(v130, v37);
    sub_2688C058C(v125, &unk_2802A5760, &unk_268B3BDB0);
    swift_beginAccess();
    OUTLINED_FUNCTION_14_11();
    v120(v143, v98, v105);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v105);
    (*(v104 + 8))(v98, v105);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

char *OUTLINED_FUNCTION_15_13(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

void OUTLINED_FUNCTION_21_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 132);
  v8 = *(v5 - 132);
  v9 = *(v5 - 128);

  _os_log_impl(a1, v9, v8, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_268B35664();
}

BOOL OUTLINED_FUNCTION_33_8()
{
  *(v2 - 132) = v1;
  *(v2 - 128) = v0;

  return os_log_type_enabled(v0, v1);
}

id SetAudioLanguageIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetAudioLanguageIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v33 = sub_268B36C44();
  sub_268B37204();
  v32 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v40);
  sub_268AD33CC(v39);
  sub_268B36754();
  v31 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v37 = v0;
  v38 = MEMORY[0x277D5F680];
  *&v36 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v35[4] = &off_28795F5E0;
  v35[3] = v13;
  v35[0] = v12;
  v34[4] = &off_287960608;
  v34[3] = v2;
  v34[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v39, (v14 + 7));
  v14[12] = v31;
  sub_2688E6514(&v36, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  sub_268B34C64();
  sub_2689E1D00(v33, v32, &v41, v14, v40);
  OUTLINED_FUNCTION_129();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689DEB80()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  OUTLINED_FUNCTION_0_3();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v1;
  v14 = qword_2802A5028;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v15 = OUTLINED_FUNCTION_4_13();
  v16(v15);
  OUTLINED_FUNCTION_5_5();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_20(v17, 22);
  v19(v18);
  *(v17 + v0) = 1;
  v20 = v17 + v14;
  *(v20 + 8) = sub_2689969C0;
  *(v20 + 16) = v13;

  sub_268B38004();
  sub_268B37A04();

  sub_2689DED68(v21[0], v21[1], sub_2689E2048, v17);

  (*(v7 + 8))(v12, v4);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DED68(void *a1, char *a2, void (*a3)(char **), uint64_t a4)
{
  v8 = sub_268B37144();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v55 - v17;
  v19 = swift_allocObject();
  v63 = a3;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268958D98;
  *(v20 + 24) = v19;

  v21 = [a1 device];
  if (v21)
  {
    v22 = v21;
    v62 = a4;
    v23 = sub_2689EEF44(*&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_aceServiceHelper], 0);
    if (v24)
    {
      v58 = v23;
      v25 = [a1 language];
      if (v25 && (v26 = sub_268A6F4F4(v25), v27))
      {
        v63 = v26;
        v57 = v27;
        v28 = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_analyticsService], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_analyticsService + 24]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_268B3BBA0;
        *(inited + 32) = v22;
        v30 = *v28;
        v56 = v22;
        sub_268920C54();
        sub_268949478(0xD000000000000010, 0x8000000268B59B10, v31, inited);

        swift_setDeallocating();
        sub_268ACE718();
        v32 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 32];
        v55[1] = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 24]);
        v33 = v59;
        v34 = v60;
        v35 = v61;
        (*(v60 + 104))(v59, *MEMORY[0x277D5F7D0], v61);
        v36 = swift_allocObject();
        v36[2] = sub_268958EA4;
        v36[3] = v20;
        v36[4] = a2;
        v37 = a2;
        sub_268B36D34();

        (*(v34 + 8))(v33, v35);
      }

      else
      {

        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v38 = __swift_project_value_buffer(v11, qword_2802CDA10);
        (*(v12 + 16))(v18, v38, v11);
        v39 = sub_268B37A34();
        v40 = sub_268B37EE4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_2688BB000, v39, v40, "No language resolved and user requested to enable subtitles, returning failure", v41, 2u);
          MEMORY[0x26D6266E0](v41, -1, -1);
        }

        (*(v12 + 8))(v18, v11);
        v42 = sub_268B36EA4();
        v43 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
        v44 = v42;
        v45 = SetAudioLanguageIntentResponse.init(code:userActivity:)(5, v42);
        v64 = v45;
        v63(&v64);
      }
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v16, v46, v11);
  v47 = sub_268B37A34();
  v48 = sub_268B37EE4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2688BB000, v47, v48, "No device found in intent, returning failure", v49, 2u);
    MEMORY[0x26D6266E0](v49, -1, -1);
  }

  (*(v12 + 8))(v16, v11);
  v50 = sub_268B36EA4();
  v51 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v52 = v50;
  v53 = SetAudioLanguageIntentResponse.init(code:userActivity:)(5, v50);
  v64 = v53;
  v63(&v64);
}

void sub_2689DF460(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B36ED4();
  v5 = sub_2689E153C(a1);
  v6 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v7 = v4;
  v8 = SetAudioLanguageIntentResponse.init(code:userActivity:)(v5, v4);
  a2();
}

void sub_2689DF55C(void *a1, NSObject *a2, void (**a3)(uint64_t, id))
{
  v6 = sub_268B371E4();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_268B36C04();
  v76 = *(v78 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = swift_allocObject();
  v81 = a2;
  v82 = v19;
  *(v19 + 16) = a3;
  v20 = (&a2->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceState);
  v21 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v83 = a3;
  _Block_copy(a3);
  if (!sub_2688C328C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v11, qword_2802CDA10);
    (*(v12 + 16))(v18, v37, v11);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "Media controls are unsupported on this platform", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v41 = sub_268B1CD38(4);
    v42 = v83;
    v83[2](v83, v41);

    goto LABEL_23;
  }

  v22 = [a1 device];
  if (v22)
  {
    v23 = v22;
    v24 = sub_26892D418(v22);
    if (v25)
    {
      v26 = v24;
      v27 = v25;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v11, qword_2802CDA10);
      (*(v12 + 16))(v16, v28, v11);

      v29 = sub_268B37A34();
      v30 = sub_268B37F04();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v81 = v29;
        v32 = v26;
        v33 = v31;
        v34 = swift_slowAlloc();
        v84[0] = v34;
        *v33 = 136315138;
        v35 = sub_26892CDB8(v32, v27, v84);

        *(v33 + 4) = v35;
        v36 = v81;
        _os_log_impl(&dword_2688BB000, v81, v30, "Disambiguated Intent with destinationDeviceId: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x26D6266E0](v34, -1, -1);
        MEMORY[0x26D6266E0](v33, -1, -1);
      }

      else
      {
      }

      (*(v12 + 8))(v16, v11);
      v46 = sub_268B1CCB0();
      if (v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v47);

      type metadata accessor for SetAudioLanguageDeviceResolutionResult();
      v41 = sub_268B2CC98(v23);
      v42 = v83;
      v83[2](v83, v41);

LABEL_23:
      v48 = v42;
      goto LABEL_24;
    }
  }

  v43 = sub_268B1CCB0();
  if (v43)
  {
    if (sub_2688EFD0C(v43))
    {
      v44 = [a1 device];
      if (!v44)
      {
        v67 = *(&v81->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceSelector);
        v69 = v75;
        v68 = v76;
        v70 = v78;
        (*(v76 + 104))(v75, *MEMORY[0x277D5F640], v78);
        v71 = swift_allocObject();
        v72 = v82;
        *(v71 + 16) = sub_26892DC18;
        *(v71 + 24) = v72;

        v73 = v77;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v79 + 8))(v73, v80);
        (*(v68 + 8))(v69, v70);

        v48 = v83;
        goto LABEL_24;
      }

      v45 = v44;
    }

    else
    {
    }
  }

  v49 = [a1 device];
  if (v49)
  {
    v50 = v49;
    sub_268988574(v49);
    if (v51)
    {
    }

    else
    {
      sub_2689E1C9C(0x76745F656C707061, 0xE800000000000000, v50);
    }

    v55 = *(&v81->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceSelector);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_268B3BBA0;
    *(v56 + 32) = v50;
    v57 = swift_allocObject();
    v58 = v82;
    v57[2] = sub_26892DC18;
    v57[3] = v58;
    v57[4] = a1;

    v59 = v50;
    v60 = a1;
    sub_2688F6BEC();

    v48 = v83;
  }

  else
  {
    v52 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    if (sub_268B34D24())
    {
      type metadata accessor for SetAudioLanguageDeviceResolutionResult();
      v53 = sub_268B1CD38(3);
      v54 = v83;
      v83[2](v83, v53);

      v48 = v54;
    }

    else
    {
      type metadata accessor for Device();
      sub_268B36C54();
      v61 = sub_268B36C24();
      LOBYTE(v74) = 0;
      sub_268983F14(v61, v62, 0, 0, 0, 0, 0, 0, 0, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84[0], v84[1]);
      v64 = v63;
      type metadata accessor for SetAudioLanguageDeviceResolutionResult();
      v65 = sub_268B2CC98(v64);
      v66 = v83;
      v83[2](v83, v65);

      v48 = v66;
    }
  }

LABEL_24:
  _Block_release(v48);
}

void sub_2689E061C(unint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v4 = 1;
LABEL_9:
    v8 = sub_268B1CD38(v4);
    goto LABEL_10;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v4 = 3;
    goto LABEL_9;
  }

  if (sub_2688EFD0C(a1) == 1)
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v9 = sub_268B2CC98(v7);
    a3();

    goto LABEL_11;
  }

  type metadata accessor for SetAudioLanguageDeviceResolutionResult();
  v8 = sub_268B2CCFC(a1);
LABEL_10:
  v9 = v8;
  a3();
LABEL_11:
}

void sub_2689E0734(unint64_t a1, __int16 a2, void (*a3)(void))
{
  if ((a2 & 0x100) != 0)
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v9 = 1;
LABEL_12:
    v10 = sub_268B1CD38(v9);
    goto LABEL_13;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v9 = 2;
    goto LABEL_12;
  }

  if (sub_2688EFD0C(a1) == 1)
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = v5;
    v7 = sub_268B1CCB0();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    sub_268983D74(v8);

    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v11 = sub_268B2CC98(v6);
    a3();

    goto LABEL_14;
  }

  type metadata accessor for SetAudioLanguageDeviceResolutionResult();
  v10 = sub_268B2CCFC(a1);
LABEL_13:
  v11 = v10;
  a3();
LABEL_14:
}

void sub_2689E0898()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  OUTLINED_FUNCTION_0_3();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v1;
  v14 = qword_2802A5028;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v15 = OUTLINED_FUNCTION_4_13();
  v16(v15);
  OUTLINED_FUNCTION_5_5();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_20(v17, 20);
  v19(v18);
  *(v17 + v0) = 0;
  v20 = v17 + v14;
  *(v20 + 8) = sub_268958724;
  *(v20 + 16) = v13;

  sub_268B38004();
  sub_268B37A04();

  sub_2689E0A7C(v21[0], v21[1], sub_2689E2048, v17);

  (*(v7 + 8))(v12, v4);
  OUTLINED_FUNCTION_23();
}

void sub_2689E0A7C(void *a1, char *a2, void (*a3)(id *), uint64_t a4)
{
  v73 = a2;
  v83 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v73 - v8;
  v9 = sub_268B37144();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B37A54();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v22 = swift_allocObject();
  v79 = a3;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268958D98;
  *(v23 + 24) = v22;
  v80 = v23;
  v24 = qword_2802A4F30;
  v82 = a4;

  v81 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v26 = v13[2];
  v26(v21, v25, v12);
  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "Resolving language for set audio language", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v30 = v13[1];
  v30(v21, v12);
  v31 = [v83 language];
  if (v31)
  {
    v32 = v31;
    sub_2689EF3E4(v31);
    if (v33)
    {

      v26(v19, v25, v12);
      v34 = sub_268B37A34();
      v35 = sub_268B37F04();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2688BB000, v34, v35, "Language already found in intent, returning it", v36, 2u);
        MEMORY[0x26D6266E0](v36, -1, -1);
      }

      v30(v19, v12);
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      v37 = sub_268B2F5B4(v32);
      v84 = v37;
      v79(&v84);

LABEL_18:

      return;
    }
  }

  v38 = [v83 device];
  if (v38)
  {
    v39 = v38;
    v40 = sub_26892D418(v38);
    if (v41)
    {
      v42 = v41;
      v79 = v40;
      v43 = [v83 language];
      if (v43 && (v44 = sub_268A6F500(v43), v45))
      {
        v46 = v44;
        v47 = v45;
        v48 = v73;
        v49 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 24];
        v78 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 32];
        v83 = __swift_project_boxed_opaque_existential_1(&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController], v49);
        v50 = v76;
        v51 = v74;
        (*(v76 + 104))(v74, *MEMORY[0x277D5F7D0], v77);
        v52 = sub_268B37704();
        v53 = v75;
        __swift_storeEnumTagSinglePayload(v75, 1, 1, v52);
        v54 = swift_allocObject();
        v55 = v80;
        v54[2] = sub_2688E19F8;
        v54[3] = v55;
        v54[4] = v48;
        v56 = v48;
        sub_2689722C8(v46, v47, v51, v79, v42, v53, sub_2689E232C, v54, v49, v78);

        sub_2688C058C(v53, &unk_2802A7360, &qword_268B3F860);
        (*(v50 + 8))(v51, v77);
      }

      else
      {
        v57 = v73;
        v58 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 24];
        v59 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 32];
        v83 = __swift_project_boxed_opaque_existential_1(&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController], v58);
        v61 = v76;
        v60 = v77;
        v62 = v74;
        (*(v76 + 104))(v74, *MEMORY[0x277D5F7D0], v77);
        v63 = sub_268B37704();
        v64 = v75;
        __swift_storeEnumTagSinglePayload(v75, 1, 1, v63);
        v65 = swift_allocObject();
        v66 = v80;
        v65[2] = sub_2688E19F8;
        v65[3] = v66;
        v65[4] = v57;
        v67 = v57;
        sub_2689722C8(0, 0, v62, v79, v42, v64, sub_2689E2290, v65, v58, v59);

        sub_2688C058C(v64, &unk_2802A7360, &qword_268B3F860);
        (*(v61 + 8))(v62, v60);
      }

      goto LABEL_18;
    }
  }

  v68 = v78;
  v26(v78, v25, v12);
  v69 = sub_268B37A34();
  v70 = sub_268B37EE4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_2688BB000, v69, v70, "No device found in intent, returning failure", v71, 2u);
    MEMORY[0x26D6266E0](v71, -1, -1);
  }

  v30(v68, v12);
  type metadata accessor for SetAudioLanguageLanguageResolutionResult();
  v72 = sub_268B17B04(3);
  v84 = v72;
  v79(&v84);
}

void sub_2689E1288(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_2689E16CC();
  v5 = v4;
  a3();
}

uint64_t sub_2689E1310(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_2689E13B8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v5 = SetAudioLanguageIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689E1424(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v4 = SetAudioLanguageIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689E14B0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_2689E153C(uint64_t a1)
{
  v2 = sub_268B36F24();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_26893B66C(a1, &v22 - v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 4;
  }

  (*(v5 + 32))(v13, v19, v2);
  sub_268B36EC4();
  v20 = *(v5 + 8);
  v20(v10, v2);
  v20(v13, v2);
  return 5;
}

void sub_2689E16CC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v51 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = sub_268B372A4();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v51 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  switch(v3)
  {
    case 1:
      v39 = *(v51 + 16);
      if (!v39)
      {
        type metadata accessor for SetAudioLanguageLanguageResolutionResult();
        v38 = 1;
        goto LABEL_21;
      }

      if (v39 != 1)
      {
        goto LABEL_16;
      }

      sub_2689A9A74(v51, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
      {
        sub_2688C058C(v9, &qword_2802A6550, &qword_268B3F880);
LABEL_16:
        v53 = MEMORY[0x277D84F90];
        sub_268B38234();
        v40 = type metadata accessor for LanguageOption();
        OUTLINED_FUNCTION_3_26(v40);
        do
        {
          v41 = OUTLINED_FUNCTION_14_12();
          v42 = v52;
          (v52)(v41);
          v42(v25, v28, v13);
          sub_2689EEFA0(v25);
          v43 = OUTLINED_FUNCTION_18_8();
          v44(v43);
          sub_268B38214();
          v45 = *(v53 + 16);
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          v30 += v51;
          --v39;
        }

        while (v39);
        goto LABEL_18;
      }

      (*(v16 + 32))(v21, v9, v13);
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      type metadata accessor for LanguageOption();
      (*(v16 + 16))(v28, v21, v13);
      v50 = sub_2689EEFA0(v28);
      sub_268B2F5B4(v50);

      (*(v16 + 8))(v21, v13);
      goto LABEL_24;
    case 2:
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      v38 = 2;
      goto LABEL_21;
    case 3:
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      v38 = 4;
LABEL_21:
      sub_268B17B04(v38);
      goto LABEL_24;
    default:
      v31 = *(v51 + 16);
      if (!v31)
      {
        goto LABEL_19;
      }

      if (v31 != 1)
      {
        goto LABEL_6;
      }

      sub_2689A9A74(v51, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_2688C058C(v12, &qword_2802A6550, &qword_268B3F880);
LABEL_6:
        if (v1)
        {
          v53 = MEMORY[0x277D84F90];
          sub_268B38234();
          v32 = type metadata accessor for LanguageOption();
          OUTLINED_FUNCTION_3_26(v32);
          do
          {
            v33 = OUTLINED_FUNCTION_14_12();
            v34 = v52;
            (v52)(v33);
            v34(v25, v28, v13);
            sub_2689EEFA0(v25);
            v35 = OUTLINED_FUNCTION_18_8();
            v36(v35);
            sub_268B38214();
            v37 = *(v53 + 16);
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
            v30 += v51;
            --v31;
          }

          while (v31);
LABEL_18:
          type metadata accessor for SetAudioLanguageLanguageResolutionResult();
          sub_268B2F618(v53);
          OUTLINED_FUNCTION_129();
        }

        else
        {
LABEL_19:
          type metadata accessor for SetAudioLanguageLanguageResolutionResult();
          sub_268B17B04(1);
        }
      }

      else
      {
        (*(v16 + 32))(v30, v12, v13);
        type metadata accessor for SetAudioLanguageLanguageResolutionResult();
        type metadata accessor for LanguageOption();
        v46 = *(v16 + 16);
        v47 = OUTLINED_FUNCTION_14_12();
        v48(v47);
        v49 = sub_2689EEFA0(v28);
        sub_268B2F5B4(v49);

        (*(v16 + 8))(v30, v13);
      }

LABEL_24:
      OUTLINED_FUNCTION_23();
      return;
  }
}

id SetAudioLanguageIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetAudioLanguageIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2689E1C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setType_];
}

id sub_2689E1D00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v37[3] = sub_268B36C54();
  v37[4] = MEMORY[0x277D5F680];
  v37[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v36[3] = v10;
  v36[4] = &off_2879539D0;
  v36[0] = a4;
  v11 = type metadata accessor for SetAudioLanguageIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v36, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v35[3] = v10;
  v35[4] = &off_2879539D0;
  v35[0] = v18;
  sub_26890C900(v37, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController]);
  sub_26890C900(a3, v34);
  sub_26890C900(v35, &v32);
  sub_26890C900(a5, v31);
  sub_268B376A4();
  v19 = sub_268B37694();
  v20 = v33;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = sub_26892D53C(a2, v34, *v24, v31, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceSelector] = v26;
  sub_26890C900(v35, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_analyticsService]);
  sub_26890C900(a3, v34);
  sub_26890C900(a5, &v32);
  type metadata accessor for AceServiceHelper();
  v27 = swift_allocObject();
  sub_2688E6514(v34, v27 + 16);
  sub_2688E6514(&v32, v27 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_aceServiceHelper] = v27;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceState]);
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return v28;
}

uint64_t sub_2689E2014()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2689E2074(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t sub_2689E223C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2689E2278(unint64_t a1, __int16 a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_2689E0734(a1, a2 & 0x1FF, *(v2 + 16));
}

void sub_2689E2290(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_2689E1288(a1, a2, *(v2 + 16));
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2689E22DC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_2689DF460(a1, *(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_3_26(uint64_t result)
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  *(v2 - 104) = v4;
  *(v2 - 96) = result;
  v5 = *(v2 - 112) + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  *(v2 - 112) = *(v3 + 56);
  return result;
}

id sub_2689E2390()
{
  if (qword_2802A5008 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB08;
  qword_2802CD958 = qword_2802CDB08;

  return v1;
}

uint64_t sub_2689E23F4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v58 = a1;
  v57 = a3;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v56 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v18 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v54 = *(v11 + 16);
  v55 = v18;
  v54(v17);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    v53 = a2;
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "SetAudioLanguageHandleIntentStrategy.makeIntentHandledResponse()", v21, 2u);
    a2 = v53;
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v11 + 8);
  v22(v17, v8);
  v23 = [a2 device];
  if (v23)
  {
    v24 = v23;
    LOWORD(v61[0]) = 0;
    BYTE2(v61[0]) = 0;
    v61[1] = 0;
    v61[2] = 0;
    v61[3] = 1;
    memset(&v61[4], 0, 59);
    memcpy(v62, &v61[1], 0x51uLL);
    sub_2688C058C(v62, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v61[1]) = 0;
    memset(&v61[2], 0, 72);
    LOBYTE(v61[11]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_268B3BBA0;
    *(v25 + 32) = v24;
    v26 = a2;
    v27 = v24;
    sub_268AE35E8();

    v28 = v59;
    v29 = sub_268AAC1F4(v59 + 2);
    memcpy(__dst, v61, 0x5BuLL);
    OUTLINED_FUNCTION_17_12();
    v30 = swift_allocObject();
    v31 = v30;
    v30[2] = v28;
    v30[3] = v26;
    v33 = v57;
    v32 = v58;
    v30[4] = v57;
    v30[5] = v32;
    v30[6] = v29;
    v30[7] = a4;
    v30[8] = a5;

    v34 = v26;
    v35 = v33;

    sub_268A36A00(__dst, sub_2689E5414, v31, v36, v37, v38, v39, v40, v53, v54, v55, v56, v57, v58, v59, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v63[0], v63[1], v63[2], v63[3], v63[4]);

    memcpy(v63, v61, 0x5BuLL);
    return sub_2689E5448(v63);
  }

  else
  {
    v58 = a5;
    v42 = v56;
    (v54)(v56, v55, v8);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_7(&dword_2688BB000, v45, v46, "No device present in intent");
      OUTLINED_FUNCTION_12();
    }

    v22(v42, v8);
    v47 = __swift_project_boxed_opaque_existential_1(v59 + 12, v59[15]);
    sub_2688C2ECC();
    v48 = OUTLINED_FUNCTION_26_1();
    *v49 = 63;
    v50 = *v47;
    sub_26894B450();

    v51 = OUTLINED_FUNCTION_26_1();
    *v52 = 63;
    __dst[0] = v51;
    LOBYTE(__dst[5]) = 1;
    a4(__dst);
    return sub_2688C058C(__dst, &unk_2802A57C0, &qword_268B3BE00);
  }
}

uint64_t sub_2689E2860(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v52 = a4;
  v53 = a6;
  v59 = a3;
  v60 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v52 - v18;
  v58 = sub_268B34E24();
  v56 = *(v58 - 8);
  v19 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v52 - v30);
  sub_2688F1FA4(a1, &v52 - v30, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    v33 = sub_268B36E84();
    if (v34)
    {
      v53 = v33;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v53 = v42;
    }

    v35 = a2;
    v43 = __swift_project_boxed_opaque_existential_1(v35 + 12, v35[15]);
    (*(v56 + 104))(v55, *MEMORY[0x277D5BC00], v58);
    v44 = sub_268B350F4();
    v45 = v57;
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v44);
    v46 = sub_268B34B94();
    v47 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v46);
    v48 = *v43;
    sub_2688F1FA4(v45, v17, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v17, 1, v44) == 1)
    {
      sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v44 - 8) + 8))(v17, v44);
    }

    v49 = v55;
    sub_2688E3A78();

    sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v56 + 8))(v49, v58);
    v50 = *__swift_project_boxed_opaque_existential_1(v35 + 12, v35[15]);
    sub_26894B450();
    v63[0] = v32;
    v64 = 1;
    v51 = v32;
    v61(v63);

    return sub_2688C058C(v63, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v31, v27);
    v36 = a2[21];
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    v37 = sub_268B36FA4();
    sub_2688F1FA4(v27, v25, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = *&v25[*(v21 + 48)];
    if (v37)
    {
      sub_2689E2E68(v25, v39, v59, v38, v60, v53, v61, v62);
    }

    else
    {
      sub_2689E361C(v25, v39, v59, v38, v60, v53, v61, v62);
    }

    sub_2688C058C(v27, &unk_2802A56E0, &unk_268B3CDF0);
    v40 = sub_268B350F4();
    return (*(*(v40 - 8) + 8))(v25, v40);
  }
}

uint64_t sub_2689E2E68(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v111 = a7;
  v112 = a8;
  v110 = a6;
  v105 = a5;
  v120 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v109 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  v104 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v103 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v116 = v98 - v28;
  OUTLINED_FUNCTION_9();
  v117 = sub_268B34E24();
  v29 = OUTLINED_FUNCTION_1(v117);
  v115 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  v114 = v34 - v33;
  OUTLINED_FUNCTION_9();
  v35 = sub_268B37A54();
  v36 = OUTLINED_FUNCTION_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v106 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  v44 = v98 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v108 = v49;
  OUTLINED_FUNCTION_8();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = v98 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = v98 - v54;
  v56 = sub_268B350F4();
  v119 = *(v56 - 8);
  (*(v119 + 16))(v55, a1, v56);
  v118 = v45;
  *&v55[*(v45 + 48)] = a2;
  v57 = qword_2802A4F30;
  v58 = a2;
  if (v57 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v59 = __swift_project_value_buffer(v35, qword_2802CDA10);
  v60 = *(v38 + 16);
  v101 = v59;
  v102 = v38 + 16;
  v121 = v35;
  v100 = v60;
  (v60)(v44);
  v61 = sub_268B37A34();
  v62 = sub_268B37ED4();
  v63 = os_log_type_enabled(v61, v62);
  v113 = v56;
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_14();
    *v64 = 0;
    _os_log_impl(&dword_2688BB000, v61, v62, "SetAudioLanguageHandleIntentStrategy#intentHandledResponse...", v64, 2u);
    v56 = v113;
    OUTLINED_FUNCTION_12();
  }

  v65 = *(v38 + 8);
  v107 = v38 + 8;
  v99 = v65;
  v65(v44, v121);
  OUTLINED_FUNCTION_6_22();
  sub_268947F08();
  v98[1] = v66;
  v67 = __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  (*(v115 + 104))(v114, *MEMORY[0x277D5BC10], v117);
  sub_2688F1FA4(v55, v53, &unk_2802A56E0, &unk_268B3CDF0);

  v68 = v119;
  v69 = v116;
  (*(v119 + 32))(v116, v53, v56);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v56);
  v73 = sub_268B34B94();
  v74 = v104;
  __swift_storeEnumTagSinglePayload(v104, 1, 1, v73);
  v75 = *v67;
  v76 = v69;
  v77 = v103;
  sub_2688F1FA4(v76, v103, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v77, 1, v56) == 1)
  {
    sub_2688C058C(v77, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v68 + 8))(v77, v56);
  }

  v78 = v114;
  v79 = v120;
  sub_2688E3A78();

  sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v116, &unk_2802A57B0, &unk_268B3CE00);
  (*(v115 + 8))(v78, v117);
  v80 = *__swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v81 = __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  OUTLINED_FUNCTION_7_16(v81);
  v82 = v106;
  v100(v106, v101, v121);
  v83 = sub_268B37A34();
  v84 = sub_268B37ED4();
  if (os_log_type_enabled(v83, v84))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_7(&dword_2688BB000, v85, v86, "SetAudioLanguageHandleIntentStrategy#intentHandledResponse returning output");
    OUTLINED_FUNCTION_12();
  }

  v99(v82, v121);
  v87 = v9[35];
  v88 = v9[36];
  __swift_project_boxed_opaque_existential_1(v9 + 32, v87);
  v89 = v108;
  sub_2688F1FA4(v55, v108, &unk_2802A56E0, &unk_268B3CDF0);
  v90 = v55;
  v91 = *(v89 + *(v118 + 48));
  v92 = v109;
  sub_268A82B50(v79, v109);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  (*(v88 + 8))(v89, v91, v92, v110, 1, v111, v112, v87, v88);

  sub_2688C058C(v92, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v90, &unk_2802A56E0, &unk_268B3CDF0);
  return (*(v119 + 8))(v89, v113);
}

uint64_t sub_2689E361C(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v9 = v8;
  v105 = a8;
  v106 = a7;
  v103 = a6;
  v98 = a5;
  v99 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v101 = v16;
  OUTLINED_FUNCTION_9();
  v104 = sub_268B35044();
  v17 = OUTLINED_FUNCTION_1(v104);
  v102 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v100 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  v97 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v96 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v109 = &v94 - v34;
  OUTLINED_FUNCTION_9();
  v110 = sub_268B34E24();
  v35 = OUTLINED_FUNCTION_1(v110);
  v108 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v107 = v40 - v39;
  OUTLINED_FUNCTION_9();
  v41 = sub_268B37A54();
  v42 = OUTLINED_FUNCTION_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v94 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v94 - v57;
  v59 = sub_268B350F4();
  v95 = *(v59 - 8);
  (*(v95 + 16))(v58, a1, v59);
  v60 = *(v50 + 48);
  v111 = v58;
  *&v58[v60] = a2;
  v61 = qword_2802A4F30;
  v62 = a2;
  if (v61 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v63 = __swift_project_value_buffer(v41, qword_2802CDA10);
  (*(v44 + 16))(v49, v63, v41);
  v64 = sub_268B37A34();
  v65 = sub_268B37ED4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_14();
    *v66 = 0;
    _os_log_impl(&dword_2688BB000, v64, v65, "SetAudioLanguageHandleIntentStrategy#legacyHandledResponse...", v66, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v44 + 8))(v49, v41);
  OUTLINED_FUNCTION_6_22();
  v67 = v99;
  sub_268947F08();
  v94 = v68;
  v69 = __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  (*(v108 + 104))(v107, *MEMORY[0x277D5BC10], v110);
  sub_2688F1FA4(v111, v56, &unk_2802A56E0, &unk_268B3CDF0);

  v70 = v95;
  v71 = v109;
  (*(v95 + 32))(v109, v56, v59);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v59);
  v75 = sub_268B34B94();
  v76 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v75);
  v77 = *v69;
  v78 = v96;
  sub_2688F1FA4(v71, v96, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v78, 1, v59) == 1)
  {
    sub_2688C058C(v78, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v70 + 8))(v78, v59);
  }

  v79 = v100;
  v80 = v107;
  sub_2688E3A78();

  sub_2688C058C(v76, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v109, &unk_2802A57B0, &unk_268B3CE00);
  (*(v108 + 8))(v80, v110);
  v81 = *__swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v82 = __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  OUTLINED_FUNCTION_7_16(v82);
  sub_268A82B50(v67, v79);
  v114[3] = sub_268B354F4();
  v114[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v114);
  v83 = 0;
  if (sub_2689F0948())
  {
    v83 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v84 = sub_268B38064();
    [v83 setMinimumAutoDismissalTimeInMs_];

    [v83 setPremptivelyResumeMedia_];
  }

  v85 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  sub_268B34CA4();
  v86 = v102;
  v87 = v101;
  v88 = v104;
  (*(v102 + 16))(v101, v79, v104);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v92 = v111;
  sub_268B34EF4();

  sub_2688C058C(v112, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v87, &qword_2802A57F0, &qword_268B3DDB0);
  v115 = 0;
  v106(v114);
  (*(v86 + 8))(v79, v88);
  sub_2688C058C(v92, &unk_2802A56E0, &unk_268B3CDF0);
  return sub_2688C058C(v114, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_2689E3E64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B36E84();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v15 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
    swift_beginAccess();
    v31 = *(a3 + v15);
    sub_268B38404();
    sub_268947F08();
    v13 = v16;
    v14 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v19 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  swift_beginAccess();
  v30 = *(a3 + v19);
  sub_268B38404();
  v20 = sub_268B36E94();
  v22 = v21;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  v23 = sub_268B37B84();
  OUTLINED_FUNCTION_17_12();
  v24 = swift_allocObject();
  v24[2] = v6;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = v13;
  v24[6] = v14;
  v24[7] = a4;
  v24[8] = a5;
  v25 = v6[10];
  v26 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v25);

  v27 = a2;

  sub_2689CE860(0xD000000000000024, 0x8000000268B59D90, v23, sub_2689E53A0, v24, v25, v26);
}

uint64_t sub_2689E40D4(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v124 = a7;
  v125 = a8;
  v122 = a5;
  v123 = a6;
  v126 = a4;
  v127 = a2;
  v121 = a3;
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v107 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v120 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v115 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v113 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v107 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v110 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v111 = &v107 - v32;
  v33 = sub_268B34E24();
  v128 = *(v33 - 8);
  v129 = v33;
  v34 = *(v128 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v118 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v108 = &v107 - v37;
  v38 = sub_268B37A54();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v114 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v107 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v107 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (&v107 - v50);
  sub_2688F1FA4(v117, &v107 - v50, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v51;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v38, qword_2802CDA10);
    (*(v39 + 16))(v47, v53, v38);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v127;
    v58 = v108;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "SetAudioLanguageHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    (*(v39 + 8))(v47, v38);
    v60 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    (*(v128 + 104))(v58, *MEMORY[0x277D5BC00], v129);
    v61 = sub_268B350F4();
    v62 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v61);
    v63 = *MEMORY[0x277D5B8E0];
    v64 = sub_268B34B94();
    v65 = v112;
    (*(*(v64 - 8) + 104))(v112, v63, v64);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
    v66 = *v60;
    sub_2688F1FA4(v62, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v61) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v61 - 8) + 8))(v31, v61);
    }

    sub_2688E3A78();

    sub_2688C058C(v65, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v58, v129);
    v83 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    sub_2688C2ECC();
    v84 = swift_allocError();
    *v85 = -88;
    v86 = *v83;
    sub_26894B450();

    v87 = swift_allocError();
    *v88 = -88;
    v130[0] = v87;
    v131 = 1;
    v124(v130);

    return sub_2688C058C(v130, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v51, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v38, qword_2802CDA10);
    v68 = *(v39 + 16);
    v108 = v67;
    v107 = v68;
    (v68)(v45);
    v69 = sub_268B37A34();
    v70 = sub_268B37ED4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v69, v70, "SetAudioLanguageHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    v72 = *(v39 + 8);
    v112 = (v39 + 8);
    v72(v45, v38);
    v73 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    (*(v128 + 104))(v118, *MEMORY[0x277D5BC00], v129);
    v117 = v17;
    v74 = v109;
    sub_2688F1FA4(v17, v109, &unk_2802A56E0, &unk_268B3CDF0);

    v75 = sub_268B350F4();
    v76 = *(v75 - 8);
    v77 = v119;
    (*(v76 + 32))(v119, v74, v75);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v75);
    v78 = sub_268B34B94();
    v79 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v78);
    v80 = *v73;
    v81 = v110;
    sub_2688F1FA4(v77, v110, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v75);
    v111 = v76;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v81, v75);
    }

    v90 = v114;
    v91 = v118;
    sub_2688E3A78();

    sub_2688C058C(v79, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v119, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v91, v129);
    v92 = v127;
    v93 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    sub_2688C2ECC();
    v94 = swift_allocError();
    *v95 = 64;
    v96 = *v93;
    sub_26894B450();

    v107(v90, v108, v38);
    v97 = sub_268B37A34();
    v98 = sub_268B37ED4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2688BB000, v97, v98, "SetAudioLanguageHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v99, 2u);
      MEMORY[0x26D6266E0](v99, -1, -1);
    }

    v72(v90, v38);
    v100 = v92[35];
    v101 = v92[36];
    __swift_project_boxed_opaque_existential_1(v92 + 32, v100);
    v102 = v117;
    v103 = v115;
    sub_2688F1FA4(v117, v115, &unk_2802A56E0, &unk_268B3CDF0);
    v104 = *(v103 + *(v120 + 48));
    v105 = v116;
    sub_268A82B50(v126, v116);
    v106 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
    (*(v101 + 40))(v103, v104, v105, v124, v125, v100, v101);

    sub_2688C058C(v105, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v102, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v111 + 8))(v103, v75);
  }
}

uint64_t *sub_2689E4E04()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_26895F84C((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  return v0;
}

uint64_t sub_2689E4E54()
{
  sub_2689E4E04();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_2689E4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E4FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E5044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689E5160()
{
  if (qword_2802A4E10 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD958;

  return v1;
}

uint64_t sub_2689E51BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689E520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689E5260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689E52CC(uint64_t a1)
{
  result = sub_2689E52F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689E52F4()
{
  result = qword_2802A6DC0;
  if (!qword_2802A6DC0)
  {
    type metadata accessor for SetAudioLanguageHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6DC0);
  }

  return result;
}

uint64_t sub_2689E534C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2689E53B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

void OUTLINED_FUNCTION_7_16(uint64_t *a1)
{
  v2 = *a1;

  sub_26894B450();
}

uint64_t sub_2689E54E0(unint64_t a1)
{
  sub_2689E5570(a1);
  sub_2688D95C4();
  v3 = v2;
  sub_2689E59D0(a1);
  sub_268984794(v3);
  sub_2688DA200();
}

void sub_2689E5570(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5798, &qword_268B3BDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v23 - v4;
  v29 = sub_268B34EA4();
  v5 = *(v29 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v29);
  v31 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v30 = sub_268B34DE4();
  v33 = *(v30 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_268B382A4())
  {
    v40 = MEMORY[0x277D84F90];
    sub_26894476C();
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v40;
    v27 = a1;
    v28 = a1 & 0xC000000000000001;
    v25 = (v5 + 2);
    v26 = "l.MediaReference";
    v24 = (v5 + 1);
    v23[0] = a1 & 0xFFFFFFFFFFFFFF8;
    v23[1] = v33 + 32;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v28)
      {
        v18 = MEMORY[0x26D625BD0](v15, a1);
      }

      else
      {
        if (v15 >= *(v23[0] + 16))
        {
          goto LABEL_18;
        }

        v18 = *(a1 + 8 * v15 + 32);
      }

      v5 = v18;
      sub_268B34E94();
      sub_268B34E64();
      v19 = sub_2689EF3F0(v5);
      if (v20)
      {
        v38 = v19;
        v39 = v20;
        v36 = 45;
        v37 = 0xE100000000000000;
        v34 = 95;
        v35 = 0xE100000000000000;
        sub_26895EF2C();
        sub_268B380B4();
      }

      sub_268B34E74();
      sub_268B34E84();
      v21 = v29;
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
      (*v25)(v31, v10, v21);
      sub_268B34DC4();
      (*v24)(v10, v21);

      v40 = v16;
      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_26894476C();
        v16 = v40;
      }

      *(v16 + 16) = v22 + 1;
      (*(v33 + 32))(v16 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v22, v13, v30);
      ++v15;
      a1 = v27;
      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t sub_2689E59D0(unint64_t a1)
{
  v40 = sub_268B37A54();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = sub_268B382A4();
    v7 = result;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  if (v7 >= 1)
  {
    v8 = 0;
    v42 = a1 & 0xC000000000000001;
    v36 = (v2 + 8);
    v37 = (v2 + 16);
    *&v5 = 138412290;
    v35 = v5;
    v9 = MEMORY[0x277D84F90];
    v41 = v7;
    v38 = a1;
    do
    {
      if (v42)
      {
        v10 = MEMORY[0x26D625BD0](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = sub_268988504(v10);
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v45 = v8;
        v16 = sub_268B36434();
        OUTLINED_FUNCTION_245(v16);
        v44 = sub_268B36424();
        v17 = sub_268B36124();
        OUTLINED_FUNCTION_245(v17);
        v46 = sub_268B36114();
        v18 = sub_268B36414();
        OUTLINED_FUNCTION_245(v18);
        v43 = sub_268B36404();
        v19 = sub_268B36194();
        OUTLINED_FUNCTION_245(v19);
        sub_268B36184();
        v51 = v14;
        v52 = v15;
        v49 = 40;
        v50 = 0xE100000000000000;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_26895EF2C();
        OUTLINED_FUNCTION_0_29();
        v20 = sub_268B380B4();
        v22 = v21;

        v51 = v20;
        v52 = v22;
        v49 = 41;
        v50 = 0xE100000000000000;
        v47 = 0;
        v48 = 0xE000000000000000;
        OUTLINED_FUNCTION_0_29();
        sub_268B380B4();

        sub_2689EF38C(v11);
        v51 = sub_268B37254();
        v52 = v23;
        MEMORY[0x28223BE20](v51);
        v24 = sub_268ACD018();

        if (v24)
        {
          sub_268B360F4();
        }

        sub_268B36174();

        sub_268B363F4();

        sub_268B36104();

        sub_268B36594();

        MEMORY[0x26D6256C0](v25);
        v7 = v41;
        v8 = v45;
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();

        v9 = v53;
        a1 = v38;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v26 = v40;
        v27 = __swift_project_value_buffer(v40, qword_2802CDA10);
        (*v37)(v39, v27, v26);
        v28 = v11;
        v29 = sub_268B37A34();
        v30 = sub_268B37EE4();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = v35;
          *(v31 + 4) = v28;
          *v32 = v28;
          v33 = v28;
          _os_log_impl(&dword_2688BB000, v29, v30, "LanguageNLContextProvider.makeDisambiguationTaskBuilder found languageOption without a Name: %@ ", v31, 0xCu);
          sub_26898BED0(v32);
          MEMORY[0x26D6266E0](v32, -1, -1);
          v34 = v31;
          v7 = v41;
          MEMORY[0x26D6266E0](v34, -1, -1);
        }

        else
        {
          v33 = v29;
          v29 = v28;
        }

        (*v36)(v39, v40);
      }

      ++v8;
    }

    while (v7 != v8);
    return v9;
  }

  __break(1u);
  return result;
}

id sub_2689E5F64()
{
  if (qword_2802A4EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9C8;
  qword_2802CD960 = qword_2802CD9C8;

  return v1;
}

void sub_2689E5FC8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36F44();
  OUTLINED_FUNCTION_3_8();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  sub_268B354A4();
  v9 = MEMORY[0x277D84F90];
  v10 = OUTLINED_FUNCTION_28_9();
  v11 = OUTLINED_FUNCTION_28_9();
  sub_268B36F34();
  v62 = type metadata accessor for BaseDialogProvider();
  OUTLINED_FUNCTION_20_14();
  v12 = swift_allocObject();
  v61 = v0;
  v79 = v0;
  v80 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
  (*(v2 + 32))(boxed_opaque_existential_1, v8, v0);
  *(v12 + 16) = 0;
  *(v12 + 24) = v10;
  *(v12 + 72) = v11;
  sub_2688E6514(&v78, v12 + 32);
  sub_2689209D0(&v78);
  sub_268AD33CC(&v75);
  sub_268B36754();
  v60 = sub_268B36734();
  v14 = sub_268B36C54();
  v15 = sub_268B36C44();
  v16 = type metadata accessor for MultiUserConnectionProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
  OUTLINED_FUNCTION_3_8();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v22 = OUTLINED_FUNCTION_16_17(v21);
  v23(v22);
  v24 = *v9;
  v73 = v14;
  v74 = MEMORY[0x277D5F680];
  *&v72 = v15;
  v25 = type metadata accessor for AnalyticsServiceLogger();
  v70 = v25;
  v71 = &off_28795F5E0;
  *&v69 = v24;
  v67 = v16;
  v68 = &off_287960608;
  v66[0] = v17;
  v26 = type metadata accessor for AnalyticsServiceImpl();
  v27 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v69, v25);
  OUTLINED_FUNCTION_3_8();
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v32 = OUTLINED_FUNCTION_16_17(v31);
  v33(v32);
  __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  OUTLINED_FUNCTION_3_8();
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v38 = OUTLINED_FUNCTION_25_7(v37);
  v39(v38);
  v40 = *v9;
  v41 = *v24;
  v27[5] = v25;
  v27[6] = &off_28795F5E0;
  v27[2] = v40;
  v27[21] = v16;
  v27[22] = &off_287960608;
  v27[18] = v41;
  sub_2688E6514(&v75, (v27 + 7));
  v27[12] = v60;
  sub_2688E6514(&v72, (v27 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  __swift_destroy_boxed_opaque_existential_0Tm(&v69);
  __swift_destroy_boxed_opaque_existential_0Tm(&v78);
  v79 = v61;
  v80 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v78);
  sub_268B36F34();
  v42 = sub_268B36C44();
  v76 = v14;
  v77 = MEMORY[0x277D5F680];
  *&v75 = v42;
  v43 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v44 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_2689E65E8();
  v70 = v62;
  v71 = &off_2879561B0;
  *&v69 = v12;
  v68 = &off_2879539D0;
  v67 = v26;
  v66[0] = v27;
  v64 = &type metadata for UserDefaultsProviderImpl;
  v65 = &off_287952DF0;
  v63[0] = v44;
  type metadata accessor for WhatDidTheySayHandleIntentStrategy();
  v45 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v66, v26);
  OUTLINED_FUNCTION_3_8();
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v50 = OUTLINED_FUNCTION_25_7(v49);
  v51(v50);
  __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  OUTLINED_FUNCTION_3_8();
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_0();
  v56 = OUTLINED_FUNCTION_15_14(v55);
  v57(v56);
  v58 = *v12;
  v45[16] = v26;
  v45[17] = &off_2879539D0;
  v45[13] = *"setVolumeLevelIntent";
  v45[31] = &type metadata for UserDefaultsProviderImpl;
  v45[32] = &off_287952DF0;
  v45[28] = v58;
  sub_2688E6514(&v81, (v45 + 2));
  sub_26890C900(&v69, (v45 + 7));
  type metadata accessor for DialogProvider();
  v59 = swift_allocObject();
  sub_2688E6514(&v69, v59 + 16);
  v45[12] = v59;
  sub_2688E6514(&v78, (v45 + 18));
  sub_2688E6514(&v75, (v45 + 23));
  sub_2688E6514(&v72, (v45 + 33));
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  OUTLINED_FUNCTION_23();
}

void sub_2689E65E8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268B36F44();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  sub_268B354A4();
  sub_268B36F34();
  sub_268AF7C54();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  OUTLINED_FUNCTION_3_8();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v16 = OUTLINED_FUNCTION_15_14(v15);
  v17(v16);
  v18 = *v0;
  v33 = v3;
  v34 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(v6 + 16))(boxed_opaque_existential_1, v11, v3);
  v20 = type metadata accessor for AnalyticsServiceImpl();
  v31[3] = v20;
  v31[4] = &off_2879539D0;
  v31[0] = v18;
  v21 = type metadata accessor for SiriPlaybackControlsOutputProvider();
  v22 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v31, v20);
  OUTLINED_FUNCTION_3_8();
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  v30 = *v28;
  v22[15] = v20;
  v22[16] = &off_2879539D0;
  v22[12] = v30;
  sub_2688E6514(&v36, (v22 + 7));
  sub_2688E6514(&v32, (v22 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  (*(v6 + 8))(v11, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  v2[3] = v21;
  v2[4] = &off_28795B170;
  *v2 = v22;
  OUTLINED_FUNCTION_23();
}

void sub_2689E6860()
{
  OUTLINED_FUNCTION_26();
  __dst = v0;
  v2 = v1;
  v4 = v3;
  v50 = v6;
  v51 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v52 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v17 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v48 = *(v12 + 16);
  v49 = v17;
  (v48)(v0);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    v47 = v8;
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "WhatDidTheySayHandleIntentStrategy.makeIntentHandledResponse()", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v12 + 8);
  v21(v0, v9);
  v22 = [v8 device];
  if (v22)
  {
    v23 = v22;
    LOWORD(v55[0]) = 0;
    BYTE2(v55[0]) = 0;
    v55[1] = 0;
    v55[2] = 0;
    v55[3] = 1;
    memset(&v55[4], 0, 59);
    memcpy(v56, &v55[1], 0x51uLL);
    sub_2688C058C(v56, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v55[1]) = 0;
    memset(&v55[2], 0, 72);
    LOBYTE(v55[11]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_268B3BBA0;
    *(v24 + 32) = v23;
    v25 = v8;
    v26 = v23;
    sub_268AE3884();

    v27 = sub_268AAC1F4(__dst + 2);
    memcpy(v58, v55, 0x5BuLL);
    v28 = swift_allocObject();
    v28[2] = __dst;
    v28[3] = v25;
    v28[4] = v50;
    v28[5] = v51;
    v28[6] = v4;
    v28[7] = v2;
    v28[8] = v27;

    v29 = v25;
    v30 = v50;

    sub_268A36BF4(v58, sub_2689EA094, v28, v31, v32, v33, v34, v35, v47, v48, v49, v50, v51, v52, __dst, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v57[0], v57[1], v57[2], v57[3], v57[4]);

    memcpy(v57, v55, 0x5BuLL);
    sub_2689EA0A8(v57);
  }

  else
  {
    v48(v52, v49, v9);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_7(&dword_2688BB000, v38, v39, "No device present in intent");
      OUTLINED_FUNCTION_12();
    }

    v21(v52, v9);
    v40 = __swift_project_boxed_opaque_existential_1(__dst + 13, __dst[16]);
    sub_2688C2ECC();
    v41 = OUTLINED_FUNCTION_26_1();
    *v42 = -109;
    v43 = *v40;
    OUTLINED_FUNCTION_5_10();
    sub_26894B450();

    v44 = OUTLINED_FUNCTION_26_1();
    *v45 = -109;
    v46 = OUTLINED_FUNCTION_24_10(v44);
    v4(v46);
    sub_2688C058C(v58, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689E6C90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v52 = a4;
  v60 = a6;
  v61 = a7;
  v58 = a3;
  v59 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v51 - v18;
  v57 = sub_268B34E24();
  v55 = *(v57 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v51 - v30);
  sub_2688F1FA4(a1, &v51 - v30, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    v33 = sub_268B36E84();
    if (v34)
    {
      v52 = v33;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v52 = v41;
    }

    v35 = a2;
    v42 = __swift_project_boxed_opaque_existential_1(v35 + 13, v35[16]);
    (*(v55 + 104))(v54, *MEMORY[0x277D5BC00], v57);
    v43 = sub_268B350F4();
    v44 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v43);
    v45 = sub_268B34B94();
    v46 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v45);
    v47 = *v42;
    sub_2688F1FA4(v44, v17, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v17, 1, v43) == 1)
    {
      sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v43 - 8) + 8))(v17, v43);
    }

    v48 = v54;
    sub_2688E3AD8();

    sub_2688C058C(v46, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v55 + 8))(v48, v57);
    v49 = *__swift_project_boxed_opaque_existential_1(v35 + 13, v35[16]);
    sub_26894B450();
    v62[0] = v32;
    v63 = 1;
    v50 = v32;
    v60(v62);

    return sub_2688C058C(v62, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v31, v27);
    v36 = a2[22];
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v37 = sub_268B36FA4();
    sub_2688F1FA4(v27, v25, &unk_2802A56E0, &unk_268B3CDF0);
    v38 = *&v25[*(v21 + 48)];
    if (v37)
    {
      sub_2689E729C();
    }

    else
    {
      sub_2689E7A1C();
    }

    sub_2688C058C(v27, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = sub_268B350F4();
    return (*(*(v39 - 8) + 8))(v25, v39);
  }
}

void sub_2689E729C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v100 = v3;
  v101 = v4;
  v94 = v5;
  v109 = v6;
  v110 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v99 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v93 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v97 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  v105 = v89 - v26;
  OUTLINED_FUNCTION_9();
  v106 = sub_268B34E24();
  v27 = OUTLINED_FUNCTION_1(v106);
  v104 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v103 = v32 - v31;
  OUTLINED_FUNCTION_9();
  v33 = sub_268B37A54();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v95 = v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v42 = OUTLINED_FUNCTION_4(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v98 = v45;
  OUTLINED_FUNCTION_8();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = v89 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = OUTLINED_FUNCTION_27_4();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v0, v109, v50);
  v107 = v41;
  v52 = *(v41 + 48);
  v109 = v0;
  *(v0 + v52) = v9;
  v53 = qword_2802A4F30;
  v54 = v9;
  if (v53 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v55 = __swift_project_value_buffer(v33, qword_2802CDA10);
  v91 = *(v36 + 16);
  v92 = v55;
  v108 = v33;
  (v91)(v1);
  v56 = sub_268B37A34();
  v57 = sub_268B37ED4();
  v58 = os_log_type_enabled(v56, v57);
  v102 = v51;
  if (v58)
  {
    v59 = OUTLINED_FUNCTION_14();
    *v59 = 0;
    _os_log_impl(&dword_2688BB000, v56, v57, "WhatDidTheySayHandleIntentStrategy#intentHandledResponse...", v59, 2u);
    v51 = v102;
    OUTLINED_FUNCTION_12();
  }

  v60 = *(v36 + 8);
  v96 = v36 + 8;
  v90 = v60;
  v60(v1, v108);
  OUTLINED_FUNCTION_12_14();
  sub_268947F08();
  v89[1] = v61;
  v62 = __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  (*(v104 + 104))(v103, *MEMORY[0x277D5BC10], v106);
  sub_2688F1FA4(v109, v49, &unk_2802A56E0, &unk_268B3CDF0);

  v63 = v105;
  (*(v51 + 32))(v105, v49, v50);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v50);
  v67 = sub_268B34B94();
  v68 = v93;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v67);
  v69 = *v62;
  v70 = v63;
  v71 = v97;
  sub_2688F1FA4(v70, v97, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v71, 1, v50) == 1)
  {
    sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v51 + 8))(v71, v50);
  }

  v97 = v50;
  v72 = v103;
  v73 = v110;
  sub_2688E3AD8();

  sub_2688C058C(v68, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v105, &unk_2802A57B0, &unk_268B3CE00);
  (*(v104 + 8))(v72, v106);
  OUTLINED_FUNCTION_10_15();
  sub_268948308(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_5_10();
  sub_26894B450();
  v74 = v95;
  v75 = v108;
  v91(v95, v92, v108);
  v76 = sub_268B37A34();
  v77 = sub_268B37ED4();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_14();
    *v78 = 0;
    _os_log_impl(&dword_2688BB000, v76, v77, "WhatDidTheySayHandleIntentStrategy#intentHandledResponse returning output", v78, 2u);
    OUTLINED_FUNCTION_12();
  }

  v90(v74, v75);
  v79 = v2[36];
  v80 = v2[37];
  __swift_project_boxed_opaque_existential_1(v2 + 33, v79);
  v81 = v109;
  v82 = v98;
  sub_2688F1FA4(v109, v98, &unk_2802A56E0, &unk_268B3CDF0);
  v83 = *(v82 + *(v107 + 48));
  v84 = v99;
  sub_268A82B50(v73, v99);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  (*(v80 + 8))(v82, v83, v84, MEMORY[0x277D84F90], 1, v100, v101, v79, v80);

  sub_2688C058C(v84, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v81, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v102 + 8))(v82, v97);
  OUTLINED_FUNCTION_23();
}

void sub_2689E7A1C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v100 = v4;
  v101 = v3;
  v98 = v5;
  v93 = v6;
  v94 = v7;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v96 = v16;
  OUTLINED_FUNCTION_9();
  v99 = sub_268B35044();
  v17 = OUTLINED_FUNCTION_1(v99);
  v97 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v95 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  v92 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v91 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v104 = &v89 - v34;
  OUTLINED_FUNCTION_9();
  v105 = sub_268B34E24();
  v35 = OUTLINED_FUNCTION_1(v105);
  v103 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v102 = v40 - v39;
  OUTLINED_FUNCTION_9();
  v41 = sub_268B37A54();
  v42 = OUTLINED_FUNCTION_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = OUTLINED_FUNCTION_27_4();
  v90 = *(v57 - 8);
  (*(v90 + 16))(v0, v11, v57);
  v58 = *(v50 + 48);
  v106 = v0;
  *(v0 + v58) = v9;
  v59 = qword_2802A4F30;
  v60 = v9;
  if (v59 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v61 = __swift_project_value_buffer(v41, qword_2802CDA10);
  (*(v44 + 16))(v49, v61, v41);
  v62 = sub_268B37A34();
  v63 = sub_268B37ED4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_14();
    *v64 = 0;
    _os_log_impl(&dword_2688BB000, v62, v63, "WhatDidTheySayHandleIntentStrategy#legacyHandledResponse...", v64, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v44 + 8))(v49, v41);
  OUTLINED_FUNCTION_12_14();
  v65 = v94;
  sub_268947F08();
  v89 = v66;
  v67 = __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  (*(v103 + 104))(v102, *MEMORY[0x277D5BC10], v105);
  sub_2688F1FA4(v106, v56, &unk_2802A56E0, &unk_268B3CDF0);

  v68 = v90;
  v69 = v104;
  (*(v90 + 32))(v104, v56, v57);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v57);
  v73 = sub_268B34B94();
  v74 = v92;
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v73);
  v75 = *v67;
  v76 = v91;
  sub_2688F1FA4(v69, v91, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v76, 1, v57) == 1)
  {
    sub_2688C058C(v76, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v68 + 8))(v76, v57);
  }

  v77 = v95;
  v78 = v102;
  sub_2688E3AD8();

  sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v104, &unk_2802A57B0, &unk_268B3CE00);
  (*(v103 + 8))(v78, v105);
  OUTLINED_FUNCTION_10_15();
  sub_268948308(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_5_10();
  sub_26894B450();
  sub_268A82B50(v65, v77);
  v109[3] = sub_268B354F4();
  v109[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v109);
  v79 = 0;
  if (sub_2689F0948())
  {
    v79 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v80 = sub_268B38064();
    [v79 setMinimumAutoDismissalTimeInMs_];

    [v79 setPremptivelyResumeMedia_];
  }

  v81 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_268B34CA4();
  v82 = v97;
  v83 = v96;
  v84 = v99;
  (*(v97 + 16))(v96, v77, v99);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  v88 = v106;
  sub_268B34EF4();

  sub_2688C058C(v107, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v83, &qword_2802A57F0, &qword_268B3DDB0);
  v110 = 0;
  v101(v109);
  (*(v82 + 8))(v77, v84);
  sub_2688C058C(v88, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v109, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}