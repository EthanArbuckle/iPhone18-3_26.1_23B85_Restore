uint64_t sub_268A989D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A98A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A98A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A98AD4()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A98B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A98B8C()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A98BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A98C44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A98CA8()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A98D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A98D70(uint64_t a1)
{
  result = sub_268A98E1C(&qword_2802A7C98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A98E1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36154();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A98E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (*(a2 + 8))();
  v5 = sub_26892E388([v3 unsupportedReason], v4);

  if (v5 == 3)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268A99158(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7CB0, &unk_268B4A3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBD0;
  *(inited + 32) = 1;
  *(inited + 40) = 1;
  *(inited + 48) = 2;
  *(inited + 56) = 0;
  result = sub_268B37B84();
  *a2 = result;
  return result;
}

uint64_t sub_268A99540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7CB0, &unk_268B4A3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = a2;
  *(inited + 40) = 0;
  result = sub_268B37B84();
  *a3 = result;
  return result;
}

uint64_t sub_268A995E0(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

_BYTE *storeEnumTagSinglePayload for CommonUnsupportedReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A99758);
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

unint64_t sub_268A99794()
{
  result = qword_2802A7CB8;
  if (!qword_2802A7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7CB8);
  }

  return result;
}

uint64_t sub_268A99804(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v74 = a8;
  v71 = a5;
  v72 = a7;
  v66 = a6;
  v67 = a2;
  v69 = a3;
  v70 = a4;
  v68 = a1;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v64 = v10;
  v65 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v26 = *(v17 + 16);
  v26(v24, v25, v14);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput()", v30, 2u);
    v31 = v30;
    v22 = v29;
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v32 = *(v17 + 8);
  v32(v24, v14);
  sub_268B36754();
  v33 = sub_268B36734();
  if (!v33)
  {
    v33 = sub_268B36744();
  }

  v34 = v33;
  v26(v22, v25, v14);

  v35 = sub_268B37A34();
  v36 = sub_268B37ED4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v62 = v22;
    v38 = v37;
    v39 = swift_slowAlloc();
    v61 = v32;
    v40 = v39;
    v75 = v39;
    *v38 = 136315138;
    sub_268B36714();
    v41 = v63;
    sub_268B36B14();

    v42 = sub_268B36784();
    v44 = v43;
    (*(v64 + 8))(v41, v65);
    v45 = sub_26892CDB8(v42, v44, &v75);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_2688BB000, v35, v36, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26D6266E0](v40, -1, -1);
    MEMORY[0x26D6266E0](v38, -1, -1);

    v61(v62, v14);
  }

  else
  {

    v32(v22, v14);
  }

  v46 = swift_allocObject();
  v48 = v69;
  v47 = v70;
  v46[2] = v34;
  v46[3] = v48;
  v49 = v66;
  v50 = v67;
  v46[4] = v47;
  v46[5] = v50;
  v52 = v72;
  v51 = v73;
  v46[6] = v49;
  v46[7] = v51;
  v46[8] = v68;
  v46[9] = v52;
  v53 = v74;
  v46[10] = v74;
  swift_retain_n();
  v54 = v49;
  swift_retain_n();
  v55 = v54;

  v56 = v55;

  v57 = v50;

  sub_2689FB67C(v58, v57, v48, v47, v71, v56, v51, v52, v53, v56, v51, sub_268A9AA34, v46);
}

uint64_t sub_268A99D88(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v103 = a8;
  v90 = a7;
  v98 = a6;
  v88 = a5;
  v99 = a4;
  v87 = a3;
  v85 = a2;
  v94 = a1;
  v102 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v81 - v11;
  v12 = sub_268B37A54();
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = *(v100 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v97 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = &v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v86 = &v81 - v24;
  v25 = sub_268B34E24();
  v95 = *(v25 - 8);
  v26 = *(v95 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v91 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v81 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v81 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v81 - v40;
  sub_268935590(v94, &v81 - v40, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v41, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = v101;
    v43 = __swift_project_value_buffer(v101, qword_2802CDA10);
    v44 = v100;
    (*(v100 + 16))(v97, v43, v42);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v97, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -81;
    v104[0] = v48;
    v105 = 1;
    v103(v104);
    return sub_2688EF38C(v104, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    sub_2688E1C2C();
    v83 = v51;
    v84 = v52;
    v53 = __swift_project_boxed_opaque_existential_1(v98 + 13, v98[16]);
    v54 = *MEMORY[0x277D5BBE0];
    v55 = *(v95 + 104);
    v87 = v28;
    v88 = v25;
    v55(v28, v54, v25);
    sub_268935590(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v97 = v29;

    v56 = sub_268B350F4();
    v57 = *(v56 - 8);
    v58 = v86;
    (*(v57 + 32))(v86, v35, v56);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v56);
    v59 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v59);
    v60 = *v53;
    v61 = v89;
    sub_268935590(v58, v89, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v56);
    v85 = v37;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v61, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v57 + 8))(v61, v56);
    }

    v82 = v57;
    v94 = v56;
    v63 = v87;
    v64 = v96;
    sub_2688E3AD8();

    sub_2688EF38C(v64, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v58, &unk_2802A57B0, &unk_268B3CE00);
    (*(v95 + 8))(v63, v88);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v65 = v101;
    v66 = __swift_project_value_buffer(v101, qword_2802CDA10);
    v67 = v100;
    v68 = v92;
    (*(v100 + 16))(v92, v66, v65);
    v69 = sub_268B37A34();
    v70 = sub_268B37ED4();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v98;
    if (v71)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2688BB000, v69, v70, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v73, 2u);
      MEMORY[0x26D6266E0](v73, -1, -1);
    }

    (*(v67 + 8))(v68, v65);
    v74 = v72[21];
    v75 = v72[22];
    __swift_project_boxed_opaque_existential_1(v72 + 18, v74);
    v76 = v85;
    v77 = v91;
    sub_268935590(v85, v91, &unk_2802A56E0, &unk_268B3CDF0);
    v78 = *(v77 + *(v97 + 12));
    v79 = v93;
    sub_268A82B50(v99, v93);
    v80 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
    (*(v75 + 40))(v77, v78, v79, v103, v102, v74, v75);

    sub_2688EF38C(v79, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v76, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v82 + 8))(v77, v94);
  }
}

uint64_t sub_268A9A74C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4)
{
  sub_268935590(a1, v14, &unk_2802A57C0, &qword_268B3BE00);
  v7 = v15;
  sub_2688EF38C(v14, &unk_2802A57C0, &qword_268B3BE00);
  if (v7 != 1)
  {
    return a2(a1);
  }

  v8 = WhatDidTheySayDeviceUnsupportedReason.init(rawValue:)([a4 unsupportedReason]);
  if (v9)
  {
    goto LABEL_3;
  }

  if ((v8 - 2) >= 2)
  {
    if (v8 == 1)
    {
      sub_2688C2ECC();
      v10 = swift_allocError();
      v12 = -106;
      goto LABEL_4;
    }

LABEL_3:
    sub_2688C2ECC();
    v10 = swift_allocError();
    v12 = -105;
LABEL_4:
    *v11 = v12;
    v14[0] = v10;
    v15 = 1;
    a2(v14);
    return sub_2688EF38C(v14, &unk_2802A57C0, &qword_268B3BE00);
  }

  sub_268B37B84();
  sub_268A367E4();
}

uint64_t sub_268A9A8F4()
{
  v0 = sub_2689FD340();
  sub_26895F84C((v0 + 23));

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for WhatDidTheySayUnsupportedValueStrategy()
{
  result = qword_2802A7CC0;
  if (!qword_2802A7CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A9A9CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268A9AA34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  return sub_268A99CCC();
}

uint64_t sub_268A9AAA8(uint64_t a1)
{
  v2 = sub_268B35494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v51 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  v50 = type metadata accessor for SettingsIntent();
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2();
  v49 = v14;
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v48 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v46 = *(v18 + 16);
  v47 = v25;
  v46(v24);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = v5;
    v29 = v2;
    v30 = v15;
    v31 = v18;
    v32 = a1;
    v33 = v28;
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "GetVolumeLevel.shouldHandle() called", v28, 2u);
    v34 = v33;
    a1 = v32;
    v18 = v31;
    v15 = v30;
    v2 = v29;
    v5 = v45;
    MEMORY[0x26D6266E0](v34, -1, -1);
  }

  v35 = *(v18 + 8);
  v35(v24, v15);
  v36 = v51;
  (*(v5 + 16))(v51, a1, v2);
  sub_26897BBA8(v36, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v50) == 1)
  {
    sub_26891E52C(v12);
    return 0;
  }

  else
  {
    v37 = v49;
    sub_26891E594(v12, v49);
    switch(*v37)
    {
      case 1:
      case 2:
      case 3:
        v38 = sub_268B38444();

        if (v38)
        {
          break;
        }

        v40 = v48;
        (v46)(v48, v47, v15);
        v41 = sub_268B37A34();
        v42 = sub_268B37EE4();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2688BB000, v41, v42, "Incorrect verb in intent for flow, ignoring input", v43, 2u);
          MEMORY[0x26D6266E0](v43, -1, -1);
        }

        v35(v40, v15);
        sub_26891E5F8(v37);
        return 0;
      case 4:
        break;
      default:

        break;
    }

    sub_26891E5F8(v37);
    return 1;
  }
}

Swift::String_optional __swiftcall UsoTask_shuffle_uso_NoEntity.verb()()
{
  v0 = 0x656C6666756873;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_shuffle_uso_NoEntity.referencedSetting()()
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

uint64_t sub_268A9B074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A9B0C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A9B11C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A9B170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A9B1C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A9B218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A9B26C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A9B2C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A9B324()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A9B378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A9B3DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A9B440()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A9B4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A9B508(uint64_t a1)
{
  result = sub_268A9B5B4(&qword_2802A7CD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A9B5B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35FA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_268A9B5F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v49 = v11;
  v14 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v15 = v5[2];
  v51 = v14;
  v52 = v15;
  (v15)(v13);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "QuickStopNothingToStopFlow#execute generating dialog and sending a stop command to the local device just in case...", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  v53 = v5[1];
  v54 = v5 + 1;
  v53(v13, v4);
  type metadata accessor for DeviceSelectingUtil();
  v19 = sub_268901CD4(0, v3[22]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  inited = swift_initStackObject();
  v50 = xmmword_268B3BBA0;
  *(inited + 16) = xmmword_268B3BBA0;
  *(inited + 32) = v19;
  v21 = v19;
  sub_268A32010();
  swift_setDeallocating();
  sub_268ACE718();
  v22 = v3[27];
  __swift_project_boxed_opaque_existential_1(v3 + 23, v3[26]);
  v23 = swift_initStackObject();
  *(v23 + 16) = v50;
  *(v23 + 32) = v21;
  v24 = v21;
  sub_268921344();
  swift_setDeallocating();
  sub_268ACE718();
  sub_268B36E34();

  v25 = *__swift_project_boxed_opaque_existential_1(v3 + 28, v3[31]);
  v26 = COERCE_DOUBLE(sub_2688F2F10());
  if ((v27 & 1) == 0)
  {
    v34 = v26;
    v35 = v26;
    v31 = v26 >= 30.0;
    v33 = v49;
    v52(v49, v51, v4);
    v29 = sub_268B37A34();
    v36 = sub_268B37F04();
    if (!os_log_type_enabled(v29, v36))
    {
      goto LABEL_12;
    }

    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = v34;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v35 >= 30.0;
    _os_log_impl(&dword_2688BB000, v29, v36, "QuickStopNothingToStopFlow#execute nothingToStop has occurred %f seconds ago. isSilent = %{BOOL}d", v32, 0x12u);
    goto LABEL_10;
  }

  v28 = v48;
  v52(v48, v51, v4);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  v31 = 1;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = 1;
    _os_log_impl(&dword_2688BB000, v29, v30, "QuickStopNothingToStopFlow#execute This is the first nothingToStop. isSilent = %{BOOL}d", v32, 8u);
    v33 = v28;
LABEL_10:
    MEMORY[0x26D6266E0](v32, -1, -1);
    goto LABEL_12;
  }

  v33 = v28;
LABEL_12:

  v53(v33, v4);
  OUTLINED_FUNCTION_0_46();
  v37 = sub_268B34D24();
  OUTLINED_FUNCTION_0_46();
  v38 = sub_268B34C84();
  OUTLINED_FUNCTION_0_46();
  v39 = sub_268B34C74();
  v40 = swift_allocObject();
  *(v40 + 16) = v3;
  *(v40 + 24) = v31;
  v41 = v56;
  *(v40 + 32) = v55;
  *(v40 + 40) = v41;
  if (v31)
  {
    v42 = v3[15];
    v43 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v42);

    v44 = sub_268B37B84();
    (*(v43 + 8))(0xD00000000000001DLL, 0x8000000268B5C260, v44, 1, sub_268A9C650, v40, v42, v43);
  }

  else
  {
    if (v39)
    {
      v45 = 0x10000;
    }

    else
    {
      v45 = 0;
    }

    if (v38)
    {
      v46 = 256;
    }

    else
    {
      v46 = 0;
    }

    sub_268910850(v46 & 0xFFFFFFFE | v37 & 1 | v45, sub_268A9C650, v40);
  }

  v47 = *__swift_project_boxed_opaque_existential_1(v3 + 28, v3[31]);
  sub_2688F30FC();
}

uint64_t sub_268A9BC0C(uint64_t a1, void *a2, int a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v70 = a5;
  v71 = a4;
  v64 = a3;
  v66 = a2;
  v72 = sub_268B34F84();
  v69 = *(v72 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v68 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_268B37A54();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v65 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v63[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v63[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v63[-v23];
  sub_2688F1FA4(a1, &v63[-v23], &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v66;
    sub_2688C058C(v24, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v26 = v67;
    v27 = __swift_project_value_buffer(v67, qword_2802CDA10);
    (*(v8 + 16))(v13, v27, v26);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "QuickStopNothingToStopFlow#execute DialogEngine returned an error", v30, 2u);
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    (*(v8 + 8))(v13, v26);
    v31 = __swift_project_boxed_opaque_existential_1(v25 + 17, v25[20]);
    sub_2688C2ECC();
    v32 = swift_allocError();
    *v33 = 15;
    v34 = *v31;
    sub_26894B450();

    sub_268947F08();
    v36 = v35;
    v38 = v37;
    v39 = *__swift_project_boxed_opaque_existential_1(v25 + 17, v25[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 4, 59, 0, 0, 0, v36, v38);

    v40 = v68;
    sub_268B34F64();
    v71(v40);
    return (*(v69 + 8))(v40, v72);
  }

  else
  {
    sub_2689186C8(v24, v20);
    sub_2688F1FA4(v20, v18, &unk_2802A56E0, &unk_268B3CDF0);
    v42 = *&v18[*(v14 + 48)];
    v43 = v64;
    v44 = v66;
    v45 = sub_268A9C36C(v18, v42, v64 & 1);

    v46 = sub_268B350F4();
    (*(*(v46 - 8) + 8))(v18, v46);
    v47 = v44;
    if (sub_2688EFD0C(v45))
    {
      v48 = v44[6];
      __swift_project_boxed_opaque_existential_1(v44 + 2, v44[5]);
      sub_268B35114();
    }

    v49 = v67;
    v50 = v65;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v49, qword_2802CDA10);
    (*(v8 + 16))(v50, v51, v49);
    v52 = sub_268B37A34();
    v53 = sub_268B37F04();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "QuickStopNothingToStopFlow#execute dialog generated successfully", v54, 2u);
      MEMORY[0x26D6266E0](v54, -1, -1);
    }

    (*(v8 + 8))(v50, v49);
    v55 = *__swift_project_boxed_opaque_existential_1(v47 + 17, v47[20]);
    sub_26894B450();
    if (v43)
    {
      v56 = 22;
    }

    else
    {
      v56 = 21;
    }

    sub_26894BC08(v56);
    sub_268947F08();
    v58 = v57;
    v60 = v59;

    v61 = *__swift_project_boxed_opaque_existential_1(v47 + 17, v47[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 2, 1, 0, 0, 0, v58, v60);

    v62 = v68;
    sub_268B34F64();
    v71(v62);
    (*(v69 + 8))(v62, v72);
    return sub_2688C058C(v20, &unk_2802A56E0, &unk_268B3CDF0);
  }
}

uint64_t sub_268A9C36C(uint64_t a1, void *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v12);
  (*(v13 + 16))(v11, a1);
  *&v11[*(v8 + 56)] = a2;
  if (a3)
  {
    v14 = a2;
    v15 = sub_268AAC1F4(v3 + 7);
  }

  else
  {
    v16 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v17 = a2;
    sub_268B34CA4();
    v18 = sub_268B34E14();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_268B34E04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_268B3BBA0;
    *(v15 + 32) = sub_268B34DF4();
  }

  sub_2688C058C(v11, &unk_2802A56E0, &unk_268B3CDF0);
  return v15;
}

uint64_t *sub_268A9C50C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_2689198BC((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  return v0;
}

uint64_t sub_268A9C55C()
{
  sub_268A9C50C();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_268A9C5D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for QuickStopNothingToStopFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_268A9C610()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_268A9C688(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t OUTLINED_FUNCTION_0_46()
{
  v1 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  return v1;
}

uint64_t ControlsFlowProviding.makeFlow(for:)()
{
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_139(v4);
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37EE4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "ControlsFlowProviding#makeFlow default implementation should not be used", v11, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v4 + 8))(v0, v1);
  return 0;
}

uint64_t ControlsFlowProviding.findFlowFor(parse:)()
{
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_139(v4);
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37EE4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "ControlsFlowProviding#findFlowFor default implementation should not be used", v11, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v4 + 8))(v0, v1);
  return sub_268B34AB4();
}

void sub_268A9CA20(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char a7)
{
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v11, qword_2802CDA10);
  v17 = OUTLINED_FUNCTION_139(v14);
  v18(v17);
  v19 = sub_268B37A34();
  v20 = sub_268B37EE4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, a6, v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v14 + 8))(v7, v11);
  sub_2688C2ECC();
  v22 = swift_allocError();
  *v23 = a7;
  a2(v22, 1);
}

void ControlsFlowProviding.makeResumeAppFlow(for:with:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  v11 = OUTLINED_FUNCTION_139(v8);
  v12(v11);
  v13 = sub_268B37A34();
  v14 = sub_268B37EE4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_14();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "ControlsFlowProviding#makeResumeAppFlow default implementation should not be used", v15, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v8 + 8))(v3, v5);
  sub_2688C2ECC();
  v16 = swift_allocError();
  *v17 = -62;
  a3(v16, 1);
}

void sub_268A9CE64(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ((sub_268983434() & 1) != 0 && (v11 = sub_268A3239C(), v12))
  {
    v13 = v11;
    v14 = v12;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v5, qword_2802CDA10);
    (*(v6 + 16))(v9, v15, v5);

    v16 = sub_268B37A34();
    v17 = sub_268B37F04();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29[0] = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29[1] = v2;
      v21 = v20;
      v30 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26892CDB8(v13, v14, &v30);
      _os_log_impl(&dword_2688BB000, v16, v17, "Local SideKick device, using endpointId: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x26D6266E0](v21, -1, -1);
      v22 = v19;
      a2 = v29[0];
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v23 = [v10 context];
    if (v23 && (v24 = sub_268B0F784(v23), v25))
    {
      v13 = v24;
      v14 = v25;
    }

    else
    {
      v26 = [v10 routeId];
      if (v26)
      {
        v27 = v26;
        v13 = sub_268B37BF4();
        v14 = v28;
      }

      else
      {

        v13 = 0;
        v14 = 0;
      }
    }
  }

  *a2 = v13;
  a2[1] = v14;
}

uint64_t sub_268A9D17C(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  a2();
  if (!v5)
  {
    a3(a1);
    if (!v6)
    {
      return 6;
    }
  }

  return sub_2689ABD04();
}

void sub_268A9D328()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v47 = sub_268B358D4();
  v5 = OUTLINED_FUNCTION_1(v47);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v43 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  if (!v4(v14))
  {
    goto LABEL_31;
  }

  v17 = OUTLINED_FUNCTION_9_25();

  if (!v17)
  {
    goto LABEL_31;
  }

  v44 = *(v17 + 16);
  if (!v44)
  {
LABEL_30:

LABEL_31:
    OUTLINED_FUNCTION_23();
    return;
  }

  v41 = v16;
  v18 = 0;
  OUTLINED_FUNCTION_1_50();
  v20 = v17 + v19;
  v45 = v7 + 16;
  v46 = v17;
  v42 = v7 + 8;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v21 = OUTLINED_FUNCTION_13_20();
    v4(v21);
    sub_268B358C4();
    if (!v22)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_28_6();
    if (v25 == v24 + 1 && v23 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_25_17();
    OUTLINED_FUNCTION_24_16();
    if (v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v18;
    (*(v7 + 8))(v0, v47);
    v17 = v46;
    if (v44 == v18)
    {
      goto LABEL_30;
    }
  }

LABEL_16:
  v27 = v47;
  (*(v7 + 32))(v41, v0, v47);
  v28 = 0;
  v29 = v43;
  v42 = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (v28 < *(v46 + 16))
  {
    (v4)(v29, v20, v27);
    sub_268B358C4();
    if (v30)
    {
      OUTLINED_FUNCTION_28_6();
      if (v32 == v33 && v31 == 0x8000000268B580B0)
      {

        v39 = OUTLINED_FUNCTION_10_25();
        v27 = v47;
        v2(v39, v47);
LABEL_29:
        v2(v41, v27);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_30();
      v35 = sub_268B38444();

      v36 = OUTLINED_FUNCTION_10_25();
      v27 = v47;
      v2(v36, v47);
      if (v35)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v37 = OUTLINED_FUNCTION_10_25();
      v2(v37, v27);
    }

    ++v28;
    v20 += v17;
    if (v44 == v28)
    {

      sub_268B358B4();
      v38 = OUTLINED_FUNCTION_20_19();
      (v2)(v38);
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_268A9D65C()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v46 = sub_268B358D4();
  v5 = OUTLINED_FUNCTION_1(v46);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v42 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v4(&v47, v14);
  if (!v47)
  {
    goto LABEL_31;
  }

  v17 = OUTLINED_FUNCTION_9_25();

  if (!v17)
  {
    goto LABEL_31;
  }

  v43 = *(v17 + 16);
  if (!v43)
  {
LABEL_30:

LABEL_31:
    OUTLINED_FUNCTION_23();
    return;
  }

  v40 = v16;
  v18 = 0;
  OUTLINED_FUNCTION_1_50();
  v20 = v17 + v19;
  v44 = v7 + 16;
  v45 = v17;
  v41 = v7 + 8;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v21 = OUTLINED_FUNCTION_13_20();
    (v4)(v21);
    sub_268B358C4();
    if (!v22)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_28_6();
    if (v25 == v24 + 1 && v23 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_25_17();
    OUTLINED_FUNCTION_24_16();
    if (v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v18;
    (*(v7 + 8))(v0, v46);
    v17 = v45;
    if (v43 == v18)
    {
      goto LABEL_30;
    }
  }

LABEL_16:
  v27 = v46;
  (*(v7 + 32))(v40, v0, v46);
  v28 = 0;
  v29 = v42;
  v41 = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (v28 < *(v45 + 16))
  {
    (v4)(v29, v20, v27);
    sub_268B358C4();
    if (v30)
    {
      OUTLINED_FUNCTION_28_6();
      if (v32 == v33 && v31 == 0x8000000268B580B0)
      {

        v39 = OUTLINED_FUNCTION_10_25();
        v27 = v46;
        v2(v39, v46);
LABEL_29:
        v2(v40, v27);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_30();
      v35 = sub_268B38444();

      v36 = OUTLINED_FUNCTION_10_25();
      v27 = v46;
      v2(v36, v46);
      if (v35)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v37 = OUTLINED_FUNCTION_10_25();
      v2(v37, v27);
    }

    ++v28;
    v20 += v17;
    if (v43 == v28)
    {

      sub_268B358B4();
      v38 = OUTLINED_FUNCTION_20_19();
      (v2)(v38);
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_268A9D994()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = sub_268B358D4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_11_28();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v33 - v14;
  v16 = v5(v13);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = OUTLINED_FUNCTION_9_25();

  if (!v17)
  {
    goto LABEL_15;
  }

  v37 = *(v17 + 16);
  if (!v37)
  {

LABEL_15:
    v30 = v5(v16);
LABEL_16:
    if (v30)
    {
      sub_268B35D94();
    }

LABEL_21:
    OUTLINED_FUNCTION_23();
    return;
  }

  v34 = v5;
  v35 = v15;
  v33[1] = v0;
  OUTLINED_FUNCTION_1_50();
  v36 = v17 + v18;
  while (*(v17 + 16))
  {
    v19 = *(v9 + 72);
    v20 = OUTLINED_FUNCTION_22_18();
    v21(v20);
    sub_268B358C4();
    if (v22)
    {
      OUTLINED_FUNCTION_28_6();
      if (v24 == v25 && v23 == v2)
      {

LABEL_20:

        (*(v9 + 32))(v35, v1, v6);
        sub_268B358B4();
        v31 = OUTLINED_FUNCTION_12_24();
        v32(v31);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_25_17();
      OUTLINED_FUNCTION_24_16();
      if (v3)
      {
        goto LABEL_20;
      }
    }

    v27 = OUTLINED_FUNCTION_21_17();
    v28(v27);
    if (!v37)
    {

      v30 = v34(v29);
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_268A9DBC0()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = sub_268B358D4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_11_28();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v31 - v14;
  v16 = v5(&v35, v13);
  if (!v35 || (v17 = OUTLINED_FUNCTION_9_25(), v16 = , !v17))
  {
LABEL_14:
    v5(&v35, v16);
    if (v35)
    {
      sub_268B35D94();
    }

LABEL_19:
    OUTLINED_FUNCTION_23();
    return;
  }

  v31[0] = v15;
  v31[1] = v0;
  v32 = v5;
  v34 = *(v17 + 16);
  if (!v34)
  {
LABEL_13:

    v5 = v32;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_50();
  v33 = v17 + v18;
  while (*(v17 + 16))
  {
    v19 = *(v9 + 72);
    v20 = OUTLINED_FUNCTION_22_18();
    v21(v20);
    sub_268B358C4();
    if (v22)
    {
      OUTLINED_FUNCTION_28_6();
      if (v24 == v25 && v23 == v2)
      {

LABEL_18:

        (*(v9 + 32))(v31[0], v1, v6);
        sub_268B358B4();
        v29 = OUTLINED_FUNCTION_12_24();
        v30(v29);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_25_17();
      OUTLINED_FUNCTION_24_16();
      if (v3)
      {
        goto LABEL_18;
      }
    }

    v27 = OUTLINED_FUNCTION_21_17();
    v28(v27);
    if (!v34)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::String_optional __swiftcall UsoTask_enable_common_Setting.verb()()
{
  if (sub_268A9DE98() == 3)
  {
    if (sub_2689B83B8() == 5)
    {
      sub_268B36334();
      if (v6 && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
      {
        v3 = sub_26893E3F8(v1);
      }

      else
      {
        v3 = 0;
        v4 = 0;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      v3 = 0x656C62616E65;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7628147;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_268A9DE98()
{
  v0 = OUTLINED_FUNCTION_6_36();
  if (sub_268A9D17C(v0, sub_268A9D65C, sub_268A9DBC0) >= 3u)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268A9DF14()
{
  v0 = OUTLINED_FUNCTION_6_36();
  v1 = sub_268A9D17C(v0, sub_268A9D65C, sub_268A9DBC0);
  if (v1 >= 3u)
  {
    return 7;
  }

  else
  {
    return 0x60605u >> (8 * v1);
  }
}

void UsoTask_enable_common_Setting.shouldHandle(requestContext:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v49 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_28();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  v21 = sub_268B36334();
  if (v49[1])
  {
    sub_2689633E8();
    if (v22)
    {
      if (qword_2802A4F30 != -1)
      {
        v22 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_28(v22, qword_2802CDA10);
      v23(v20);
      v24 = sub_268B37A34();
      v25 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v25))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v26, v27, "UsoTask_enable_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls");
        OUTLINED_FUNCTION_12();
      }

      v28 = 0;
    }

    else
    {
      sub_268964334();
      if ((v33 & 1) != 0 && (sub_268963658(), (v34 & 1) == 0))
      {
        if (qword_2802A4F30 != -1)
        {
          v34 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_28(v34, qword_2802CDA10);
        v44(v1);
        v45 = sub_268B37A34();
        v46 = sub_268B37F04();
        if (OUTLINED_FUNCTION_2_19(v46))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_22_6(&dword_2688BB000, v47, v48, "UsoTask_enable_common_Setting#shouldHandle Task is media. Handling in controls");
          OUTLINED_FUNCTION_12();
        }

        v28 = 1;
        v20 = v1;
      }

      else
      {
        sub_268963658();
        if (v35)
        {
          if (qword_2802A4F30 != -1)
          {
            v35 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_1_28(v35, qword_2802CDA10);
          v36(v0);
          v37 = sub_268B37A34();
          v38 = sub_268B37F04();
          if (OUTLINED_FUNCTION_2_19(v38))
          {
            v39 = OUTLINED_FUNCTION_14();
            *v39 = 0;
            _os_log_impl(&dword_2688BB000, v37, v16, "UsoTask_enable_common_Setting#shouldHandle Task is settings. Handling in controls", v39, 2u);
            OUTLINED_FUNCTION_12();
          }

          v28 = 2;
          v20 = v0;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v35 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_1_28(v35, qword_2802CDA10);
          v40(v16);
          v41 = sub_268B37A34();
          v42 = sub_268B37EE4();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = OUTLINED_FUNCTION_14();
            *v43 = 0;
            _os_log_impl(&dword_2688BB000, v41, v42, "UsoTask_enable_common_Setting#shouldHandle Task is not mediaPlayer/media/setting: Not handling in controls", v43, 2u);
            OUTLINED_FUNCTION_12();
          }

          v28 = 3;
          v20 = v16;
        }
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v21 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_28(v21, qword_2802CDA10);
    v29(v12);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_14();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "UsoTask_enable_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v32, 2u);
      OUTLINED_FUNCTION_12();
    }

    v28 = 3;
    v20 = v12;
  }

  (*(v7 + 8))(v20, v4);
  *v3 = v28;
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A9E4C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A9E514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A9E568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A9E5BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A9E610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A9E664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A9E6B8()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A9E70C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A9E770()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A9E7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A9E828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A9E88C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A9E8F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A9E954(uint64_t a1)
{
  result = sub_268A9EA00(&qword_2802A7D40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A9EA00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35FF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_25()
{

  return sub_268B35BC4();
}

uint64_t OUTLINED_FUNCTION_13_20()
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_16()
{
}

uint64_t OUTLINED_FUNCTION_25_17()
{

  return sub_268B38444();
}

id sub_268A9EB64()
{
  result = [objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentHandler()) init];
  qword_2802CDB08 = result;
  return result;
}

uint64_t sub_268A9EB98()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_268AA0C2C(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CDB10 = result;
  return result;
}

uint64_t sub_268A9EDEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v73 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v65 = v4;
  v66 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v64 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  v74 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v64 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v67 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v64 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v64 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SetAudioLanguageFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v74;
  v40 = v72;
  sub_268B35414();
  sub_26892E9C4(v39, 1, v20);
  v41 = type metadata accessor for MediaIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_268A03080(v20);
  if (v39 == 1)
  {
    v42 = v67;
    v34(v67, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SetAudioLanguageFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_6();
    return sub_268B34ED4();
  }

  else
  {
    v67 = (v24 + 8);
    v47 = v71;
    sub_268B35414();
    v49 = v69;
    v48 = v70;
    v50 = (*(v69 + 88))(v47, v70);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v68, v33, v21);
      v52 = v64;
      v53 = v65;
      v54 = v66;
      (*(v65 + 16))(v64, v40, v66);
      v55 = sub_268B37A34();
      v56 = sub_268B37EE4();
      if (os_log_type_enabled(v55, v56))
      {
        v58 = v52;
        v59 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v75 = v72;
        *v59 = 136315138;
        sub_268B35414();
        v60 = sub_268B37C24();
        v62 = v61;
        (*(v53 + 8))(v58, v54);
        v63 = sub_26892CDB8(v60, v62, &v75);
        v48 = v70;

        *(v59 + 4) = v63;
        _os_log_impl(&dword_2688BB000, v55, v56, "SetAudioLanguageFlowStrategy#actionForInput received unexpected parse type: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        v49 = v69;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v53 + 8))(v52, v54);
      }

      v38(v68, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_6();
      sub_268B34ED4();
      return (*(v49 + 8))(v71, v48);
    }
  }
}

uint64_t sub_268A9F470(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v39 = a3;
  v41 = a2;
  v40 = sub_268B37AB4();
  v5 = OUTLINED_FUNCTION_1(v40);
  v46 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37B14();
  v13 = OUTLINED_FUNCTION_1(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = sub_268B35494();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5010 != -1)
  {
    swift_once();
  }

  v38 = qword_2802CDB10;
  (*(v23 + 16))(&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 16) = v41;
  (*(v23 + 32))(v29 + v27, v26, v20);
  v31 = (v29 + v28);
  v33 = v42;
  v32 = v43;
  *v31 = v39;
  v31[1] = v33;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;
  aBlock[4] = sub_268AA0B28;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_11;
  v34 = _Block_copy(aBlock);
  v35 = v30;

  sub_268B37AE4();
  v47 = MEMORY[0x277D84F90];
  sub_268AA0C2C(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v36 = v40;
  sub_268B38124();
  MEMORY[0x26D625950](0, v19, v11, v34);
  _Block_release(v34);
  (*(v46 + 8))(v11, v36);
  (*(v44 + 8))(v19, v45);
}

void sub_268A9F83C(id a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v97 = a5;
  v109 = a3;
  v110 = a4;
  v107 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v95 - v8;
  v99 = type metadata accessor for MediaIntent();
  v10 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B35494();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v95 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - v21;
  v23 = sub_268B37A54();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v111 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v98 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v95 - v30;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v33 = v24[2];
  v101 = v32;
  v102 = v33;
  v103 = v24 + 2;
  v33(v31);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v108 = a1;
    v37 = v13;
    v38 = v9;
    v39 = v12;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v43 = v36;
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "SetAudioLanguageFlowStrategy#makeIntentFromParse called", v36, 2u);
    v44 = v43;
    v24 = v42;
    v23 = v41;
    v22 = v40;
    v12 = v39;
    v9 = v38;
    v13 = v37;
    a1 = v108;
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v104 = v24[1];
  v105 = v24 + 1;
  v104(v31, v23);
  if (a1)
  {
    v108 = a1;
  }

  else
  {
    v108 = [objc_allocWithZone(type metadata accessor for SetAudioLanguageIntent()) init];
  }

  v45 = v107;
  v46 = v111;
  v47 = *(v13 + 16);
  v47(v22, v107, v12);
  v48 = (*(v13 + 88))(v22, v12);
  if (v48 == *MEMORY[0x277D5C128] || v48 == *MEMORY[0x277D5C160])
  {
    v50 = *(v13 + 8);
    v51 = a1;
    v50(v22, v12);
    v52 = v45;
    v53 = v106;
    v47(v106, v52, v12);
    sub_26892E9C4(v53, 1, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v99) == 1)
    {
      sub_268A03080(v9);
      v54 = v98;
      (v102)(v98, v101, v23);
      v55 = v96;
      v47(v96, v52, v12);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        LODWORD(v107) = v57;
        v59 = v58;
        v111 = swift_slowAlloc();
        v112 = v111;
        *v59 = 136315138;
        v47(v106, v55, v12);
        v60 = sub_268B37C24();
        v62 = v61;
        v50(v55, v12);
        v63 = sub_26892CDB8(v60, v62, &v112);

        *(v59 + 4) = v63;
        v64 = v59;
        _os_log_impl(&dword_2688BB000, v56, v107, "SetAudioLanguageFlowStrategy#makeIntentFromParse failed to create MediaIntent from parse: %s", v59, 0xCu);
        v65 = v111;
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x26D6266E0](v65, -1, -1);
        MEMORY[0x26D6266E0](v64, -1, -1);

        v66 = v98;
      }

      else
      {

        v50(v55, v12);
        v66 = v54;
      }

      v104(v66, v23);
      type metadata accessor for ErrorFilingHelper();
      static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
      sub_2688C2ECC();
      v93 = swift_allocError();
      *v94 = 61;
      v109(v93, 1);
    }

    else
    {
      v83 = v95;
      sub_26893207C(v9, v95);
      v84 = v108;
      sub_268A19CF0(v83);
      sub_26895F7A8(v83);
      v85 = v97;
      v86 = v97[5];
      v87 = v97[6];
      __swift_project_boxed_opaque_existential_1(v97 + 2, v86);
      v88 = swift_allocObject();
      v89 = v110;
      v88[2] = v109;
      v88[3] = v89;
      v88[4] = v84;
      v90 = v84;

      sub_268AD35F4(v90, &off_287953C48, (v85 + 7), sub_268AA0C20, v88, v86, v87);
    }
  }

  else
  {
    v107 = v22;
    (v102)(v46, v101, v23);
    v67 = v100;
    v47(v100, v45, v12);
    v68 = a1;
    v69 = sub_268B37A34();
    v70 = sub_268B37EE4();
    if (os_log_type_enabled(v69, v70))
    {
      v72 = swift_slowAlloc();
      v102 = v72;
      v103 = swift_slowAlloc();
      v112 = v103;
      *v72 = 136315138;
      v47(v106, v67, v12);
      v73 = sub_268B37C24();
      v75 = v74;
      v76 = *(v13 + 8);
      v76(v67, v12);
      v77 = sub_26892CDB8(v73, v75, &v112);

      v78 = v102;
      *(v102 + 1) = v77;
      v79 = v108;
      v80 = v70;
      v81 = v78;
      _os_log_impl(&dword_2688BB000, v69, v80, "SetAudioLanguageFlowStrategy#makeIntentFromParse unexpected parse type: %s", v78, 0xCu);
      v82 = v103;
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      MEMORY[0x26D6266E0](v82, -1, -1);
      MEMORY[0x26D6266E0](v81, -1, -1);

      v104(v111, v23);
    }

    else
    {

      v76 = *(v13 + 8);
      v76(v67, v12);
      v104(v46, v23);
      v79 = v108;
    }

    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = 62;
    v109(v91, 1);

    v76(v107, v12);
  }
}

uint64_t sub_268AA024C(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SetAudioLanguageFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268AA0444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA04D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268AA0520()
{
  if (qword_2802A5008 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB08;

  return v1;
}

uint64_t sub_268AA057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA05E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA0654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA06C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268AA0710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268AA0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA07D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA09A0(uint64_t a1, uint64_t a2)
{
  result = sub_268AA0C2C(&qword_2802A7D60, a2, type metadata accessor for SetAudioLanguageFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AA0A40()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

void sub_268AA0B28()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_268A9F83C(v5, (v0 + v2), v8, v9, v7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268AA0BE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268AA0C2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_268AA0C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = (*(a2 + 8))(a1, a2);
  if (v12)
  {
    v13 = v12;
    if (sub_2688EFD0C(v12) == 1 && sub_2688EFD0C(v13))
    {
      sub_2688EFD10(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26D625BD0](0, v13);
      }

      else
      {
        v14 = *(v13 + 32);
      }

      v15 = v14;

      v16 = DeviceQuery.hasReferenceOnly.getter();

      v17 = v16 ^ 1;
    }

    else
    {

      v17 = 1;
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v11, v18, v4);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (!os_log_type_enabled(v19, v20))
    {
      v9 = v11;
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v17 & 1;
    _os_log_impl(&dword_2688BB000, v19, v20, "DeviceQueryableIntent#isWholeHouseAudio: %{BOOL}d", v21, 8u);
    v9 = v11;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v22 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v9, v22, v4);
    v19 = sub_268B37A34();
    v23 = sub_268B37ED4();
    if (!os_log_type_enabled(v19, v23))
    {
      v17 = 0;
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v23, "DeviceQueryableIntent#isWholeHouseAudio No deviceQueries found in the intent. This is not a WHA intent", v21, 2u);
    v17 = 0;
  }

  MEMORY[0x26D6266E0](v21, -1, -1);
LABEL_19:

  (*(v5 + 8))(v9, v4);
  return v17 & 1;
}

id sub_268AA0FD8()
{
  result = [objc_allocWithZone(type metadata accessor for SetRepeatStateIntentHandler()) init];
  qword_2802CDB18 = result;
  return result;
}

uint64_t sub_268AA100C()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_268AA2D18(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CDB20 = result;
  return result;
}

uint64_t sub_268AA1260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v65 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v72 = v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v68 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v69 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SetRepeatStateFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v75;
  v40 = v73;
  sub_268B35414();
  sub_26893BA8C(v39);
  v41 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_2688C2E64(v20);
  if (v39 == 1)
  {
    v42 = v68;
    v34(v68, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SetRepeatStateFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_10();
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v24 + 8);
    v47 = v72;
    sub_268B35414();
    v49 = v70;
    v48 = v71;
    v50 = (*(v70 + 88))(v47, v71);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C150] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v69, v33, v21);
      v53 = v65;
      v54 = v66;
      v55 = v67;
      (*(v66 + 16))(v65, v40, v67);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v60 = 136315138;
        sub_268B35414();
        v61 = sub_268B37C24();
        v63 = v62;
        (*(v54 + 8))(v59, v55);
        v64 = sub_26892CDB8(v61, v63, &v76);
        v48 = v71;

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2688BB000, v56, v57, "SetRepeatStateFlowStrategy#actionForInput received no valid parse %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v49 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v38(v69, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_51();
      OUTLINED_FUNCTION_4_10();
      sub_268B34ED4();
      return (*(v49 + 8))(v72, v48);
    }
  }
}

uint64_t sub_268AA18E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37AB4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37B14();
  v14 = OUTLINED_FUNCTION_1(v13);
  v45 = v15;
  v46 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B35494();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5020 != -1)
  {
    swift_once();
  }

  v40 = qword_2802CDB20;
  (*(v24 + 16))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v28, v27, v21);
  v32 = (v31 + v29);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  *v32 = v41;
  v32[1] = v34;
  *(v31 + v30) = v33;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_268AA2C0C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_12;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  sub_268B37AE4();
  v49 = MEMORY[0x277D84F90];
  sub_268AA2D18(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v38 = v48;
  sub_268B38124();
  MEMORY[0x26D625950](0, v20, v12, v36);
  _Block_release(v36);
  (*(v47 + 8))(v12, v38);
  (*(v45 + 8))(v20, v46);
}

void sub_268AA1CAC(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t *a4, void *a5)
{
  v67 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v69 = a1;
  v71 = sub_268B35494();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v68 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v63 = v18[2];
  v64 = v24;
  v63(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SetRepeatStateFlowStrategy#makeIntentFromParse called", v31, 2u);
    v32 = v31;
    v9 = v30;
    v18 = v29;
    v17 = v28;
    v16 = v27;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v65 = v18[1];
  v65(v23, v17);
  v33 = *(v75 + 16);
  v34 = v69;
  v35 = v71;
  v33(v9, v69, v71);
  sub_26893BC0C(v9, 1, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (__swift_getEnumTagSinglePayload(v13, 1, v68) == 1)
  {
    sub_2688C2E64(v13);
    (v63)(v70, v64, v17);
    v42 = v66;
    v33(v66, v34, v35);
    v43 = v35;
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v46 = 136315138;
      v33(v9, v42, v43);
      v47 = sub_268B37C24();
      v49 = v48;
      (*(v75 + 8))(v42, v43);
      v50 = sub_26892CDB8(v47, v49, &v76);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v44, v45, "SetRepeatStateFlowStrategy#makeIntentFromParse received unexpected parse: %s", v46, 0xCu);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v42, v35);
    }

    v65(v70, v17);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = 73;
    v72(v53, 1);
  }

  else
  {
    sub_2688C0464(v13, v16);
    if (v74)
    {
      v52 = v74;
    }

    else
    {
      v52 = [objc_allocWithZone(type metadata accessor for SetRepeatStateIntent()) init];
    }

    v55 = v74;
    sub_268A91044(v16);
    v56 = v67;
    v57 = v67[5];
    v58 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v57);
    v59 = v16;
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v72;
    v60[3] = v61;
    v60[4] = v52;
    v62 = v52;

    sub_268AD35F4(v62, &off_287953BA8, (v56 + 7), sub_268AA2D0C, v60, v57, v58);

    sub_2688C2F6C(v59);
  }
}

uint64_t sub_268AA2350(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SetRepeatStateFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268AA2548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA25D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268AA2624()
{
  if (qword_2802A5018 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB18;

  return v1;
}

uint64_t sub_268AA2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA26EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA2758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA27C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268AA2814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268AA2868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA28D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA2950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA2AA4(uint64_t a1, uint64_t a2)
{
  result = sub_268AA2D18(&qword_2802A7D80, a2, type metadata accessor for SetRepeatStateFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AA2B44()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_268AA2C0C()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268AA1CAC(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268AA2CCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268AA2D18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_268AA2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "SeekTimeDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v18 = sub_268B35244();
  sub_268AE2278(v18);
  v20 = v19;

  v21 = sub_268B35254();
  sub_268AE23DC(v21);
  v23 = v22;

  v24 = *(v6 + 56);
  sub_268AB1AA8(v20, v23 & 1, a4, a5);
}

void sub_268AA2FC8()
{
  type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268AA30B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AA3164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AA3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AA32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AA3368()
{
  type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268AA33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268AA34E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268AA36CC(uint64_t a1, uint64_t a2)
{
  result = sub_268AA3724(&qword_2802A7DA0, a2, type metadata accessor for SeekTimeDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AA3724(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ConfirmationStateValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268AA3874);
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

unint64_t sub_268AA38B0()
{
  result = qword_2802A7DA8;
  if (!qword_2802A7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DA8);
  }

  return result;
}

uint64_t sub_268AA3904()
{
  v0 = sub_268B382F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268AA395C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_268AA39C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268AA3904();
  *a2 = result;
  return result;
}

uint64_t sub_268AA39F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268AA395C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268AA3A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268AA3BB8();
  v5 = sub_268AA3C0C();
  v6 = sub_268AA3C60();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_268AA3AA4()
{
  result = qword_2802A7DB0;
  if (!qword_2802A7DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A7DB8, &qword_268B4B198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DB0);
  }

  return result;
}

unint64_t sub_268AA3B0C()
{
  result = qword_2802A7DC0;
  if (!qword_2802A7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DC0);
  }

  return result;
}

unint64_t sub_268AA3B64()
{
  result = qword_2802A7DC8;
  if (!qword_2802A7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DC8);
  }

  return result;
}

unint64_t sub_268AA3BB8()
{
  result = qword_2802A7DD0;
  if (!qword_2802A7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DD0);
  }

  return result;
}

unint64_t sub_268AA3C0C()
{
  result = qword_2802A7DD8;
  if (!qword_2802A7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DD8);
  }

  return result;
}

unint64_t sub_268AA3C60()
{
  result = qword_2802A7DE0;
  if (!qword_2802A7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DE0);
  }

  return result;
}

id MoveSpeakerIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268AA3CEC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = [v0 source];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 devices];

    if (v14)
    {
      v32 = v6;
      type metadata accessor for Device();
      v15 = sub_268B37CF4();

      v16 = sub_2688EFD0C(v15);
      for (i = 0; ; ++i)
      {
        if (v16 == i)
        {

          goto LABEL_13;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x26D625BD0](i, v15);
        }

        else
        {
          if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v18 = *(v15 + 8 * i + 32);
        }

        v14 = v18;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        sub_26892D418(v18);
        if (v19)
        {
          break;
        }
      }

      if (sub_268983434())
      {
        v20 = sub_268A3239C();
        if (v21)
        {
          v2 = v20;
          v16 = v21;
          if (qword_2802A4F30 == -1)
          {
LABEL_17:
            v22 = __swift_project_value_buffer(v3, qword_2802CDA10);
            (*(v32 + 16))(v11, v22, v3);

            v23 = sub_268B37A34();
            v24 = sub_268B37F04();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              v33 = v26;
              *v25 = 136315138;
              *(v25 + 4) = sub_26892CDB8(v2, v16, &v33);
              _os_log_impl(&dword_2688BB000, v23, v24, "Local SideKick device, using endpointId: %s", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v26);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();
            }

            (*(v32 + 8))(v11, v3);
            goto LABEL_13;
          }

LABEL_29:
          OUTLINED_FUNCTION_0_2();
          swift_once();
          goto LABEL_17;
        }
      }

      v27 = [v14 context];
      if (v27 && (v28 = v27, v29 = [v27 routeId], v28, v29))
      {
        sub_268B37BF4();
      }

      else
      {
        v30 = [v14 routeId];
        if (v30)
        {
          v31 = v30;
          sub_268B37BF4();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_23();
}

void sub_268AA4074()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268B382A4())
  {
    if (!i)
    {
LABEL_20:
      OUTLINED_FUNCTION_23();
      return;
    }

    v36 = MEMORY[0x277D84F90];
    sub_268B38234();
    if (i < 0)
    {
      break;
    }

    v35 = v1 & 0xC000000000000001;
    sub_2688C063C();
    v12 = 0;
    v32 = (v5 + 16);
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = (v5 + 8);
    *&v13 = 138412290;
    v29 = v13;
    v34 = i;
    v30 = v10;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v35)
      {
        v15 = MEMORY[0x26D625BD0](v12, v1);
      }

      else
      {
        if (v12 >= *(v33 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v1 + 8 * v12 + 32);
      }

      v16 = v15;
      v5 = [v15 silentPrimary];
      v17 = sub_268B38054();
      v18 = v17;
      if (v5)
      {
        v19 = sub_268B38074();

        if (v19)
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v20 = __swift_project_value_buffer(v2, qword_2802CDA10);
          (*v32)(v10, v20, v2);
          v21 = v16;
          v22 = sub_268B37A34();
          v5 = sub_268B37F04();

          if (os_log_type_enabled(v22, v5))
          {
            v23 = swift_slowAlloc();
            v24 = v2;
            v25 = v1;
            v26 = swift_slowAlloc();
            *v23 = v29;
            *(v23 + 4) = v21;
            *v26 = v21;
            v27 = v21;
            _os_log_impl(&dword_2688BB000, v22, v5, "Device: %@ is silent primary. Converting its nowPlayingState to .paused", v23, 0xCu);
            sub_2688C058C(v26, &qword_2802A6420, &unk_268B3C680);
            v1 = v25;
            v2 = v24;
            v10 = v30;
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          (*v31)(v10, v2);
          [v21 setNowPlayingState_];
        }
      }

      else
      {
      }

      sub_268B38214();
      v28 = *(v36 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      ++v12;
      if (v14 == v34)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  __break(1u);
}

void sub_268AA43C8(uint64_t a1)
{
  v1 = sub_268AA4490(a1);
  v2 = sub_2688EFD0C(v1);
  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v2 == v3)
    {
LABEL_10:

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = sub_268983434();

    v3 = v4 + 1;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_268AA4490(uint64_t a1)
{
  result = sub_2688EFD0C(a1);
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  v29 = a1;
  v30 = a1 & 0xC000000000000001;
  v33 = a1 + 32;
  v31 = result;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v5)
    {
      result = MEMORY[0x26D625BD0](v4, v29);
    }

    else
    {
      if (v4 >= *(v34 + 16))
      {
        goto LABEL_42;
      }

      result = *(v33 + 8 * v4);
    }

    v7 = result;
    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_2689CB550();

    if (v9 >> 62)
    {
      v10 = sub_268B382A4();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_268B382A4();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = result + v10;
    if (__OFADD__(result, v10))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v11)
      {
LABEL_19:
        sub_268B382A4();
      }

      else
      {
        v13 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v14 = *(v13 + 16);
      }

      result = sub_268B381F4();
      v6 = result;
      v13 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v11)
    {
      goto LABEL_19;
    }

    v13 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v12 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v35 = v13;
    v36 = v6;
    v15 = *(v13 + 16);
    v16 = (*(v13 + 24) >> 1) - v15;
    v17 = v13 + 8 * v15;
    if (v9 >> 62)
    {
      v20 = sub_268B382A4();
      if (v20)
      {
        v21 = v20;
        result = sub_268B382A4();
        if (v16 < result)
        {
          goto LABEL_47;
        }

        if (v21 < 1)
        {
          goto LABEL_48;
        }

        v32 = result;
        v22 = v17 + 32;
        sub_268AA8960();
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
          v24 = sub_26892D47C(v37, i, v9);
          v26 = *v25;
          v24(v37, 0);
          *(v22 + 8 * i) = v26;
        }

        v5 = v30;
        v3 = v31;
        v19 = v32;
        goto LABEL_31;
      }

LABEL_35:

      if (v10 > 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_35;
      }

      if (v16 < v18)
      {
        goto LABEL_46;
      }

      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      type metadata accessor for Device();
      swift_arrayInitWithCopy();
LABEL_31:

      v6 = v36;
      if (v19 < v10)
      {
        goto LABEL_44;
      }

      if (v19 > 0)
      {
        v27 = *(v35 + 16);
        v8 = __OFADD__(v27, v19);
        v28 = v27 + v19;
        if (v8)
        {
          goto LABEL_45;
        }

        *(v35 + 16) = v28;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
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
  return result;
}

void MoveSpeakerIntentHandler.init()()
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
  sub_268AA83B4(v33, v32, &v41, v14, v40);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268AA4B7C()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_7_12(v2);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v0;
  v9 = qword_2802A5028;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v10 = OUTLINED_FUNCTION_4_13();
  v11(v10);
  OUTLINED_FUNCTION_5_5();
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_0_20(v12, 23);
  v14(v13);
  OUTLINED_FUNCTION_9_10();
  *(v15 + 8) = sub_268958724;
  *(v15 + 16) = v8;

  sub_268B38004();
  sub_268B37A04();

  sub_268AA4D4C(v18, v19, sub_268AA86E8, v12);

  v16 = OUTLINED_FUNCTION_11_12();
  v17(v16);
  OUTLINED_FUNCTION_23();
}

void sub_268AA4D4C(void *a1, uint64_t a2, void (*a3)(uint64_t *), char *a4)
{
  v94 = a2;
  v99 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v91 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v92 = &v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v87 - v17;
  v19 = swift_allocObject();
  v97 = a3;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268958D98;
  *(v20 + 24) = v19;
  v21 = qword_2802A4F30;

  v98 = v19;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v23 = v7[2];
  v23(v18, v22, v6);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v93 = (v7 + 2);
    v27 = v22;
    v28 = v6;
    v29 = v20;
    v30 = v7;
    v31 = v23;
    v32 = a4;
    v33 = v26;
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "MoveSpeakerIntentHandler.handle() called", v26, 2u);
    v34 = v33;
    a4 = v32;
    v23 = v31;
    v7 = v30;
    v20 = v29;
    v6 = v28;
    v22 = v27;
    MEMORY[0x26D6266E0](v34, -1, -1);
  }

  v35 = v7[1];
  v35(v18, v6);
  v36 = v99;
  v37 = [v99 source];
  if (!v37)
  {
    goto LABEL_10;
  }

  v38 = v37;
  v93 = v35;
  v39 = sub_268B0F7F4(v36);
  if (!v39)
  {

    v35 = v93;
LABEL_10:

    v57 = v96;
    v23(v96, v22, v6);
    v58 = sub_268B37A34();
    v59 = sub_268B37EE4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2688BB000, v58, v59, "Could not find a valid source and/or destinations in the intent", v60, 2u);
      MEMORY[0x26D6266E0](v60, -1, -1);
    }

    v35(v57, v6);
    v61 = sub_268B36EA4();
    v62 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v63 = v61;
    v64 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v61);
    v100 = v64;
    v97(&v100);

    goto LABEL_13;
  }

  v40 = v39;
  v96 = a4;
  v41 = v95;
  v88 = v22;
  v89 = v23;
  v23(v95, v22, v6);
  v42 = v38;
  v43 = sub_268B37A34();
  v44 = sub_268B37F04();

  v45 = os_log_type_enabled(v43, v44);
  v90 = v42;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v100 = v87;
    *v46 = 136315394;
    v47 = sub_2688F3970();
    v49 = sub_26892CDB8(v47, v48, &v100);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = type metadata accessor for DeviceGroup();
    v51 = MEMORY[0x26D625710](v40, v50);
    v53 = v52;

    v54 = sub_26892CDB8(v51, v53, &v100);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_2688BB000, v43, v44, "Resolved Source: %s, Resolved Destinations: %s", v46, 0x16u);
    v55 = v87;
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v55, -1, -1);
    MEMORY[0x26D6266E0](v46, -1, -1);

    v56 = v95;
  }

  else
  {

    v56 = v41;
  }

  v65 = v93;
  v93(v56, v6);
  v66 = v94;
  sub_268A581C0(*(v94 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_aceServiceHelper));
  if (!*(v67 + 16))
  {

    v71 = v92;
    v89(v92, v88, v6);
    v72 = sub_268B37A34();
    v73 = sub_268B37EE4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2688BB000, v72, v73, "Empty destination ids found after filtration. Returning error", v74, 2u);
      MEMORY[0x26D6266E0](v74, -1, -1);
    }

    v65(v71, v6);
    v75 = sub_268B36EA4();
    v76 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v77 = v75;
    v78 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v75);
    v100 = v78;
    v97(&v100);

LABEL_13:

    return;
  }

  v68 = swift_allocObject();
  *(v68 + 16) = sub_2688E19F8;
  *(v68 + 24) = v20;
  sub_268AA3CEC();
  if (v69)
  {
    v70 = *(v66 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController + 32);
    __swift_project_boxed_opaque_existential_1((v66 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController), *(v66 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController + 24));
    sub_268B36DC4();
  }

  else
  {

    v79 = v91;
    v89(v91, v88, v6);
    v80 = sub_268B37A34();
    v81 = sub_268B37EE4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2688BB000, v80, v81, "Failed to get the device id of the source. Returning error", v82, 2u);
      MEMORY[0x26D6266E0](v82, -1, -1);
    }

    v93(v79, v6);
    v83 = sub_268B36EA4();
    v84 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v85 = v83;
    v86 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v83);
    v100 = v86;
    v97(&v100);
  }
}

void sub_268AA56B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v73 = a3;
  v74 = a2;
  v75 = sub_268B37A54();
  v72 = *(v75 - 8);
  v4 = *(v72 + 64);
  v5 = MEMORY[0x28223BE20](v75);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v65 - v8;
  v9 = sub_268B36F24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v70 = a1;
  sub_2688F1FA4(a1, &v65 - v21, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v18, v22, v9);
    v23 = v9;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = v75;
    v25 = __swift_project_value_buffer(v75, qword_2802CDA10);
    v26 = v71;
    v27 = v72;
    (*(v72 + 16))(v71, v25, v24);
    v28 = v10;
    v66 = *(v10 + 16);
    v67 = v18;
    v66(v16, v18, v23);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v68 = v23;
      v32 = v31;
      v65 = swift_slowAlloc();
      v76 = v65;
      *v32 = 136315138;
      sub_26899693C(&qword_2802A5F88, MEMORY[0x277D5F6E0]);
      v33 = sub_268B384A4();
      v34 = v27;
      v36 = v35;
      v37 = *(v10 + 8);
      v37(v16, v68);
      v38 = sub_26892CDB8(v33, v36, &v76);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2688BB000, v29, v30, "Failed to move the source stream to the expected destinations. Error: %s", v32, 0xCu);
      v39 = v65;
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x26D6266E0](v39, -1, -1);
      v40 = v32;
      v23 = v68;
      MEMORY[0x26D6266E0](v40, -1, -1);

      (*(v34 + 8))(v71, v75);
    }

    else
    {

      v37 = *(v10 + 8);
      v37(v16, v23);
      (*(v27 + 8))(v26, v75);
    }

    v49 = v69;
    v50 = v67;
    v66(v69, v67, v23);
    v51 = (*(v28 + 88))(v49, v23);
    if (v51 == *MEMORY[0x277D5F6C0])
    {
      v52 = sub_268B36ED4();
      v53 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
      v54 = v52;
      v55 = MoveSpeakerIntentResponse.init(code:userActivity:)(100, v52);
      v74();

      v37(v50, v23);
    }

    else
    {
      if (v51 == *MEMORY[0x277D5F6A8])
      {
        v56 = sub_268B36ED4();
        v57 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
        v58 = v56;
        v59 = MoveSpeakerIntentResponse.init(code:userActivity:)(101, v56);
        v74();

        v60 = v50;
      }

      else
      {
        v61 = sub_268B36ED4();
        v62 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
        v63 = v61;
        v64 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v61);
        v74();

        v37(v50, v23);
        v60 = v49;
      }

      v37(v60, v23);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v75;
    v42 = __swift_project_value_buffer(v75, qword_2802CDA10);
    v43 = v72;
    (*(v72 + 16))(v7, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37F04();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "Success moving devices", v46, 2u);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    (*(v43 + 8))(v7, v41);
    v47 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v48 = MoveSpeakerIntentResponse.init(code:userActivity:)(4, 0);
    v74();
  }
}

void sub_268AA5E74()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_7_12(v2);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v0;
  v9 = qword_2802A5028;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v10 = OUTLINED_FUNCTION_4_13();
  v11(v10);
  OUTLINED_FUNCTION_5_5();
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_0_20(v12, 24);
  v14(v13);
  OUTLINED_FUNCTION_9_10();
  *(v15 + 8) = sub_2689969C0;
  *(v15 + 16) = v8;

  sub_268B38004();
  sub_268B37A04();

  sub_268AA6044(v19, v18, sub_268AA86E8, v12);

  v16 = OUTLINED_FUNCTION_11_12();
  v17(v16);
  OUTLINED_FUNCTION_23();
}

void sub_268AA6044(uint64_t a1, uint64_t a2, void (*a3)(id *), uint64_t a4)
{
  v43[1] = a2;
  v46 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v43[0] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = v43 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = swift_allocObject();
  v45 = a3;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268958D98;
  *(v16 + 24) = v15;
  v17 = qword_2802A4F30;
  v48 = a4;

  v47 = v15;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v19 = v7[2];
  v19(v14, v18, v6);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "MoveSpeakerIntentHandler.resolveSource()", v22, 2u);
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v7[1];
  v23(v14, v6);
  v24 = v46;
  v25 = *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState), *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState + 24));
  if ((sub_2688C3240() & 1) == 0)
  {

    v29 = v44;
    v19(v44, v18, v6);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Whole House Audio requests are unsupported on this platform", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    v23(v29, v6);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v33 = 4;
    goto LABEL_17;
  }

  v26 = sub_268B1CC90();
  if (!v26)
  {
LABEL_14:

    v34 = v43[0];
    v19(v43[0], v18, v6);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "Could not find any device queries in the intent. Returning error", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    v23(v34, v6);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v33 = 3;
LABEL_17:
    v38 = sub_268B17B04(v33);
    v49 = v38;
    v45(&v49);

    return;
  }

  if (!sub_2688EFD0C(v26))
  {

    goto LABEL_14;
  }

  if (sub_268B1CCB0())
  {
    sub_268AA4074();
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v39 = *(v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceSelector);
  sub_268920A60();
  v41 = v40;

  v42 = swift_allocObject();
  *(v42 + 16) = sub_268958EA4;
  *(v42 + 24) = v16;
  sub_2688F9A5C(v41, v28, 1, sub_268AA89C4, v42);
}

void sub_268AA6570(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (!sub_2688EFD0C(a1))
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v9, v25, v4);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Could not find a source stream for the move request.", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v29 = 2;
    goto LABEL_20;
  }

  if (sub_2688EFD0C(a1) != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v12, v30, v4);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Multiple sources found for move request.", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v29 = 1;
LABEL_20:
    v24 = sub_268B17B04(v29);
    a2();
    goto LABEL_21;
  }

  sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v16 = v15;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v14, v17, v4);
  v18 = v16;
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_2688BB000, v19, v20, "Success resolving source: %@.", v21, 0xCu);
    sub_2688C058C(v22, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v22, -1, -1);
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v5 + 8))(v14, v4);
  type metadata accessor for MoveSpeakerSourceResolutionResult();
  v24 = sub_268B32628(v18);
  a2();

LABEL_21:
}

uint64_t sub_268AA6A6C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_268AA6B14()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_7_12(v2);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v0;
  v9 = qword_2802A5028;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v10 = OUTLINED_FUNCTION_4_13();
  v11(v10);
  OUTLINED_FUNCTION_5_5();
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_0_20(v12, 30);
  v14(v13);
  OUTLINED_FUNCTION_9_10();
  *(v15 + 8) = sub_2688E19C4;
  *(v15 + 16) = v8;

  sub_268B38004();
  sub_268B37A04();

  sub_268AA6CE4(v18, v19, sub_268AA86E8, v12);

  v16 = OUTLINED_FUNCTION_11_12();
  v17(v16);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AA6CE4(uint64_t a1, char *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v35 = a2;
  v40 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = swift_allocObject();
  v37 = a3;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_268958D98;
  *(v14 + 24) = v13;
  v15 = qword_2802A4F30;
  v39 = a4;

  v38 = v13;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v17 = v7[2];
  v17(v12, v16, v6);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "MoveSpeakerIntentHandler.resolveDestination() called", v20, 2u);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = v7[1];
  v21(v12, v6);
  v22 = sub_268B1CC90();
  if (v22)
  {
    v23 = v22;
    if (sub_2688EFD0C(v22))
    {
      v24 = v35;
      v25 = *&v35[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceSelector];
      sub_268920A60();
      sub_268B1CCB0();
      v26 = swift_allocObject();
      v26[2] = sub_2688E19F8;
      v26[3] = v14;
      v26[4] = v24;
      v26[5] = v23;
      v27 = v24;
      sub_2688FDFDC();

      goto LABEL_12;
    }
  }

  v28 = v36;
  v17(v36, v16, v6);
  v29 = sub_268B37A34();
  v30 = sub_268B37EE4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "Could not find a device query. Returning error", v31, 2u);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v21(v28, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_268B3BBA0;
  type metadata accessor for MoveSpeakerDestinationsResolutionResult();
  *(v32 + 32) = sub_268B1CD38(2);
  v41 = v32;
  v37(&v41);

LABEL_12:
}

uint64_t sub_268AA710C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a5;
  v133 = sub_268B37464();
  v118 = *(v133 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v133);
  v120 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  v11 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v13 = &v111 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v123 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v111 - v19;
  MEMORY[0x28223BE20](v18);
  v131 = &v111 - v20;
  v21 = sub_268B37A54();
  v121 = *(v21 - 8);
  v122 = v21;
  v22 = *(v121 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v119 = &v111 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v114 = &v111 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v111 - v30;
  v134 = a1;
  v32 = sub_2688EFD0C(a1);
  if (v32)
  {
    v33 = v32;
    v116 = a3;
    v117 = a2;
    v34 = (a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState);
    v35 = *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState), *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState + 24));
    v36 = sub_268B34C74();
    sub_268AA43C8(v134);
    if (v37)
    {
      v38 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      if ((sub_268B34D04() & 1) == 0)
      {
        v39 = v34[4];
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        if (((sub_268B34D24() | v36) & 1) == 0)
        {
          if (qword_2802A4F30 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_37;
        }
      }
    }

    v40 = 0;
    v41 = (v134 & 0xC000000000000001);
    v42 = v134 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33 == v40)
      {
        goto LABEL_46;
      }

      if (v41)
      {
        v43 = MEMORY[0x26D625BD0](v40, v134);
      }

      else
      {
        if (v40 >= *(v42 + 16))
        {
          goto LABEL_60;
        }

        v43 = *(v134 + 8 * v40 + 32);
      }

      v44 = v43;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ([v43 type] == 7)
      {
        v52 = sub_2689CB550();
        v53 = sub_2688EFD0C(v52);

        if (v53 >= 2)
        {
          v111 = v41;
          v54 = v130;
          v55 = sub_2688EFD0C(v130);
          v56 = 0;
          v127 = v54 & 0xC000000000000001;
          v128 = v55;
          v126 = v54 & 0xFFFFFFFFFFFFFF8;
          v125 = *MEMORY[0x277D5F868];
          v124 = (v118 + 104);
          v113 = (v118 + 32);
          v118 += 8;
          v57 = &qword_2802A5BA8;
          v41 = &qword_268B3C690;
          v112 = v13;
          while (1)
          {
            if (v128 == v56)
            {
              if (qword_2802A4F30 != -1)
              {
                swift_once();
              }

              v82 = v122;
              v83 = __swift_project_value_buffer(v122, qword_2802CDA10);
              v84 = v121;
              v85 = v114;
              (*(v121 + 16))(v114, v83, v82);
              v86 = sub_268B37A34();
              v87 = sub_268B37EE4();
              v88 = os_log_type_enabled(v86, v87);
              v89 = v117;
              if (v88)
              {
                v90 = swift_slowAlloc();
                *v90 = 0;
                _os_log_impl(&dword_2688BB000, v86, v87, "User asked for a single device matching a deviceType, but multiple devices were found. Returning an error", v90, 2u);
                MEMORY[0x26D6266E0](v90, -1, -1);
              }

              (*(v84 + 8))(v85, v82);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
              v91 = swift_allocObject();
              *(v91 + 16) = xmmword_268B3BBA0;
              type metadata accessor for MoveSpeakerDestinationsResolutionResult();
              *(v91 + 32) = sub_268B1CD38(1);
              v89(v91);
            }

            if (v127)
            {
              v58 = MEMORY[0x26D625BD0](v56, v130);
            }

            else
            {
              if (v56 >= *(v126 + 16))
              {
                goto LABEL_62;
              }

              v58 = *(v130 + 8 * v56 + 32);
            }

            v59 = v58;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_61;
            }

            v60 = v131;
            DeviceQuery.deviceQuantifier.getter();
            v62 = v132;
            v61 = v133;
            (*v124)(v132, v125, v133);
            __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
            v63 = *(v129 + 48);
            sub_2688F1FA4(v60, v13, v57, v41);
            sub_2688F1FA4(v62, &v13[v63], v57, v41);
            if (__swift_getEnumTagSinglePayload(v13, 1, v61) == 1)
            {
              break;
            }

            v64 = v132;
            v65 = v133;
            v66 = v123;
            sub_2688F1FA4(v13, v123, v57, v41);
            if (__swift_getEnumTagSinglePayload(&v13[v63], 1, v65) == 1)
            {

              sub_2688C058C(v64, v57, v41);
              sub_2688C058C(v131, v57, v41);
              (*v118)(v66, v65);
LABEL_31:
              sub_2688C058C(v13, &qword_2802A5BA0, &unk_268B41020);
              goto LABEL_33;
            }

            v67 = &v13[v63];
            v68 = v41;
            v69 = v57;
            v70 = v120;
            (*v113)(v120, v67, v65);
            sub_26899693C(&qword_2802A5BB0, MEMORY[0x277D5F880]);
            v115 = sub_268B37BB4();

            v71 = *v118;
            v72 = v70;
            v57 = v69;
            v41 = v68;
            v13 = v112;
            (*v118)(v72, v65);
            sub_2688C058C(v64, v57, v41);
            sub_2688C058C(v131, v57, v41);
            v71(v66, v65);
            sub_2688C058C(v13, v57, v41);
            if (v115)
            {
              goto LABEL_45;
            }

LABEL_33:
            ++v56;
          }

          sub_2688C058C(v132, v57, v41);
          sub_2688C058C(v60, v57, v41);
          if (__swift_getEnumTagSinglePayload(&v13[v63], 1, v133) == 1)
          {
            sub_2688C058C(v13, &qword_2802A5BA8, &qword_268B3C690);
LABEL_45:

            v41 = v111;
            goto LABEL_46;
          }

          goto LABEL_31;
        }

LABEL_46:
        if (qword_2802A4F30 == -1)
        {
LABEL_47:
          v92 = v122;
          v93 = __swift_project_value_buffer(v122, qword_2802CDA10);
          v94 = v121;
          v95 = v119;
          (*(v121 + 16))(v119, v93, v92);

          v96 = sub_268B37A34();
          v97 = sub_268B37F04();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v135 = v99;
            *v98 = 136315138;
            v100 = type metadata accessor for DeviceGroup();
            v101 = MEMORY[0x26D6256F0](v134, v100);
            v103 = sub_26892CDB8(v101, v102, &v135);

            *(v98 + 4) = v103;
            _os_log_impl(&dword_2688BB000, v96, v97, "Success resolving destination: %s.", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v99);
            MEMORY[0x26D6266E0](v99, -1, -1);
            MEMORY[0x26D6266E0](v98, -1, -1);
          }

          (*(v94 + 8))(v95, v92);
          v104 = sub_2688EFD0C(v134);
          v31 = MEMORY[0x277D84F90];
          if (!v104)
          {
            goto LABEL_57;
          }

          v105 = v104;
          v135 = MEMORY[0x277D84F90];
          sub_268B38234();
          if ((v105 & 0x8000000000000000) == 0)
          {
            type metadata accessor for MoveSpeakerDestinationsResolutionResult();
            v106 = 0;
            do
            {
              if (v41)
              {
                v107 = MEMORY[0x26D625BD0](v106, v134);
              }

              else
              {
                v107 = *(v134 + 8 * v106 + 32);
              }

              v108 = v107;
              ++v106;
              sub_268B319C8(v107);

              sub_268B38214();
              v109 = v135[2];
              sub_268B38244();
              sub_268B38254();
              sub_268B38224();
            }

            while (v105 != v106);
            v31 = v135;
LABEL_57:
            v117(v31);
          }

          __break(1u);
LABEL_65:
          swift_once();
LABEL_37:
          v73 = v122;
          v74 = __swift_project_value_buffer(v122, qword_2802CDA10);
          v75 = v121;
          (*(v121 + 16))(v31, v74, v73);
          v76 = sub_268B37A34();
          v77 = sub_268B37EE4();
          v78 = os_log_type_enabled(v76, v77);
          v79 = v117;
          if (v78)
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_2688BB000, v76, v77, "MoveSpeaker destination device is not TV or HomePod. Returning an error", v80, 2u);
            MEMORY[0x26D6266E0](v80, -1, -1);
          }

          (*(v75 + 8))(v31, v73);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_268B3BBA0;
          type metadata accessor for MoveSpeakerDestinationsResolutionResult();
          *(v81 + 32) = sub_268B1CD38(3);
          v79(v81);
        }

LABEL_63:
        swift_once();
        goto LABEL_47;
      }

      ++v40;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v45 = v122;
  v46 = __swift_project_value_buffer(v122, qword_2802CDA10);
  v47 = v121;
  (*(v121 + 16))(v25, v46, v45);
  v48 = sub_268B37A34();
  v49 = sub_268B37EE4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2688BB000, v48, v49, "Could not resolve any destination for move speaker request.", v50, 2u);
    MEMORY[0x26D6266E0](v50, -1, -1);
  }

  (*(v47 + 8))(v25, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_268B3BBA0;
  type metadata accessor for MoveSpeakerDestinationsResolutionResult();
  *(v51 + 32) = sub_268B1CD38(1);
  a2(v51);
}

void sub_268AA7EA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MoveSpeakerDestinationsResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268AA7F14(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "MoveSpeakerIntentHandler.confirm() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
  v14 = MoveSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v14);

  _Block_release(a3);
}

void sub_268AA80EC(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v6 + 16))(v11, v12, v3);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "MoveSpeakerIntentHandler.confirm() called", v15, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v11, v3);
  v16 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
  v17 = MoveSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

id MoveSpeakerIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoveSpeakerIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_268AA83B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v37[3] = sub_268B36C54();
  v37[4] = MEMORY[0x277D5F680];
  v37[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v36[3] = v10;
  v36[4] = &off_2879539D0;
  v36[0] = a4;
  v11 = type metadata accessor for MoveSpeakerIntentHandler();
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
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceSelector] = v26;
  sub_26890C900(v37, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState]);
  sub_26890C900(a3, v34);
  sub_26890C900(a5, &v32);
  type metadata accessor for AceServiceHelper();
  v27 = swift_allocObject();
  sub_2688E6514(v34, v27 + 16);
  sub_2688E6514(&v32, v27 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_aceServiceHelper] = v27;
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

uint64_t sub_268AA86B4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268AA8704(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_268AA88CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268AA890C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_268AA8960()
{
  result = qword_2802A5B40;
  if (!qword_2802A5B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B38, &unk_268B51420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B40);
  }

  return result;
}

uint64_t sub_268AA8A0C()
{
  sub_268AA8A78();
  result = sub_268B38084();
  qword_2802CDB28 = result;
  return result;
}

unint64_t sub_268AA8A78()
{
  result = qword_2802A7E08;
  if (!qword_2802A7E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7E08);
  }

  return result;
}

uint64_t sub_268AA8ABC()
{
  v0 = sub_268B37A54();
  __swift_allocate_value_buffer(v0, qword_2802CDB30);
  __swift_project_value_buffer(v0, qword_2802CDB30);
  return sub_268B37A44();
}

uint64_t sub_268AA8B40()
{
  v0 = sub_268B366C4();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 32);
  v3 = OUTLINED_FUNCTION_103();

  return v4(v3);
}

uint64_t sub_268AA8BA0()
{
  if (qword_2802A5098 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_0_47();
  sub_268AABFC0(v0, v1);
  v2 = sub_268B35C64();
  if (v6)
  {
    v3 = v5;
    MEMORY[0x28223BE20](v2);
    if (sub_268ACD018())
    {

      return 0;
    }
  }

  else
  {
    if (qword_2802A5088 != -1)
    {
      swift_once();
    }

    sub_268B35C64();
    if (v5)
    {
      return 0;
    }

    if (qword_2802A4F40 != -1)
    {
      swift_once();
    }

    v3 = qword_2802CDA30;
  }

  return v3;
}

uint64_t sub_268AA8D70@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_268B37924();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v38 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA0, &qword_268B3CE28);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_20_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v36[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v36[-v24];
  if (qword_2802A5078 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_0_47();
  sub_268AABFC0(v26, v27);
  sub_268B35C64();
  v28 = *MEMORY[0x277D5F9F8];
  v39 = *(v4 + 104);
  v39(v23, v28, v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v29 = *(v9 + 48);
  sub_2688C053C(v25, v14, &qword_2802A5CA8, &unk_268B3CE30);
  sub_2688C053C(v23, &v14[v29], &qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_14_22(v14);
  if (!v30)
  {
    sub_2688C053C(v14, v19, &qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_14_22(&v14[v29]);
    if (!v30)
    {
      v32 = &v14[v29];
      v33 = v38;
      (*(v4 + 32))(v38, v32, v1);
      sub_268AABFC0(&qword_2802A5CB0, MEMORY[0x277D5FA18]);
      v37 = sub_268B37BB4();
      v34 = *(v4 + 8);
      v34(v33, v1);
      sub_2688C058C(v23, &qword_2802A5CA8, &unk_268B3CE30);
      v34(v19, v1);
      sub_2688C058C(v14, &qword_2802A5CA8, &unk_268B3CE30);
      if (v37)
      {
        goto LABEL_14;
      }

      return sub_268954254(v25, v40, &qword_2802A5CA8, &unk_268B3CE30);
    }

    sub_2688C058C(v23, &qword_2802A5CA8, &unk_268B3CE30);
    (*(v4 + 8))(v19, v1);
LABEL_11:
    sub_2688C058C(v14, &qword_2802A5CA0, &qword_268B3CE28);
    return sub_268954254(v25, v40, &qword_2802A5CA8, &unk_268B3CE30);
  }

  sub_2688C058C(v23, &qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_14_22(&v14[v29]);
  if (!v30)
  {
    goto LABEL_11;
  }

  sub_2688C058C(v14, &qword_2802A5CA8, &unk_268B3CE30);
LABEL_14:
  sub_2688C058C(v25, &qword_2802A5CA8, &unk_268B3CE30);
  v35 = v40;
  v39(v40, *MEMORY[0x277D5FA08], v1);
  return __swift_storeEnumTagSinglePayload(v35, 0, 1, v1);
}

uint64_t sub_268AA91F0()
{
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_20_0();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v49 = &v49 - v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = __swift_project_value_buffer(v0, qword_2802CDA10);
  v15 = *(v3 + 16);
  v16 = OUTLINED_FUNCTION_6_37();
  v15(v16);
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "Getting MediaType", v19, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_103();
  v20(v21);
  if (qword_2802A5048 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_0_47();
  sub_268AABFC0(v22, v23);
  sub_268B35C64();
  v24 = v51;
  if (v51 == 26)
  {
    (v15)(v8, v14, v0);
    v25 = sub_268B37A34();
    v26 = sub_268B37F04();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "No mediaType found the intent.", v27, 2u);
      OUTLINED_FUNCTION_12();
    }

    v28 = v8;
    goto LABEL_11;
  }

  if ((sub_268AAAC70() & 1) == 0)
  {
    v38 = v49;
    v39 = OUTLINED_FUNCTION_6_37();
    v15(v39);
    v40 = v38;
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      *v43 = 136315138;
      v45 = sub_268942D54(v24);
      v47 = sub_26892CDB8(v45, v46, &v51);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2688BB000, v41, v42, "MediaType: %s found in the intent but it was not explicitly mentioned by the user. Returning nil mediaType", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (v20)(v40, v0);
      return 26;
    }

    v28 = v40;
LABEL_11:
    (v20)(v28, v0);
    return 26;
  }

  v30 = OUTLINED_FUNCTION_6_37();
  v15(v30);
  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v51 = v34;
    *v33 = 136315138;
    v35 = sub_268942D54(v24);
    v37 = sub_26892CDB8(v35, v36, &v51);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v31, v32, "Returning mediaType = %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (v20)(v50, v0);
  }

  else
  {

    v48 = OUTLINED_FUNCTION_103();
    v20(v48);
  }

  return v24;
}

uint64_t sub_268AA96E4()
{
  if (qword_2802A50A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268AA9798()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EB8, &qword_268B4B350);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E20 = result;
  return result;
}

uint64_t sub_268AA9800()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EE0, &qword_268B4B380);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7E28 = result;
  return result;
}

uint64_t sub_268AA9854()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED8, &qword_268B4B378);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7E30 = result;
  return result;
}

uint64_t sub_268AA98A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC8, &qword_268B4B368);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7E38 = result;
  return result;
}

uint64_t sub_268AA98FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED0, &qword_268B4B370);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7E40 = result;
  return result;
}

uint64_t sub_268AA9950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7E48 = result;
  return result;
}

uint64_t sub_268AA99A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC0, &unk_268B4B358);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E50 = result;
  return result;
}

uint64_t sub_268AA9A0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E88, &qword_268B4B310);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7E58 = result;
  return result;
}

uint64_t type metadata accessor for MediaPlayerNLv3Intent()
{
  result = qword_2802A7EF8;
  if (!qword_2802A7EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268AA9AD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_245(v6);
  result = sub_268B35784();
  *a5 = result;
  return result;
}

uint64_t sub_268AA9B34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E68 = result;
  return result;
}

uint64_t sub_268AA9B98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E70 = result;
  return result;
}

uint64_t sub_268AA9C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3BBD0;
  if (qword_2802A5098 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7E70;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 56) = v2;
  v3 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802A5090;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A7E68;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = sub_268B356D4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = sub_268B356C4();
  qword_2802A7E78 = result;
  return result;
}

uint64_t sub_268AA9D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B4B300;
  if (qword_2802A5038 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7E10;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EF0, qword_268B4B398);
  *(v0 + 64) = sub_268A19C14(&qword_2802A7F28, &qword_2802A7EF0, qword_268B4B398);
  *(v0 + 32) = v1;
  v2 = qword_2802A5040;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2802A7E18;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 96) = v4;
  v5 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_2802A50A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2802A7E78;
  v8 = sub_268B356D4();
  v9 = MEMORY[0x277D5E210];
  *(v0 + 136) = v8;
  *(v0 + 144) = v9;
  *(v0 + 112) = v7;
  v10 = qword_2802A5048;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2802A7E20;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EB8, &qword_268B4B350);
  *(v0 + 184) = sub_268A19C14(&qword_2802A7F30, &qword_2802A7EB8, &qword_268B4B350);
  *(v0 + 152) = v11;
  v12 = qword_2802A5050;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802A7E28;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EE0, &qword_268B4B380);
  *(v0 + 224) = sub_268A19C14(&qword_2802A7F38, &qword_2802A7EE0, &qword_268B4B380);
  *(v0 + 192) = v13;
  v14 = qword_2802A5058;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2802A7E30;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED8, &qword_268B4B378);
  *(v0 + 264) = sub_268A19C14(&qword_2802A7F40, &qword_2802A7ED8, &qword_268B4B378);
  *(v0 + 232) = v15;
  v16 = qword_2802A5068;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2802A7E40;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED0, &qword_268B4B370);
  *(v0 + 304) = sub_268A19C14(&qword_2802A7F48, &qword_2802A7ED0, &qword_268B4B370);
  *(v0 + 272) = v17;
  v18 = qword_2802A5060;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A7E38;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC8, &qword_268B4B368);
  *(v0 + 344) = sub_268A19C14(&qword_2802A7F50, &qword_2802A7EC8, &qword_268B4B368);
  *(v0 + 312) = v19;
  v20 = qword_2802A5070;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A7E48;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  *(v0 + 384) = sub_268A19C14(&qword_2802A71E8, &qword_2802A7170, &qword_268B442C0);
  *(v0 + 352) = v21;
  v22 = qword_2802A5078;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2802A7E50;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC0, &unk_268B4B358);
  *(v0 + 424) = sub_268A19C14(&qword_2802A7F58, &qword_2802A7EC0, &unk_268B4B358);
  *(v0 + 392) = v23;
  v24 = qword_2802A5080;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2802A7E58;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E88, &qword_268B4B310);
  *(v0 + 464) = sub_268A19C14(&qword_2802A7F60, &qword_2802A7E88, &qword_268B4B310);
  *(v0 + 432) = v25;
  v26 = qword_2802A5088;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2802A7E60;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EE8, &unk_268B4B388);
  *(v0 + 504) = sub_268A19C14(&qword_2802A7F68, &qword_2802A7EE8, &unk_268B4B388);
  *(v0 + 472) = v27;
  v28 = qword_2802A4DC8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2802A69D0;
  *(v0 + 536) = v4;
  *(v0 + 544) = v5;
  *(v0 + 512) = v29;
  v30 = qword_2802A4D88;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_2802A6990;
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  *(v0 + 552) = v31;
  v32 = qword_2802A4D90;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_2802A6998;
  *(v0 + 616) = v4;
  *(v0 + 624) = v5;
  *(v0 + 592) = v33;
  v34 = qword_2802A4D98;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_2802A69A0;
  *(v0 + 656) = v4;
  *(v0 + 664) = v5;
  *(v0 + 632) = v35;
  v36 = qword_2802A4DA0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_2802A69A8;
  *(v0 + 696) = v4;
  *(v0 + 704) = v5;
  *(v0 + 672) = v37;
  v38 = qword_2802A4DA8;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_2802A69B0;
  *(v0 + 736) = v4;
  *(v0 + 744) = v5;
  *(v0 + 712) = v39;
  v40 = qword_2802A4DB0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_2802A69B8;
  *(v0 + 776) = v4;
  *(v0 + 784) = v5;
  *(v0 + 752) = v41;
  v42 = qword_2802A4DB8;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_2802A69C0;
  *(v0 + 816) = v4;
  *(v0 + 824) = v5;
  *(v0 + 792) = v43;
  v44 = qword_2802A4DC0;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = qword_2802A69C8;
  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 864) = sub_268A19C14(&qword_2802A71F8, &qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 832) = v45;
  v46 = qword_2802A4DD0;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_2802A69D8;
  *(v0 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  *(v0 + 904) = sub_268A19C14(&qword_2802A7200, &qword_2802A6A98, &unk_268B414C0);
  *(v0 + 872) = v47;
  v48 = qword_2802A4DD8;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_2802A69E0;
  *(v0 + 936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  *(v0 + 944) = sub_268A19C14(&qword_2802A7208, &qword_2802A6A90, &qword_268B4B540);
  *(v0 + 912) = v49;
  v50 = sub_268B35774();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  result = sub_268B35764();
  qword_2802A7E80 = result;
  return result;
}

uint64_t sub_268AAA778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v72 = v5;
  v73 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v75 = v9 - v8;
  v10 = sub_268B35494();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v69 = v16 - v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v71 = &v65[-v19];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v22 = &v65[-v21];
  v23 = sub_268B366C4();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v31 = (v30 - v29);
  v74 = type metadata accessor for MediaPlayerNLv3Intent();
  v32 = OUTLINED_FUNCTION_4(v74);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  v70 = *(v13 + 16);
  (v70)(v22, a1, v10);
  v38 = (*(v13 + 88))(v22, v10);
  v39 = *(v13 + 8);
  if (v38 == *MEMORY[0x277D5C128])
  {
    v39(a1, v10);
    (*(v13 + 96))(v22, v10);
    v40 = *(v26 + 32);
    v40(v31, v22, v23);
    v40(v37, v31, v23);
    v41 = v76;
    sub_268AAC008(v37, v76);
    v42 = 0;
    v43 = v41;
  }

  else
  {
    v68 = *(v13 + 8);
    v39(v22, v10);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v44 = v73;
    v45 = __swift_project_value_buffer(v73, qword_2802CDA10);
    v46 = v72;
    (*(v72 + 16))(v75, v45, v44);
    v47 = v71;
    v48 = v70;
    (v70)(v71, a1, v10);
    v49 = sub_268B37A34();
    v50 = sub_268B37F04();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v67 = a1;
      v52 = v51;
      v53 = swift_slowAlloc();
      v77 = v53;
      *v52 = 136315138;
      v66 = v50;
      v54 = OUTLINED_FUNCTION_103();
      v48(v54);
      v55 = sub_268B37C24();
      v57 = v56;
      v58 = v47;
      v59 = v68;
      v68(v58, v10);
      v60 = sub_26892CDB8(v55, v57, &v77);
      v61 = v46;
      v62 = v60;

      *(v52 + 4) = v62;
      _os_log_impl(&dword_2688BB000, v49, v66, "Unsupported parse while creating MediaPlayerNLv3Intent: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v59(v67, v10);
      (*(v61 + 8))(v75, v73);
    }

    else
    {

      v63 = v68;
      v68(a1, v10);
      v63(v47, v10);
      (*(v46 + 8))(v75, v44);
    }

    v42 = 1;
    v43 = v76;
  }

  return __swift_storeEnumTagSinglePayload(v43, v42, 1, v74);
}

uint64_t sub_268AAAC70()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v112 = v0;
  v113 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v104 = &v100 - v7;
  MEMORY[0x28223BE20](v6);
  v101 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E90, &qword_268B4B318);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E98, &qword_268B4B320);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EA0, &qword_268B4B328);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v103 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EA8, &unk_268B4B330);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v100 - v22;
  v109 = sub_268B35934();
  v107 = *(v109 - 8);
  v24 = *(v107 + 8);
  v25 = MEMORY[0x28223BE20](v109);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v108 = &v100 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6150, qword_268B412C0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v100 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EB0, &unk_268B4B340);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v100 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B98, &qword_268B494B8);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v100 - v39;
  v41 = sub_268B35A94();
  v110 = *(v41 - 8);
  v42 = *(v110 + 64);
  MEMORY[0x28223BE20](v41);
  v111 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5048 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  sub_268AABFC0(&qword_2802A5A98, type metadata accessor for MediaPlayerNLv3Intent);
  sub_268B35C54();
  v44 = sub_268B35C14();
  if (__swift_getEnumTagSinglePayload(v32, 1, v44) == 1)
  {
    v45 = &qword_2802A6150;
    v46 = qword_268B412C0;
    v47 = v32;
LABEL_7:
    sub_2688C058C(v47, v45, v46);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
LABEL_8:
    v50 = &qword_2802A7B98;
    v51 = &qword_268B494B8;
    v52 = v40;
LABEL_9:
    sub_2688C058C(v52, v50, v51);
LABEL_10:
    v53 = v113;
LABEL_11:
    v54 = v112;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v54, qword_2802CDA10);
    (*(v53 + 16))(v5, v55, v54);
    v56 = sub_268B37A34();
    v57 = sub_268B37F04();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v56, v57, "MediaType node is not inferred, or could not find origin details. isMediaTypeExplicitlyMentioned: true.", v58, 2u);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v53 + 8))(v5, v54);
    return 1;
  }

  v48 = sub_268B35C04();
  (*(*(v44 - 8) + 8))(v32, v44);
  sub_268AABAF8(v48, v36);

  v49 = sub_268B35B14();
  if (__swift_getEnumTagSinglePayload(v36, 1, v49) == 1)
  {
    v45 = &qword_2802A7EB0;
    v46 = &unk_268B4B340;
    v47 = v36;
    goto LABEL_7;
  }

  sub_268B35AB4();
  (*(*(v49 - 8) + 8))(v36, v49);
  v60 = v41;
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    goto LABEL_8;
  }

  v62 = v110;
  v61 = v111;
  (*(v110 + 32))(v111, v40, v41);
  sub_268B35A74();
  v63 = v109;
  if (__swift_getEnumTagSinglePayload(v23, 1, v109) == 1)
  {
    (*(v62 + 8))(v61, v41);
    v50 = &qword_2802A7EA8;
    v51 = &unk_268B4B330;
    v52 = v23;
    goto LABEL_9;
  }

  v64 = v107;
  v65 = v108;
  (*(v107 + 4))(v108, v23, v63);
  (*(v64 + 13))(v27, *MEMORY[0x277D5E560], v63);
  v66 = sub_268920830(v65, v27);
  v67 = *(v64 + 1);
  v67(v27, v63);
  if ((v66 & 1) == 0)
  {
    v67(v65, v63);
    (*(v110 + 8))(v111, v41);
    goto LABEL_10;
  }

  v107 = v67;
  v68 = v106;
  v69 = v111;
  sub_268B35A84();
  v70 = sub_268B35954();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v70);
  v53 = v113;
  if (EnumTagSinglePayload == 1)
  {
    v107(v65, v63);
    (*(v110 + 8))(v69, v41);
    sub_2688C058C(v68, &qword_2802A7E98, &qword_268B4B320);
    goto LABEL_11;
  }

  v72 = v68;
  v73 = *(v70 - 8);
  if ((*(v73 + 88))(v72, v70) != *MEMORY[0x277D5E580])
  {
    v107(v65, v63);
    (*(v110 + 8))(v111, v41);
    (*(v73 + 8))(v72, v70);
    goto LABEL_11;
  }

  (*(v73 + 96))(v72, v70);
  v74 = v105;
  sub_268954254(v72, v105, &qword_2802A7EA0, &qword_268B4B328);
  v75 = v103;
  sub_2688C053C(v74, v103, &qword_2802A7EA0, &qword_268B4B328);
  v76 = sub_268B359A4();
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
  {
    sub_2688C058C(v75, &qword_2802A7EA0, &qword_268B4B328);
    v77 = v112;
    v78 = v104;
LABEL_36:
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v87 = __swift_project_value_buffer(v77, qword_2802CDA10);
    (*(v53 + 16))(v78, v87, v77);
    v88 = sub_268B37A34();
    v89 = sub_268B37EC4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = v74;
      v91 = v60;
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2688BB000, v88, v89, "MediaType inferred, but no explanation found or explanation shows it was mentioned by the user. isMediaTypeExplicitlyMentioned: true", v92, 2u);
      MEMORY[0x26D6266E0](v92, -1, -1);

      (*(v53 + 8))(v78, v77);
      sub_2688C058C(v90, &qword_2802A7EA0, &qword_268B4B328);
      v107(v108, v63);
      (*(v110 + 8))(v111, v91);
    }

    else
    {

      (*(v53 + 8))(v78, v77);
      sub_2688C058C(v74, &qword_2802A7EA0, &qword_268B4B328);
      v107(v108, v63);
      (*(v110 + 8))(v111, v60);
    }

    return 1;
  }

  v79 = v102;
  sub_268B35994();
  (*(*(v76 - 8) + 8))(v75, v76);
  v80 = sub_268B35A14();
  v81 = __swift_getEnumTagSinglePayload(v79, 1, v80);
  v78 = v104;
  if (v81 == 1)
  {
    sub_2688C058C(v79, &qword_2802A7E90, &qword_268B4B318);
    v60 = v41;
    v77 = v112;
    goto LABEL_36;
  }

  v82 = sub_268B35A04();
  v84 = v83;
  (*(*(v80 - 8) + 8))(v79, v80);
  v60 = v41;
  v77 = v112;
  if (!v84)
  {
    goto LABEL_36;
  }

  if (v82 == 0xD00000000000001DLL && v84 == 0x8000000268B5C640)
  {
  }

  else
  {
    v86 = sub_268B38444();

    if ((v86 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v93 = __swift_project_value_buffer(v77, qword_2802CDA10);
  v94 = v101;
  (*(v53 + 16))(v101, v93, v77);
  v95 = sub_268B37A34();
  v96 = sub_268B37EC4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = v77;
    v98 = v60;
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_2688BB000, v95, v96, "MediaType inferred, and the user didn't explicitly mention it. This is possibly a SmartPlay reformation. isMediaTypeExplicitlyMentioned: false", v99, 2u);
    MEMORY[0x26D6266E0](v99, -1, -1);

    (*(v53 + 8))(v94, v97);
    sub_2688C058C(v74, &qword_2802A7EA0, &qword_268B4B328);
    v107(v108, v63);
    (*(v110 + 8))(v111, v98);
  }

  else
  {

    (*(v53 + 8))(v94, v77);
    sub_2688C058C(v74, &qword_2802A7EA0, &qword_268B4B328);
    v107(v108, v63);
    (*(v110 + 8))(v111, v60);
  }

  return 0;
}

uint64_t sub_268AABAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_268B35B14();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_268B35B14();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_268AABBDC(uint64_t a1)
{
  v2 = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268AABC58(uint64_t a1)
{
  v2 = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268AABCC4(uint64_t a1)
{
  v2 = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268AABDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268AABE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_268AABE54(uint64_t a1)
{
  result = sub_268AABFC0(&qword_2802A7F08, type metadata accessor for MediaPlayerNLv3Intent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AABEAC(uint64_t a1)
{
  *(a1 + 8) = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent);
  result = sub_268AABFC0(&qword_2802A7F18, type metadata accessor for MediaPlayerNLv3Intent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268AABFC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268AAC008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerNLv3Intent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268AAC0B4(void *a1, char a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_268B3BBA0;
    *(v5 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34CF4() & 1) != 0 || (a2)
  {
    [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    MEMORY[0x26D6256C0]();
    OUTLINED_FUNCTION_0_48(v5);
    if (v8)
    {
      OUTLINED_FUNCTION_1_52(v7);
      sub_268B37D14();
    }

    sub_268B37D44();
  }

  return v5;
}

uint64_t sub_268AAC1F4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_268B3BBA0;
    *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2688C3308() & 1) != 0 || (v5 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_268B34CF4()))
  {
    [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    MEMORY[0x26D6256C0]();
    OUTLINED_FUNCTION_0_48(v3);
    if (v7)
    {
      OUTLINED_FUNCTION_1_52(v6);
      sub_268B37D14();
    }

    sub_268B37D44();
  }

  return v3;
}

uint64_t sub_268AAC34C(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_268B3BBA0;
    *(v6 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2688C3308())
  {
    v8 = sub_2688EFD0C(a2);
    for (i = 0; v8 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D625BD0](i, a2);
      }

      else
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v10)
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = [v11 context];
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = v13;
      v15 = [v13 proximity];

      if ((v15 - 1) < 4)
      {
        goto LABEL_13;
      }

      if (v15)
      {
        result = sub_268B38474();
        __break(1u);
        return result;
      }

      v16 = [v12 context];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 nowPlayingMediaType];

        if (v18 == 7)
        {
          *a3 = 1;
          goto LABEL_21;
        }
      }

      else
      {
LABEL_13:
      }
    }
  }

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_268B34CF4();
  v21 = v6;
  if (v20)
  {
LABEL_21:
    [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    MEMORY[0x26D6256C0]();
    OUTLINED_FUNCTION_0_48(v6);
    if (v22)
    {
LABEL_26:
      OUTLINED_FUNCTION_1_52(v10);
      sub_268B37D14();
    }

    sub_268B37D44();
    return v6;
  }

  return v21;
}

void OUTLINED_FUNCTION_0_48(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_268AAC60C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7F70, qword_268B4B548);
  v7 = *(*(v38 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v38);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  sub_268B35E24();
  v14 = sub_268B35E34();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    goto LABEL_2;
  }

  v26 = v3;
  sub_268AACB70(v13, v11);
  v27 = *(v14 - 8);
  v28 = (*(v27 + 88))(v11, v14);
  if (v28 == *MEMORY[0x277D5E920])
  {
    v29 = MEMORY[0x277D5E630];
LABEL_22:
    v33 = *v29;
    v34 = sub_268B35AA4();
    (*(*(v34 - 8) + 104))(a1, v33, v34);
    v31 = a1;
    v32 = 0;
    v30 = v34;
    goto LABEL_23;
  }

  if (v28 == *MEMORY[0x277D5E978])
  {
    v29 = MEMORY[0x277D5E620];
    goto LABEL_22;
  }

  if (v28 == *MEMORY[0x277D5E970])
  {
    v29 = MEMORY[0x277D5E618];
    goto LABEL_22;
  }

  if (v28 == *MEMORY[0x277D5E940])
  {
    v29 = MEMORY[0x277D5E5E8];
    goto LABEL_22;
  }

  if (v28 == *MEMORY[0x277D5E948])
  {
    v29 = MEMORY[0x277D5E5F0];
    goto LABEL_22;
  }

  if (v28 == *MEMORY[0x277D5E928])
  {
    v29 = MEMORY[0x277D5E5E0];
    goto LABEL_22;
  }

  if (v28 == *MEMORY[0x277D5E950])
  {
    v29 = MEMORY[0x277D5E5F8];
    goto LABEL_22;
  }

  (*(v27 + 8))(v11, v14);
  v3 = v26;
LABEL_2:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v6, v15, v2);

  v16 = sub_268B37A34();
  v17 = sub_268B37EE4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a1;
    v21 = v20;
    v39 = v20;
    *v19 = 136315138;
    sub_268B35E24();
    v22 = sub_268B37C24();
    v24 = sub_26892CDB8(v22, v23, &v39);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_2688BB000, v16, v17, "UsoEntityCommonTimeUnit#getPeriod case not yet implemented %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v25 = v21;
    a1 = v37;
    MEMORY[0x26D6266E0](v25, -1, -1);
    MEMORY[0x26D6266E0](v19, -1, -1);

    (*(v36 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v30 = sub_268B35AA4();
  v31 = a1;
  v32 = 1;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  return sub_268AACB08(v13);
}

uint64_t sub_268AACB08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7F70, qword_268B4B548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268AACB70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7F70, qword_268B4B548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268AACBE0()
{
  if (qword_2802A50B0 != -1)
  {
    swift_once();
  }

  v0 = sub_268B37BC4();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = sub_26892E248(v1, qword_2802A7F78);
  swift_endAccess();
  return v2;
}

uint64_t sub_268AACC9C()
{
  result = sub_268B37B84();
  qword_2802A7F78 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268AACDB8);
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

unint64_t sub_268AACDF4()
{
  result = qword_2802A7F80;
  if (!qword_2802A7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F80);
  }

  return result;
}

uint64_t sub_268AACE48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v5 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = (v55 - v6);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v56 = v55 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v55 - v15;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __swift_project_value_buffer(v7, qword_2802CDA10);
    v18 = v8[2];
    v18(v16, v17, v7);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v55[0] = v18;
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "SeekTimeConfirmIntentStrategy.makePromptForConfirmation()", v21, 2u);
      v18 = v55[0];
      OUTLINED_FUNCTION_12();
    }

    v23 = v8[1];
    ++v8;
    v22 = v23;
    v23(v16, v7);
    v24 = sub_268B18100();
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v55[0] = v22;
    v26 = sub_2688EFD0C(v24);
    if (!v26)
    {

      v22 = v55[0];
      break;
    }

    v27 = v26;
    v28 = v56;
    v18(v56, v17, v7);
    v16 = v28;
    v29 = sub_268B37A34();
    v12 = sub_268B37EC4();
    if (os_log_type_enabled(v29, v12))
    {
      v16 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v16 = 136315138;
      v31 = type metadata accessor for Device();
      v32 = MEMORY[0x26D6256F0](v25, v31);
      v8 = v33;
      v34 = sub_26892CDB8(v32, v33, &v61);

      *(v16 + 4) = v34;
      _os_log_impl(&dword_2688BB000, v29, v12, "Confirming devices: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (v55[0])(v56, v7);
    }

    else
    {

      (v55[0])(v28, v7);
    }

    v7 = 0;
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 == v7)
      {

        v54 = *(v55[1] + 56);
        sub_268AB1E30(v42, v59, v60);
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x26D625BD0](v7, v25);
      }

      else
      {
        if (v7 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v43 = *(v25 + 8 * v7 + 32);
      }

      v8 = v43;
      v12 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v44 = sub_268988580(v43);
      if (v45)
      {
        v46 = v44;
        v16 = v45;

        goto LABEL_23;
      }

      v46 = sub_268988568(v8);
      v16 = v47;

      ++v7;
      if (v16)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = *(v42 + 16);
          sub_2689876A4();
          v42 = v52;
        }

        v48 = *(v42 + 16);
        v49 = v42;
        if (v48 >= *(v42 + 24) >> 1)
        {
          sub_2689876A4();
          v49 = v53;
        }

        *(v49 + 16) = v48 + 1;
        v42 = v49;
        v50 = v49 + 16 * v48;
        *(v50 + 32) = v46;
        *(v50 + 40) = v16;
        v7 = v12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v18(v12, v17, v7);
  v35 = sub_268B37A34();
  v36 = sub_268B37EE4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "Could not find any devices in the intent for confirmation", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22(v12, v7);
  sub_2688C2ECC();
  v38 = swift_allocError();
  *v39 = 50;
  v40 = v57;
  *v57 = v38;
  swift_storeEnumTagMultiPayload();
  v59(v40);
  return sub_268919854(v40);
}

void sub_268AAD45C()
{
  type metadata accessor for SeekTimeConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268AAD4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AAD59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SeekTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268AAD62C(uint64_t a1)
{
  result = sub_268AAD654();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268AAD654()
{
  result = qword_2802A7F88;
  if (!qword_2802A7F88)
  {
    type metadata accessor for SeekTimeConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F88);
  }

  return result;
}

uint64_t sub_268AAD6A8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v53 = (&v51 - v7);
  v8 = sub_268B37A54();
  v9 = *(v8 - 1);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  inited = &v51 - v15;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v17 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v18 = v9[2];
    v18(inited, v17, v8);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "WhatDidTheySayConfirmIntentStrategy.makeDialogForConfirmation()", v21, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = v9[1];
    v22(inited, v8);
    v23 = [a2 device];
    if (!v23)
    {
      break;
    }

    a2 = v23;
    v18(v56, v17, v8);
    v24 = a2;
    v25 = sub_268B37A34();
    v26 = sub_268B37EC4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = a2;
      v29 = v24;
      _os_log_impl(&dword_2688BB000, v25, v26, "Confirming device: %@", v27, 0xCu);
      sub_2688EF38C(v28, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v22(v56, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    *(inited + 32) = v24;
    v9 = (inited & 0xFFFFFFFFFFFFFF8);
    v8 = v24;
    v30 = MEMORY[0x277D84F90];
    if ((inited & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D625BD0](0, inited);
LABEL_10:
      v32 = v31;
      v33 = sub_268988580(v31);
      if (v34)
      {
        v35 = v33;
        v36 = v34;

        goto LABEL_13;
      }

      v35 = sub_268988568(v32);
      v36 = v37;

      if (v36)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = *(v30 + 16);
          sub_2689876A4();
          v30 = v41;
        }

        v38 = *(v30 + 16);
        if (v38 >= *(v30 + 24) >> 1)
        {
          sub_2689876A4();
          v30 = v42;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = v36;
      }

      swift_setDeallocating();
      sub_268ACE718();
      sub_268A38304(v30, v54, v55);
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v44 = v51;
  v18(v51, v17, v8);
  v45 = sub_268B37A34();
  v46 = sub_268B37EE4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v45, v46, "Could not find any devices in the intent for confirmation", v47, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22(v44, v8);
  sub_2688C2ECC();
  v48 = swift_allocError();
  *v49 = -111;
  v50 = v53;
  *v53 = v48;
  swift_storeEnumTagMultiPayload();
  v54(v50);
  return sub_2688EF38C(v50, &qword_2802A6300, &unk_268B3BD80);
}

void sub_268AADC88()
{
  type metadata accessor for WhatDidTheySayConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268AADD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AADDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for WhatDidTheySayConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268AADE64(uint64_t a1)
{
  result = sub_268AADE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268AADE8C()
{
  result = qword_2802A7F90;
  if (!qword_2802A7F90)
  {
    type metadata accessor for WhatDidTheySayConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F90);
  }

  return result;
}

void sub_268AADEE0(uint64_t a1@<X8>)
{
  *&v1 = OUTLINED_FUNCTION_183_1(a1);
  *(v2 + 76) = v1;
  *(v2 + 96) = v3;
}

void sub_268AADF00(uint64_t a1@<X8>)
{
  *&v1 = OUTLINED_FUNCTION_183_1(a1);
  *(v2 + 76) = v1;
  *(v2 + 92) = v3;
}

void sub_268AADF24(uint64_t a1@<X8>)
{
  *&v1 = OUTLINED_FUNCTION_183_1(a1);
  *(v2 + 77) = v1;
  *(v2 + 93) = v3;
}

void sub_268AADF44()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8328, &qword_268B4D088);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2CB8();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v14[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC2D0C(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v14, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v12 = OUTLINED_FUNCTION_59_3();
  v13(v12);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AAE0F0()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8338, &qword_268B4D090);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2CB8();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_141_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v6 = OUTLINED_FUNCTION_36_11();
    sub_268918D64(v6);
  }

  else
  {
    v23 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v7 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v7);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v8 = v22[14];
    v10 = v22[15];
    v9 = v22[16];
    v31 = v22[17];
    v21 = v22[18];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v22, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v11 = OUTLINED_FUNCTION_17_19();
    v12(v11);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v14 = OUTLINED_FUNCTION_119_1(v13);
    sub_268AC2D0C(v14, v15);
    OUTLINED_FUNCTION_138_1(v0);
    v24 = v20;
    OUTLINED_FUNCTION_179_1();
    v25 = v16;
    v26 = v8;
    v27 = v10;
    v28 = v9;
    v29 = v31;
    v30 = v21;
    OUTLINED_FUNCTION_23_20();
    v17 = OUTLINED_FUNCTION_113_2();
    sub_268918D64(v17);
    v18 = OUTLINED_FUNCTION_176_1();
    memcpy(v18, v19, 0x5CuLL);
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AAE45C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268AB9A2C();
  *a1 = result;
  return result;
}

uint64_t sub_268AAE484(uint64_t a1)
{
  v2 = sub_268AC2CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AAE4C0(uint64_t a1)
{
  v2 = sub_268AC2CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AAE764(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461657065527369 && a2 == 0xEA00000000006465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_268AAE800()
{
  OUTLINED_FUNCTION_213_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8318, &qword_268B4D080);
  OUTLINED_FUNCTION_1(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2C64();
  OUTLINED_FUNCTION_92_6();
  sub_268B383B4();
  v4 = OUTLINED_FUNCTION_115_1();
  v5(v4);
  OUTLINED_FUNCTION_212_1();
}

void sub_268AAE8EC()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_201_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8340, &qword_268B4D098);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268AC2C64();
  OUTLINED_FUNCTION_75_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38344();
    v8 = OUTLINED_FUNCTION_62_5();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268AAE9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AAE764(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268AAEA1C(uint64_t a1)
{
  v2 = sub_268AC2C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AAEA58(uint64_t a1)
{
  v2 = sub_268AC2C64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AAEA94(_BYTE *a1@<X8>)
{
  sub_268AAE8EC();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_268AAEAE0()
{
  OUTLINED_FUNCTION_35_12();
  v32 = *MEMORY[0x277D85DE8];
  HIBYTE(v29) = v1;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268AC1060();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_126_1();
  v9 = OUTLINED_FUNCTION_50_6(v2, sel_JSONObjectWithData_options_error_, v3, v4, v5, v6, v7, v8, v26, v28, v29, v30);

  if (v9)
  {
    v10 = v31;
    OUTLINED_FUNCTION_188_1();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_185_1())
    {
      v11 = v27;
    }

    else
    {
      v11 = sub_268B37B84();
    }

    v16 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v16, v17);
  }

  else
  {
    v12 = v31;
    OUTLINED_FUNCTION_23_15();
    v13 = sub_268B34514();

    swift_willThrow();
    v14 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v14, v15);
    v11 = sub_268B37B84();
  }

  v18 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v18, v11);
  OUTLINED_FUNCTION_12_25();
  v19 = OUTLINED_FUNCTION_11_23(32);
  OUTLINED_FUNCTION_53_5(v19, v20, v21, v22, v23);

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268AAED7C(uint64_t a1)
{
  v2 = sub_268AC2C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AAEDB8(uint64_t a1)
{
  v2 = sub_268AC2C10();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AAEDF4(void *a1@<X8>)
{
  sub_268AAF248();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_268AAF0C4()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1_15(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_62_3();
  v14 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  OUTLINED_FUNCTION_88_3();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518);
  sub_268B383D4();
  (*(v10 + 8))(v1, v0);
  OUTLINED_FUNCTION_198();
}

void sub_268AAF248()
{
  OUTLINED_FUNCTION_197();
  v4 = v3;
  v7 = OUTLINED_FUNCTION_118_1(v5, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_1(v9);
  v15 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75();
  v14 = OUTLINED_FUNCTION_30_13();
  v4(v14);
  OUTLINED_FUNCTION_9_19();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    OUTLINED_FUNCTION_10_20(&qword_2802A7610);
    OUTLINED_FUNCTION_137_1();
    sub_268B38364();
    (*(v15 + 8))(v2, v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AAF384(uint64_t a1)
{
  v2 = sub_268AC2BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AAF3C0(uint64_t a1)
{
  v2 = sub_268AC2BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AAF3FC(void *a1@<X8>)
{
  sub_268AAF248();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268AAF714(uint64_t a1)
{
  v2 = sub_268AC25F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AAF750(uint64_t a1)
{
  v2 = sub_268AC25F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AAF7D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

uint64_t sub_268AAF81C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_268B38444();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268AAFA14(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0x6F52656D61537369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268AAFAEC()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A82E8, &qword_268B4D068);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2B30();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v14[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC2B84(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v14, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v12 = OUTLINED_FUNCTION_59_3();
  v13(v12);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AAFC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8358, &qword_268B4D0B0);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24_13();
  v33 = v10;
  OUTLINED_FUNCTION_58_6();
  sub_268AC2B30();
  OUTLINED_FUNCTION_21_12();
  if (v11)
  {
    OUTLINED_FUNCTION_30_16();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v61[0] = 0;
    v61[1] = 0;
    v62 = 0;
    v63 = v77;
    v64 = v78;
    v65 = v38;
    v66 = v36;
    v67 = 1;
    v68 = v31;
    v69 = v34;
    v70 = a10;
    v71 = v42;
    v72 = v12;
    v73 = v13;
    v74 = v14;
    v75 = v15;
    v76 = v40;
    sub_2689C3F70(v61);
  }

  else
  {
    v61[0] = 0;
    OUTLINED_FUNCTION_8_20();
    v30 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(1);
    v29 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(2);
    v19 = sub_268B38344() & 1;
    v49[31] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v32 = v12;
    v37 = v51;
    v39 = v50;
    v20 = v53;
    v25 = v52;
    v35 = v54;
    v79 = v55;
    v21 = v57;
    v43 = v56;
    v27 = v59;
    v28 = v58;
    v26 = v60;
    v46[0] = 0;
    v46[1] = 0;
    v46[2] = 1;
    v47 = 0u;
    v48 = 0u;
    memset(v49, 0, 25);
    sub_268AC1E28(v46, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    v41 = sub_268B38344() & 1;
    v45 = 5;
    OUTLINED_FUNCTION_8_19();
    v22 = sub_268B38344();
    v23 = OUTLINED_FUNCTION_17_19();
    v24(v23);
    v44[0] = v30;
    v44[1] = v29;
    v44[2] = v19;
    *&v44[8] = v39;
    *&v44[16] = v37;
    *&v44[24] = v25;
    *&v44[32] = v20;
    *&v44[40] = v35;
    *&v44[48] = v79;
    *&v44[56] = v43;
    *&v44[64] = v21;
    *&v44[72] = v28;
    *&v44[80] = v27;
    v44[88] = v26;
    v44[89] = v41;
    v44[90] = v22 & 1;
    sub_268AC2B84(v44, v61);
    OUTLINED_FUNCTION_138_1(v33);
    v62 = v19;
    v65 = v39;
    v66 = v37;
    v67 = v25;
    v68 = v20;
    v69 = v35;
    v70 = v79;
    v71 = v43;
    v72 = v21;
    v73 = v28;
    v74 = v27;
    v75 = v26;
    LOBYTE(v76) = v41;
    HIBYTE(v76) = v22 & 1;
    sub_2689C3F70(v61);
    memcpy(v32, v44, 0x5BuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB00A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AAF81C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB00C8(uint64_t a1)
{
  v2 = sub_268AC2B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB0104(uint64_t a1)
{
  v2 = sub_268AC2B30();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB0140(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_268AAFC80(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x5BuLL);
  }
}

void sub_268AB040C()
{
  OUTLINED_FUNCTION_197();
  v9 = OUTLINED_FUNCTION_166_0(v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_15(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_62_3();
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v2();
  OUTLINED_FUNCTION_88_3();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518);
  OUTLINED_FUNCTION_65_5();
  sub_268B383D4();
  if (!v16)
  {
    sub_268B383B4();
  }

  (*(v11 + 8))(v1, v0);
  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_198();
}

void sub_268AB0598()
{
  OUTLINED_FUNCTION_197();
  v4 = v3;
  v7 = OUTLINED_FUNCTION_118_1(v5, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_1(v15);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75();
  v14 = OUTLINED_FUNCTION_30_13();
  v4(v14);
  OUTLINED_FUNCTION_9_19();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    OUTLINED_FUNCTION_10_20(&qword_2802A7610);
    OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_184_1();
    (*(v10 + 8))(v2, v10);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB06F4(uint64_t a1)
{
  v2 = sub_268AC2ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB0730(uint64_t a1)
{
  v2 = sub_268AC2ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB07B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

uint64_t sub_268AB0A6C(uint64_t a1)
{
  v2 = sub_268AC2A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB0AA8(uint64_t a1)
{
  v2 = sub_268AC2A88();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB0AE4(void *a1@<X8>)
{
  sub_268AAF248();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268AB0D70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000010 && 0x8000000268B5B7D0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268AB0FF4(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268AB1114()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A82B8, &qword_268B4D050);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC29FC();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v16[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    v7 = v1[1];
    v16[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v8 = v1[2];
    v16[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v9 = OUTLINED_FUNCTION_144_1();
    sub_268AC2A50(v9, v10);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    OUTLINED_FUNCTION_121_0();
    memcpy(v11, v12, v13);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383D4();
  }

  v14 = OUTLINED_FUNCTION_59_3();
  v15(v14);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB1334()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8370, &qword_268B4D0C8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC29FC();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_29_15();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    OUTLINED_FUNCTION_61_5();
    sub_268AC1E28(v17, &qword_2802A5C88);
  }

  else
  {
    v17[0] = 0;
    OUTLINED_FUNCTION_45_7();
    sub_268B38344();
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_5_16(v6);
    sub_268B38344();
    OUTLINED_FUNCTION_178_1();
    OUTLINED_FUNCTION_5_16(v7);
    v8 = sub_268B38344();
    OUTLINED_FUNCTION_177_0(v8);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_26_16();
    v18[0] = 0;
    v18[1] = 0;
    v18[2] = 1;
    OUTLINED_FUNCTION_40_10(v9);
    sub_268AC1E28(v18, &qword_2802A5C88);
    OUTLINED_FUNCTION_5_16(4);
    sub_268B38344();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_5_16(v10);
    sub_268B38344();
    OUTLINED_FUNCTION_5_16(6);
    v11 = sub_268B38344();
    OUTLINED_FUNCTION_168_1(v11);
    OUTLINED_FUNCTION_44_7();
    sub_268B38364();
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_218_1(0);
    v12 = OUTLINED_FUNCTION_17_19();
    v13(v12);
    OUTLINED_FUNCTION_31_18();
    v14 = OUTLINED_FUNCTION_47_8();
    sub_268AC2A50(v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v16 = OUTLINED_FUNCTION_37_15();
    sub_268A30A90(v16);
    OUTLINED_FUNCTION_207_1();
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB15F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB0D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB1620(uint64_t a1)
{
  v2 = sub_268AC29FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB165C(uint64_t a1)
{
  v2 = sub_268AC29FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AB19A0(uint64_t a1)
{
  v2 = sub_268AC29A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB19DC(uint64_t a1)
{
  v2 = sub_268AC29A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB1A5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

uint64_t sub_268AB1D18(uint64_t a1)
{
  v2 = sub_268AC2954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB1D54(uint64_t a1)
{
  v2 = sub_268AC2954();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB1D90(void *a1@<X8>)
{
  sub_268AAF248();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_268AB2034()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_193_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8288, &qword_268B4D038);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_133_1();
  sub_268AC28C8();
  OUTLINED_FUNCTION_155_1();
  sub_268B38584();
  OUTLINED_FUNCTION_206_1();
  sub_268AC291C(v1, v9);
  sub_268A35520();
  OUTLINED_FUNCTION_2_25();
  sub_268B383A4();
  OUTLINED_FUNCTION_150_0();
  sub_268AC1E28(v9, &qword_2802A5C88);
  v6 = *v0;
  v7 = OUTLINED_FUNCTION_153_0();
  v8(v7);
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268AB219C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268ABDEF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268AB21C8(uint64_t a1)
{
  v2 = sub_268AC28C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB2204(uint64_t a1)
{
  v2 = sub_268AC28C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB24F4()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_193_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8278, &qword_268B4D030);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_133_1();
  sub_268AC283C();
  OUTLINED_FUNCTION_155_1();
  sub_268B38584();
  OUTLINED_FUNCTION_206_1();
  sub_268AC2890(v1, v9);
  sub_268A35520();
  OUTLINED_FUNCTION_2_25();
  sub_268B383A4();
  OUTLINED_FUNCTION_150_0();
  sub_268AC1E28(v9, &qword_2802A5C88);
  v6 = *v0;
  v7 = OUTLINED_FUNCTION_153_0();
  v8(v7);
  OUTLINED_FUNCTION_212_1();
}

void sub_268AB2658()
{
  OUTLINED_FUNCTION_197();
  v2 = v1;
  v4 = v3;
  v20 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1(v8);
  v17 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-1] - v13;
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_268B38574();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    v16 = v17;
    sub_268A356BC();
    sub_268B38334();
    (*(v16 + 8))(v14, v8);
    memcpy(v18, v19, 0x51uLL);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    memcpy(v20, v18, 0x51uLL);
  }

  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB27F0(uint64_t a1)
{
  v2 = sub_268AC283C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB282C(uint64_t a1)
{
  v2 = sub_268AC283C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AB2900()
{
  OUTLINED_FUNCTION_28_19();
  v33 = *MEMORY[0x277D85DE8];
  memcpy(__dst, v2, sizeof(__dst));
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268AC0D18();
  OUTLINED_FUNCTION_83_3();
  if (v0)
  {

LABEL_5:
    v3 = sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v11 = OUTLINED_FUNCTION_224_1(v4, sel_JSONObjectWithData_options_error_, v5, v6, v7, v8, v9, v10, v27, v29, v30);

  if (!v11)
  {
    v13 = v31;
    OUTLINED_FUNCTION_23_15();
    v14 = sub_268B34514();

    swift_willThrow();
    v15 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v15, v16);
    goto LABEL_5;
  }

  v12 = v31;
  sub_268B380E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if (OUTLINED_FUNCTION_185_1())
  {
    v3 = v28;
  }

  else
  {
    v3 = sub_268B37B84();
  }

  v17 = OUTLINED_FUNCTION_29_12();
  sub_268910B4C(v17, v18);
LABEL_12:
  v19 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v19, v3);
  OUTLINED_FUNCTION_12_25();
  v20 = OUTLINED_FUNCTION_11_23(39);
  OUTLINED_FUNCTION_53_5(v20, v21, v22, v23, v24);

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268AB2B1C()
{
  OUTLINED_FUNCTION_28_19();
  v33 = *MEMORY[0x277D85DE8];
  memcpy(__dst, v2, sizeof(__dst));
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268AC0CC4();
  OUTLINED_FUNCTION_83_3();
  if (v0)
  {

LABEL_5:
    v3 = sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v11 = OUTLINED_FUNCTION_224_1(v4, sel_JSONObjectWithData_options_error_, v5, v6, v7, v8, v9, v10, v27, v29, v30);

  if (!v11)
  {
    v13 = v31;
    OUTLINED_FUNCTION_23_15();
    v14 = sub_268B34514();

    swift_willThrow();
    v15 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v15, v16);
    goto LABEL_5;
  }

  v12 = v31;
  sub_268B380E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if (OUTLINED_FUNCTION_185_1())
  {
    v3 = v28;
  }

  else
  {
    v3 = sub_268B37B84();
  }

  v17 = OUTLINED_FUNCTION_29_12();
  sub_268910B4C(v17, v18);
LABEL_12:
  v19 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v19, v3);
  OUTLINED_FUNCTION_12_25();
  v20 = OUTLINED_FUNCTION_11_23(31);
  OUTLINED_FUNCTION_53_5(v20, v21, v22, v23, v24);

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268AB2D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F537369 && a2 == 0xEF676E697373694DLL;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000268B5CF20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_268B38444();

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

uint64_t sub_268AB2E58(char a1)
{
  if (!a1)
  {
    return 0x72656B61657073;
  }

  if (a1 == 1)
  {
    return 0x656372756F537369;
  }

  return 0xD000000000000014;
}

void sub_268AB2EC0()
{
  OUTLINED_FUNCTION_197();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8268, &qword_268B4D028);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC27B0();
  OUTLINED_FUNCTION_25_13();
  memcpy(v14, v0, 0x51uLL);
  sub_268AC2804(v0, v13);
  sub_268A35520();
  OUTLINED_FUNCTION_18_18();
  sub_268B383A4();
  OUTLINED_FUNCTION_121_0();
  if (v1)
  {
    memcpy(v6, v7, v8);
    sub_268AC1E28(v13, &qword_2802A5C88);
  }

  else
  {
    memcpy(v6, v7, v8);
    sub_268AC1E28(v13, &qword_2802A5C88);
    v9 = v0[81];
    OUTLINED_FUNCTION_7_31(1);
    sub_268B383B4();
    v10 = v0[82];
    OUTLINED_FUNCTION_7_31(2);
    sub_268B383B4();
  }

  v11 = OUTLINED_FUNCTION_59_3();
  v12(v11);
  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_198();
}

void sub_268AB3048()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A83A0, &qword_268B4D0F0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_13();
  v18 = v0;
  OUTLINED_FUNCTION_58_6();
  sub_268AC27B0();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v39 = 0;
    v40 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    sub_26891864C(&v39);
  }

  else
  {
    v27[31] = 0;
    sub_268A356BC();
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v20 = v29;
    v21 = v28;
    v19 = v31;
    v16 = v32;
    v17 = v30;
    v15 = v33;
    v8 = v34;
    v7 = v35;
    v13 = v2;
    v14 = v36;
    v9 = v37;
    v51 = v38;
    v24[0] = 0;
    v24[1] = 0;
    v24[2] = 1;
    v25 = 0u;
    v26 = 0u;
    memset(v27, 0, 25);
    sub_268AC1E28(v24, &qword_2802A5C88);
    LOBYTE(v39) = 1;
    OUTLINED_FUNCTION_8_19();
    v52 = sub_268B38344() & 1;
    v23 = 2;
    OUTLINED_FUNCTION_8_19();
    v10 = sub_268B38344();
    v11 = OUTLINED_FUNCTION_17_19();
    v12(v11);
    *v22 = v21;
    *&v22[8] = v20;
    *&v22[16] = v17;
    *&v22[24] = v19;
    *&v22[32] = v16;
    *&v22[40] = v15;
    *&v22[48] = v8;
    *&v22[56] = v7;
    *&v22[64] = v14;
    *&v22[72] = v9;
    v22[80] = v51;
    v22[81] = v52;
    v22[82] = v10 & 1;
    sub_268AC2804(v22, &v39);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v39 = v21;
    v40 = v20;
    v41 = v17;
    v42 = v19;
    v43 = v16;
    v44 = v15;
    v45 = v8;
    v46 = v7;
    v47 = v14;
    v48 = v9;
    v49 = v51;
    LOBYTE(v50) = v52;
    HIBYTE(v50) = v10 & 1;
    sub_26891864C(&v39);
    memcpy(v13, v22, 0x53uLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB3384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB2D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB33AC(uint64_t a1)
{
  v2 = sub_268AC27B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB33E8(uint64_t a1)
{
  v2 = sub_268AC27B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB3424(void *a1@<X8>)
{
  sub_268AB3048();
  if (!v1)
  {
    memcpy(a1, __src, 0x53uLL);
  }
}

uint64_t sub_268AB34C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000268B5CE80 == a2;
                if (v12 || (sub_268B38444() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C62616E457369 && a2 == 0xEE00746165706552)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268B38444();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268AB3798(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x656C62616E457369;
      break;
    default:
      return result;
  }

  return result;
}