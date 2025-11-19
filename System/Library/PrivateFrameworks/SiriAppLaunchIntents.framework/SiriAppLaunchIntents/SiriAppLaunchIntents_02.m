void sub_2660E6778()
{
  OUTLINED_FUNCTION_6_0();
  v72 = v0;
  v73 = v1;
  v70 = type metadata accessor for AppLaunchIntent();
  v2 = OUTLINED_FUNCTION_16(v70);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v6 - v5);
  v7 = sub_26618B790();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_4(&v64 - v20);
  v21 = sub_26618B800();
  v22 = OUTLINED_FUNCTION_2_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v28 - v27);
  v68 = sub_26618C0E0();
  v29 = OUTLINED_FUNCTION_2_2(v68);
  v67 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v34 - v33);
  v35 = sub_26618C6B0();
  v36 = OUTLINED_FUNCTION_2_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_4();
  v43 = v42 - v41;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v44 = __swift_project_value_buffer(v35, qword_2814B4A98);
  (*(v38 + 16))(v43, v44, v35);
  v45 = sub_26618C690();
  v46 = sub_26618CAA0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_6_2();
    v65 = v15;
    *v47 = 0;
    _os_log_impl(&dword_2660B7000, v45, v46, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v47, 2u);
    v15 = v65;
    OUTLINED_FUNCTION_7_2();
  }

  (*(v38 + 8))(v43, v35);
  v48 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_48_0();
  if (__swift_getEnumTagSinglePayload(v48, 1, v7))
  {
    sub_2660BF79C(v48, &qword_28005C060, &qword_26618FD10);
LABEL_19:
    v57 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_20;
  }

  (*(v10 + 16))(v15, v48, v7);
  sub_2660BF79C(v48, &qword_28005C060, &qword_26618FD10);
  v49 = v71;
  sub_26618B770();
  (*(v10 + 8))(v15, v7);
  if ((*(v24 + 88))(v49, v21) != *MEMORY[0x277D5C128])
  {
    v61 = *(v24 + 8);
    v24 += 8;
    v61(v49, v21);
    goto LABEL_19;
  }

  (*(v24 + 96))(v49, v21);
  v50 = v67;
  v51 = v66;
  v52 = v49;
  v53 = v68;
  (*(v67 + 32))(v66, v52, v68);
  v54 = v69;
  (*(v50 + 16))(v69, v51, v53);
  if (qword_2814B3DB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_3();
  v24 = sub_2660E9668(v55, v56);
  sub_26618BDA0();
  if (v75)
  {
    goto LABEL_14;
  }

  if (qword_2814B3DD0 != -1)
  {
    swift_once();
  }

  sub_26618BDA0();
  if (v75)
  {
LABEL_14:

    v57 = 1;
  }

  else
  {
    v57 = 0;
  }

  if (qword_2814B3D38 != -1)
  {
    swift_once();
  }

  sub_26618BDA0();
  OUTLINED_FUNCTION_2_10();
  sub_2660E850C(v54, v58);
  (*(v50 + 8))(v51, v53);
  v59 = v74;
  v60 = v75;
LABEL_20:
  sub_2660C5864(v35 + 56, &v76);
  sub_2660E83E4(v35 + 416, &v74);
  v62 = swift_allocObject();
  OUTLINED_FUNCTION_47_0(v62);
  *(v24 + 112) = v57;
  *(v24 + 120) = v59;
  *(v24 + 128) = v60;
  v63 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v63);
  v74 = sub_26618AC80();
  sub_26618B340();

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660E6E24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26617A4E0();
}

void sub_2660E6EEC()
{
  OUTLINED_FUNCTION_6_0();
  v93 = v0;
  v94 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_4(&v85 - v6);
  v89 = type metadata accessor for AppLaunchIntent();
  v7 = OUTLINED_FUNCTION_16(v89);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v11 - v10);
  v12 = sub_26618B790();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_4(&v85 - v25);
  v26 = sub_26618B800();
  v27 = OUTLINED_FUNCTION_2_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v33 - v32);
  v88 = sub_26618C0E0();
  v34 = OUTLINED_FUNCTION_2_2(v88);
  v87 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v39 - v38);
  v40 = sub_26618C6B0();
  v41 = OUTLINED_FUNCTION_2_2(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_4();
  v48 = v47 - v46;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  __swift_project_value_buffer(v40, qword_2814B4A98);
  OUTLINED_FUNCTION_28_1();
  v49(v48);
  v50 = sub_26618C690();
  v51 = sub_26618CAA0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_6_2();
    v85 = v20;
    *v52 = 0;
    _os_log_impl(&dword_2660B7000, v50, v51, "A failure occured at some point", v52, 2u);
    v20 = v85;
    OUTLINED_FUNCTION_7_2();
  }

  (*(v43 + 8))(v48, v40);
  v53 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_48_0();
  if (__swift_getEnumTagSinglePayload(v53, 1, v12))
  {
    v54 = &qword_28005C060;
    v55 = &qword_26618FD10;
    v56 = v53;
LABEL_7:
    sub_2660BF79C(v56, v54, v55);
LABEL_14:
    v78 = 0;
    v79 = 0;
    goto LABEL_15;
  }

  (*(v15 + 16))(v20, v53, v12);
  sub_2660BF79C(v53, &qword_28005C060, &qword_26618FD10);
  v57 = v92;
  sub_26618B770();
  (*(v15 + 8))(v20, v12);
  v58 = v29[11];
  v59 = OUTLINED_FUNCTION_46_0();
  if (v60(v59) != *MEMORY[0x277D5C128])
  {
    v75 = v29[1];
    v76 = OUTLINED_FUNCTION_46_0();
    v77(v76);
    goto LABEL_14;
  }

  v61 = v29[12];
  v62 = OUTLINED_FUNCTION_46_0();
  v63(v62);
  v64 = v87;
  v65 = v86;
  v66 = v57;
  v67 = v88;
  (*(v87 + 32))(v86, v66, v88);
  v68 = v90;
  (*(v64 + 16))(v90, v65, v67);
  if (qword_2814B3D40 != -1)
  {
    swift_once();
  }

  v26 = _s11ApplicationVMa(0);
  OUTLINED_FUNCTION_16_3();
  sub_2660E9668(v69, v70);
  OUTLINED_FUNCTION_18_4();
  sub_2660E9668(v71, v72);
  v73 = v91;
  sub_26618BD90();
  if (__swift_getEnumTagSinglePayload(v73, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_2_10();
    sub_2660E850C(v68, v74);
    (*(v64 + 8))(v65, v67);
    v54 = &qword_28005C220;
    v55 = &qword_266190D70;
    v56 = v73;
    goto LABEL_7;
  }

  if (qword_2814B3D88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_4();
  sub_2660E9668(v82, v83);
  sub_26618BDA0();
  OUTLINED_FUNCTION_2_10();
  sub_2660E850C(v68, v84);
  (*(v64 + 8))(v65, v67);
  v78 = v95[0];
  v79 = v95[1];
  sub_2660E850C(v73, _s11ApplicationVMa);
LABEL_15:
  sub_2660C5864(v40 + 56, &v96);
  sub_2660E83E4(v40 + 416, v95);
  v80 = swift_allocObject();
  OUTLINED_FUNCTION_47_0(v80);
  *(v26 + 112) = v78;
  *(v26 + 120) = v79;
  *(v26 + 128) = 0;
  v81 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v81);
  v95[0] = sub_26618AC80();
  sub_26618B340();

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660E7638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_26617AA58();
}

void sub_2660E7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_26618C6B0();
  v27 = OUTLINED_FUNCTION_2_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &a9 - v35;
  if (v25)
  {
    if (v25 == 1)
    {
      v41 = 5;
    }

    else if (v25 == 2)
    {
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      __swift_project_value_buffer(v26, qword_2814B4A98);
      OUTLINED_FUNCTION_28_1();
      v37(v34);
      v38 = sub_26618C690();
      v39 = sub_26618CAB0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_6_2();
        *v40 = 0;
        _os_log_impl(&dword_2660B7000, v38, v39, "Unexpected device resolution result", v40, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      (*(v29 + 8))(v34, v26);
      v41 = 6;
    }

    else
    {
      v42 = qword_2814B2C40;
      v43 = v25;
      if (v42 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      __swift_project_value_buffer(v26, qword_2814B4A98);
      OUTLINED_FUNCTION_28_1();
      v44(v36);
      v45 = v43;
      v46 = sub_26618C690();
      v47 = sub_26618CAB0();
      sub_2660E83D4(v25);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_49_0();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v25;
        v50 = v45;
        _os_log_impl(&dword_2660B7000, v46, v47, "ExecutionDeviceResolutionFlow selected device: %@", v48, 0xCu);
        sub_2660BF79C(v49, &qword_28005C1F8, &unk_266190550);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      (*(v29 + 8))(v36, v26);
      v51 = *(v23 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice);
      *(v23 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice) = v25;

      v41 = 4;
    }
  }

  else
  {
    v41 = 3;
  }

  *(v23 + 592) = v41;
  OUTLINED_FUNCTION_7_1();
}

uint64_t *sub_2660E79E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_2660D31B4((v0 + 52));
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 69);
  sub_2660BF79C(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input, &qword_28005C060, &qword_26618FD10);

  return v0;
}

uint64_t sub_2660E7A94()
{
  sub_2660E79E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for LaunchAppWrapperFlow()
{
  result = qword_2814B3C70;
  if (!qword_2814B3C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660E7B40()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for LaunchAppWrapperFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LaunchAppWrapperFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2660E7D70()
{
  result = qword_28005C218;
  if (!qword_28005C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C218);
  }

  return result;
}

uint64_t sub_2660E7E10()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D2E00;

  return sub_2660E367C();
}

uint64_t sub_2660E7EAC()
{
  type metadata accessor for LaunchAppWrapperFlow();

  return sub_26618AFE0();
}

uint64_t sub_2660E7EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersStoreProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E7F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersStoreProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E7FB0(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for LaunchAppIntent();
  type metadata accessor for LaunchAppIntentResponse();
  sub_26618AF60();
  v6 = sub_26618C360();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_26618C350();
  sub_26618AEC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C230, &unk_266190588);
  sub_26618AF20();
  type metadata accessor for LaunchAppNeedsValueStrategy();
  v20[0] = sub_26612C5D4();
  sub_2660E9668(qword_2814B3890, type metadata accessor for LaunchAppNeedsValueStrategy);
  sub_26618AEA0();

  sub_26618AF00();
  type metadata accessor for LaunchAppHandleIntentStrategy();
  v9 = a1;
  v10 = sub_26611CFC4(a1);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v21 = &type metadata for AppLaunchFlowFactoryImpl;
  v22 = &off_2877CD5D8;
  sub_2660C5864(a2, v19);
  sub_2660C5864(v20, v18);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2660B9EB8(v19, v11 + 24);
  sub_2660B9EB8(v18, v11 + 64);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_26618AF10();
  type metadata accessor for LaunchAppDisambiguationStrategy();
  v12 = sub_2661159F4();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v21 = &type metadata for AppLaunchFlowFactoryImpl;
  v22 = &off_2877CD5D8;
  sub_2660C5864(a2, v19);
  sub_2660C5864(v20, v18);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_2660B9EB8(v19, v13 + 24);
  sub_2660B9EB8(v18, v13 + 64);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_26618AF50();
  type metadata accessor for LaunchAppUnsupportedValueStrategy();
  v14 = v9;
  v15 = sub_2661313DC(a1);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v21 = &type metadata for AppLaunchFlowFactoryImpl;
  v22 = &off_2877CD5D8;
  sub_2660C5864(a2, v19);
  sub_2660C5864(v20, v18);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_2660B9EB8(v19, v16 + 24);
  sub_2660B9EB8(v18, v16 + 64);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_26618AF40();
  type metadata accessor for LaunchAppConfirmationStrategy();
  v20[0] = sub_266112E80();
  sub_2660E9668(qword_2814B37B0, type metadata accessor for LaunchAppConfirmationStrategy);
  sub_26618AEE0();

  sub_26618AF30();
}

void sub_2660E83D4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_2660E8440()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  *(v0 + 129);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2660D2E00;

  return sub_2660E7638();
}

uint64_t sub_2660E850C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2660E8564()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2660D3260;

  return sub_2660E6E24();
}

uint64_t sub_2660E8620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SiriRemembersStoreProvider();
  v32[3] = v8;
  v32[4] = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  sub_2660E7F4C(a2, boxed_opaque_existential_0);
  v31[3] = type metadata accessor for CoreAnalyticsService();
  v31[4] = &off_2877CD310;
  v31[0] = a3;
  sub_2660C5864(a1, a4 + 16);
  sub_2660C5864(v32, a4 + 56);
  sub_2660C5864(v31, a4 + 96);
  sub_2660C5864(v32, v29);
  v10 = v30;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v27 = v8;
  v28 = &off_2877CC750;
  v16 = __swift_allocate_boxed_opaque_existential_0(v26);
  sub_2660E7F4C(v14, v16);
  type metadata accessor for HistoricalDeviceInteractionProvider();
  v17 = swift_allocObject();
  v18 = v27;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v17[5] = v8;
  v17[6] = &off_2877CC750;
  v24 = __swift_allocate_boxed_opaque_existential_0(v17 + 2);
  sub_2660E7F4C(v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v29);
  *(a4 + 136) = v17;
  return a4;
}

uint64_t sub_2660E8888(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = type metadata accessor for SiriRemembersStoreProvider();
  v25 = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  sub_2660E7F4C(a2, boxed_opaque_existential_0);
  v7 = type metadata accessor for CoreAnalyticsService();
  v22[3] = v7;
  v22[4] = &off_2877CD310;
  v22[0] = a3;
  type metadata accessor for LaunchAppDeviceResolutionStrategy();
  v8 = swift_allocObject();
  v9 = v24;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v7);
  v16 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_2660E8620(a1, v13, *v18, v8);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

void *sub_2660E8A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a6;
  v108 = a3;
  v115 = a5;
  v110 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v104 - v18;
  v106 = type metadata accessor for LaunchAppDeviceResolutionStrategy();
  v146[3] = v106;
  v146[4] = &off_2877CAF18;
  v146[0] = a1;
  v105 = type metadata accessor for BaseDialogProvider();
  v145[3] = v105;
  v145[4] = &off_2877CAA90;
  v145[0] = a4;
  v114 = type metadata accessor for SiriRemembersStoreProvider();
  v144[3] = v114;
  v144[4] = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v144);
  sub_2660E7F4C(a7, boxed_opaque_existential_0);
  v113 = type metadata accessor for CoreAnalyticsService();
  v143[3] = v113;
  v143[4] = &off_2877CD310;
  v143[0] = a8;
  v142[3] = &type metadata for ReferenceResolver;
  v142[4] = &off_2877CC6F0;
  v21 = swift_allocObject();
  v142[0] = v21;
  v22 = *(a9 + 16);
  *(v21 + 16) = *a9;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a9 + 32);
  sub_2660C5864(v146, v140);
  v23 = sub_26618B790();
  v109 = v23;
  v111 = *(v23 - 8);
  v112 = v19;
  (*(v111 + 16))(v19, a2, v23);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v23);
  sub_2660C5864(a3, v139);
  sub_2660C5864(v145, v137);
  sub_2660C5864(v115, v136);
  sub_2660C5864(a6, v135);
  sub_2660C5864(v144, v133);
  sub_2660C5864(v143, v131);
  sub_2660C5864(v142, v129);
  v24 = v141;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v138;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = v134;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v104 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40);
  v42 = v132;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v131, v132);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v104 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v130;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v104 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v52);
  v54 = *v28;
  v55 = *v34;
  v56 = *v46;
  v57 = v105;
  v58 = v106;
  v128[3] = v106;
  v128[4] = &off_2877CAF18;
  v128[0] = v54;
  v126 = v105;
  v127 = &off_2877CAA90;
  v125[0] = v55;
  v123 = v114;
  v124 = &off_2877CC750;
  v59 = __swift_allocate_boxed_opaque_existential_0(v122);
  sub_2660E7F4C(v40, v59);
  v120 = v113;
  v121 = &off_2877CD310;
  v119[0] = v56;
  v117 = &type metadata for ReferenceResolver;
  v118 = &off_2877CC6F0;
  v60 = swift_allocObject();
  v116[0] = v60;
  v61 = *(v52 + 1);
  *(v60 + 16) = *v52;
  *(v60 + 32) = v61;
  *(v60 + 48) = *(v52 + 4);
  v62 = type metadata accessor for ExecutionDeviceResolutionFlow();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v128, v58);
  v67 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v69 = (&v104 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69);
  v71 = v126;
  v72 = __swift_mutable_project_boxed_opaque_existential_1(v125, v126);
  v73 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = (&v104 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  v77 = v123;
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v122, v123);
  v79 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v104 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v82 + 16))(v81);
  v83 = v120;
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
  v85 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v87 = (&v104 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87);
  v89 = v117;
  v90 = __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
  v91 = *(v89[-1].Description + 8);
  MEMORY[0x28223BE20](v90);
  v93 = &v104 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v94 + 16))(v93);
  v95 = *v69;
  v96 = *v75;
  v97 = *v87;
  v65[5] = v58;
  v65[6] = &off_2877CAF18;
  v65[2] = v95;
  v65[15] = v57;
  v65[16] = &off_2877CAA90;
  v65[12] = v96;
  v65[30] = v114;
  v65[31] = &off_2877CC750;
  v98 = __swift_allocate_boxed_opaque_existential_0(v65 + 27);
  sub_2660E7F4C(v81, v98);
  v65[35] = v113;
  v65[36] = &off_2877CD310;
  v65[32] = v97;
  v65[40] = &type metadata for ReferenceResolver;
  v65[41] = &off_2877CC6F0;
  v99 = swift_allocObject();
  v65[37] = v99;
  v100 = *(v93 + 1);
  *(v99 + 16) = *v93;
  *(v99 + 32) = v100;
  *(v99 + 48) = *(v93 + 4);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v108);
  v101 = v109;
  (*(v111 + 8))(v110, v109);
  __swift_destroy_boxed_opaque_existential_1(v142);
  __swift_destroy_boxed_opaque_existential_1(v143);
  __swift_destroy_boxed_opaque_existential_1(v144);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v146);
  v102 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v65 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input, 1, 1, v101);
  swift_beginAccess();
  sub_2660CFB90(v112, v65 + v102);
  swift_endAccess();
  sub_2660B9EB8(v139, (v65 + 7));
  sub_2660B9EB8(v136, (v65 + 17));
  sub_2660B9EB8(v135, (v65 + 22));
  *(v65 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = 0x8000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(v125);
  __swift_destroy_boxed_opaque_existential_1(v128);
  __swift_destroy_boxed_opaque_existential_1(v129);
  __swift_destroy_boxed_opaque_existential_1(v131);
  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v140);
  return v65;
}

uint64_t sub_2660E9560(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_2660E958C()
{
  result = qword_2814B4828;
  if (!qword_2814B4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C240, qword_2661905A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4828);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660E9668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v12 = v0[25];
  v13 = v0[24];
  v10 = *(v0[43] + 8);
  return v0[44];
}

void OUTLINED_FUNCTION_6_4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
}

BOOL OUTLINED_FUNCTION_15_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[44];
  result = v2[20];
  v5 = v2[21];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  v2 = *(v0 - 264);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_47_0(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 248), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  v4 = *(v2 - 272);

  return sub_2660CFA28(v1 + v0, v4);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t sub_2660E9948(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2660E99D8(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2660E9A00()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[18];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B160())
  {
    [objc_opt_self() setRemotePresentationEnabled_];
  }

  v3 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_2660E9B58;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C268, qword_2661943E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2660E9CD8;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v3 activateWithDomainIdentifier:0 noteIdentifier:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2660E9B58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_2660E9C70;
  }

  else
  {
    v5 = sub_2660E9C58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2660E9C70()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

uint64_t sub_2660E9CD8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_2660E9948(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_2660E9D60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - v2;
  sub_26618B0E0();
  type metadata accessor for QuickNoteActivationProvider();
  v4 = swift_allocObject();
  v5 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  v6 = type metadata accessor for BaseDialogProvider();
  v7 = swift_allocObject();
  sub_26618B600();
  v8 = sub_26618B470();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_26618B460();
  sub_26618B810();
  sub_26618B040();
  v32[3] = v6;
  v32[4] = &off_2877CAA90;
  v32[0] = v7;
  v31[3] = v8;
  v31[4] = MEMORY[0x277D5BD58];
  v31[0] = v11;
  v29 = &type metadata for AppLaunchFlowFactoryImpl;
  v30 = &off_2877CD5D8;
  v12 = type metadata accessor for LaunchQuickNoteFlow();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v6);
  v17 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v21 = *v19;

  *(v15 + 312) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v15 + 320) = &off_2877CD5D8;
  v22 = OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input;
  __swift_storeEnumTagSinglePayload(v15 + OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input, 1, 1, v5);
  sub_2660C5864(v36, v15 + 16);
  *(v15 + 56) = v4;
  *(v15 + 64) = &off_2877CB228;
  swift_beginAccess();
  sub_2660DE7DC(v3, v15 + v22);
  swift_endAccess();
  sub_2660C5864(v35, v15 + 72);
  sub_2660C5864(v31, v15 + 112);
  sub_2660C5864(v34, v15 + 248);
  sub_2660C5864(v15 + 248, v15 + 152);
  sub_2660C5864(v15 + 112, v15 + 192);
  v23 = sub_26618C8A0();
  LODWORD(v5) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_2660CFA98(v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(v15 + 240) = v5 == 1;
  sub_2660C5864(v15 + 152, v27);
  type metadata accessor for LocUtil();
  v24 = swift_allocObject();
  sub_2660B9EB8(v27, v24 + 16);
  *(v15 + 232) = v24;
  sub_2660B9EB8(&v33, v15 + 328);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v15;
}

uint64_t sub_2660EA0E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26618B790();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660EA1E8()
{
  type metadata accessor for LaunchQuickNoteFlow();
  sub_2660EB86C();
  return sub_26618AFB0();
}

uint64_t sub_2660EA248()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_26618C6B0();
  v1[6] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[7] = v4;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_26618B500();
  v1[10] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660EA34C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = v4[35];
  __swift_project_boxed_opaque_existential_1(v4 + 31, v4[34]);
  sub_26618B4F0();
  v6 = sub_26618B110();
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_12_1();
  v7(v8);
  if (v6)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = __swift_project_value_buffer(v10, qword_2814B4A98);
    v0[13] = v12;
    v13 = *(v11 + 16);
    v0[14] = v13;
    v0[15] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v10);
    v14 = sub_26618C690();
    v15 = sub_26618CAA0();
    if (os_log_type_enabled(v14, v15))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v16, v17, "LaunchQuickNoteFlow#execute requestng quicknote activation");
      OUTLINED_FUNCTION_7_2();
    }

    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[7];

    v0[16] = *(v20 + 8);
    v21 = OUTLINED_FUNCTION_12_1();
    v22(v21);
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[17] = v23;
    *v23 = v24;
    v23[1] = sub_2660EA67C;

    return sub_2660E99D8((v4 + 31));
  }

  else
  {
    v26 = v0[12];
    v27 = v0[10];
    v28 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v29 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v29);
    v31 = *(v30 + 72);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v34 = OUTLINED_FUNCTION_12_1();
    v7(v34);
    v35 = sub_26618AC10();

    v0[2] = v35;
    sub_26618AE60();
    sub_26618B330();

    v36 = v0[12];
    v37 = v0[8];
    v38 = v0[9];

    OUTLINED_FUNCTION_54();

    return v39();
  }
}

uint64_t sub_2660EA67C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_2660EA858;
  }

  else
  {
    v9 = sub_2660EA778;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660EA778()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v4 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_26618B5C0();

  sub_26618B360();
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];

  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_2660EA858()
{
  v29 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  (*(v0 + 112))(*(v0 + 64), *(v0 + 104), *(v0 + 48));
  v3 = v1;
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v27 = *(v0 + 128);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v0 + 24) = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v13 = sub_26618C8D0();
    v15 = sub_266103A98(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2660B7000, v4, v5, "Received an error launching quicknote %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v16 = OUTLINED_FUNCTION_12_1();
    v27(v16);
  }

  else
  {
    v17 = *(v0 + 128);
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);

    v21 = OUTLINED_FUNCTION_12_1();
    v17(v21);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 152) = v22;
  *v22 = v23;
  v22[1] = sub_2660EAA64;
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);

  return sub_2660EABE4();
}

uint64_t sub_2660EAA64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660EAB4C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 164);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_2660EABE4()
{
  OUTLINED_FUNCTION_18();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_26618B8E0();
  v1[23] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[24] = v4;
  v6 = *(v5 + 64);
  v1[25] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B790();
  v1[26] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[27] = v8;
  v10 = *(v9 + 64);
  v1[28] = OUTLINED_FUNCTION_8_2();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64);
  v1[29] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B800();
  v1[30] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[31] = v13;
  v15 = *(v14 + 64);
  v1[32] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618B840();
  v1[33] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[34] = v17;
  v19 = *(v18 + 64);
  v1[35] = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618C6B0();
  v1[36] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[37] = v21;
  v23 = *(v22 + 64);
  v1[38] = OUTLINED_FUNCTION_8_2();
  v24 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2660EADE8()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v7, v8, "Creating failure dialog for QuickNote");
    OUTLINED_FUNCTION_7_2();
  }

  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[36];
  v12 = v0[29];
  v13 = v0[26];
  v14 = v0[22];

  v15 = *(v10 + 8);
  v16 = OUTLINED_FUNCTION_12_1();
  v17(v16);
  v18 = OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v14 + v18, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    sub_2660CFA98(v0[29]);
  }

  else
  {
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[29];
    v22 = v0[27];
    (*(v22 + 16))(v0[28], v21, v0[26]);
    sub_2660CFA98(v21);
    sub_26618B770();
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);
    v26 = *(v20 + 88);
    v27 = OUTLINED_FUNCTION_12_1();
    if (v28(v27) == *MEMORY[0x277D5C160])
    {
      v30 = v0[34];
      v29 = v0[35];
      v32 = v0[32];
      v31 = v0[33];
      v34 = v0[24];
      v33 = v0[25];
      v35 = v0[23];
      (*(v0[31] + 96))(v32, v0[30]);
      (*(v30 + 32))(v29, v32, v31);
      sub_26618B820();
      v36 = sub_266144AE8();
      v37 = *(v34 + 8);
      v38 = OUTLINED_FUNCTION_31_0();
      v39(v38);
      v41 = v0[34];
      v40 = v0[35];
      v42 = v0[33];
      if (v36)
      {
        sub_26613B704();
        v44 = v43;

        v45 = *(v41 + 8);
        v46 = OUTLINED_FUNCTION_31_0();
        v47(v46);
        goto LABEL_13;
      }

      v48 = *(v41 + 8);
      v49 = OUTLINED_FUNCTION_31_0();
      v50(v49);
    }

    else
    {
      (*(v0[31] + 8))(v0[32], v0[30]);
    }
  }

  v44 = 0;
LABEL_13:
  v0[39] = v44;
  v51 = v0[22];
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[40] = v52;
  *v52 = v53;
  v52[1] = sub_2660EB11C;

  return sub_26617AA58();
}

uint64_t sub_2660EB11C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v2 + 312);
  if (v0)
  {

    v7 = sub_2660EB3D0;
  }

  else
  {

    v7 = sub_2660EB258;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2660EB258()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);
  sub_2660C5864(*(v0 + 176) + 72, v0 + 56);
  sub_2660C5864(v0 + 16, v0 + 96);
  v8 = swift_allocObject();
  sub_2660B9EB8((v0 + 96), v8 + 16);
  v9 = sub_26618AC90();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_26618AC80();
  sub_26618B340();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_54();

  return v12();
}

uint64_t *sub_2660EB44C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  sub_2660D31B4((v0 + 19));
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  __swift_destroy_boxed_opaque_existential_1(v0 + 41);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input);
  return v0;
}

uint64_t sub_2660EB4B4()
{
  sub_2660EB44C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for LaunchQuickNoteFlow()
{
  result = qword_28005C250;
  if (!qword_28005C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660EB560()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660EB658()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660E1B2C;

  return sub_2660EA248();
}

uint64_t sub_2660EB6F4(uint64_t a1)
{
  v2 = *v1;
  sub_2660EA0E4(a1);
  return 1;
}

uint64_t sub_2660EB740(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660EB808()
{
  type metadata accessor for LaunchQuickNoteFlow();

  return sub_26618AFE0();
}

unint64_t sub_2660EB844(uint64_t a1)
{
  result = sub_2660EB86C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660EB86C()
{
  result = qword_28005C260;
  if (!qword_28005C260)
  {
    type metadata accessor for LaunchQuickNoteFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C260);
  }

  return result;
}

uint64_t sub_2660EB8C4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2660DF700;

  return sub_2660E17D0(v3, v0 + 16);
}

uint64_t sub_2660EB994(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26618B790();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660EBA98()
{
  type metadata accessor for QRCodeFlow();
  OUTLINED_FUNCTION_0_6();
  sub_2660ED5F4(v0, v1);
  return sub_26618AFB0();
}

uint64_t sub_2660EBB18()
{
  OUTLINED_FUNCTION_18();
  v1[21] = v2;
  v1[22] = v0;
  v1[23] = *v0;
  v3 = sub_26618B840();
  v1[24] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[25] = v4;
  v6 = *(v5 + 64) + 15;
  v1[26] = swift_task_alloc();
  v7 = sub_26618B800();
  v1[27] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[28] = v8;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v11 = sub_26618B790();
  v1[31] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[32] = v12;
  v14 = *(v13 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v16 = sub_26618C6B0();
  v1[36] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[37] = v17;
  v19 = *(v18 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660EBD58, 0, 0);
}

uint64_t sub_2660EBD58()
{
  v1 = v0[22];
  if (sub_2660ECAC0())
  {
    v2 = v0[35];
    v3 = v0[31];
    v4 = v0[22];
    v5 = OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input;
    swift_beginAccess();
    sub_2660CFA28(v4 + v5, v2);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    v7 = v0[35];
    if (EnumTagSinglePayload)
    {
      v8 = &qword_28005C060;
      v9 = &qword_26618FD10;
      v10 = v0[35];
LABEL_4:
      sub_2660C8040(v10, v8, v9);
LABEL_5:
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v12 = v0[37];
      v11 = v0[38];
      __swift_project_value_buffer(v0[36], qword_2814B4A98);
      v13 = OUTLINED_FUNCTION_8_3();
      v14(v13);
      v15 = sub_26618C690();
      v16 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_16_4(v16))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v17, v18, "QRCodeFlow.execute missing usoTask in it's input, returning generic error output");
        OUTLINED_FUNCTION_7_2();
      }

      v20 = v0[37];
      v19 = v0[38];
      v21 = v0[36];
      v23 = v0[22];
      v22 = v0[23];

      v24 = OUTLINED_FUNCTION_9_5();
      v25(v24);
      v26 = swift_task_alloc();
      v0[45] = v26;
      OUTLINED_FUNCTION_0_6();
      sub_2660ED5F4(v27, v28);
      OUTLINED_FUNCTION_8_6();
      *v26 = v29;
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_20_2();

      return sub_2660F1894();
    }

    v52 = v0[34];
    v53 = v0[31];
    v54 = v0[32];
    v55 = v0[30];
    v56 = v0[27];
    v57 = v0[28];
    (*(v54 + 16))(v52, v0[35], v53);
    sub_2660C8040(v7, &qword_28005C060, &qword_26618FD10);
    sub_26618B770();
    v58 = *(v54 + 8);
    v58(v52, v53);
    sub_2660C87C0();
    (*(v57 + 8))(v55, v56);
    v59 = v0[5];
    if (!v59)
    {
      v8 = &qword_28005C148;
      v9 = &unk_26618FF00;
      v10 = (v0 + 2);
      goto LABEL_4;
    }

    v60 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v61 = (*(v60 + 8))(v59, v60);
    v0[42] = v61;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (!v61)
    {
      goto LABEL_5;
    }

    v62 = v0[22];
    v63 = sub_2660ECB48();
    if (v64)
    {
      v65 = v64;
      v66 = v0[28];
      v67 = v0[29];
      v97 = v0[27];
      v98 = v0[33];
      v94 = v63;
      v95 = v0[26];
      v68 = v0[25];
      v96 = v0[24];
      v69 = v0[22];
      v99 = v0[31];
      v100 = v0[21];
      type metadata accessor for LaunchAppWrapperFlow();
      sub_2660C5864(v69 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_outputPublisher, (v0 + 7));
      sub_2660C5864(v69 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_aceService, (v0 + 12));
      sub_2660E2DA4();
      v71 = v70;
      sub_26617D5D4((v69 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider), v94, v65, v95);

      (*(v68 + 16))(v67, v95, v96);
      (*(v66 + 104))(v67, *MEMORY[0x277D5C160], v97);
      sub_26618B780();
      sub_2660E34E0();
      v58(v98, v99);
      v0[20] = v71;
      sub_2660ED5F4(qword_2814B3C80, type metadata accessor for LaunchAppWrapperFlow);
      sub_26618B340();

      (*(v68 + 8))(v95, v96);

      OUTLINED_FUNCTION_11_3();

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_20_2();

      __asm { BRAA            X2, X16 }
    }

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v74 = v0[39];
    v75 = v0[37];
    __swift_project_value_buffer(v0[36], qword_2814B4A98);
    v76 = OUTLINED_FUNCTION_8_3();
    v77(v76);
    v78 = sub_26618C690();
    v79 = sub_26618CA90();
    if (OUTLINED_FUNCTION_16_4(v79))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v80, v81, "QRCodeFlow.execute could not resolve app, returning noAppsFound dialog");
      OUTLINED_FUNCTION_7_2();
    }

    v82 = v0[39];
    v83 = v0[36];
    v84 = v0[37];
    v86 = v0[22];
    v85 = v0[23];

    v87 = OUTLINED_FUNCTION_9_5();
    v88(v87);
    v89 = swift_task_alloc();
    v0[43] = v89;
    OUTLINED_FUNCTION_0_6();
    sub_2660ED5F4(v90, v91);
    OUTLINED_FUNCTION_8_6();
    *v89 = v92;
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_20_2();

    return sub_2660F2244();
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v32 = v0[40];
    v33 = v0[37];
    __swift_project_value_buffer(v0[36], qword_2814B4A98);
    v34 = OUTLINED_FUNCTION_8_3();
    v35(v34);
    v36 = sub_26618C690();
    v37 = sub_26618CA90();
    if (OUTLINED_FUNCTION_16_4(v37))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v38, v39, "QRCodeFlow.execute unsupported device, returning generic 'unsupportedOnDevice' output");
      OUTLINED_FUNCTION_7_2();
    }

    v40 = v0[40];
    v41 = v0[36];
    v42 = v0[37];
    v44 = v0[22];
    v43 = v0[23];

    v45 = OUTLINED_FUNCTION_9_5();
    v46(v45);
    v47 = swift_task_alloc();
    v0[41] = v47;
    OUTLINED_FUNCTION_0_6();
    sub_2660ED5F4(v48, v49);
    OUTLINED_FUNCTION_8_6();
    *v47 = v50;
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_20_2();

    return sub_2660F1D34();
  }
}

uint64_t sub_2660EC4F0(unint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = v2[40];
  v7 = v2[39];
  v8 = v2[38];
  v9 = v2[35];
  v10 = v2[34];
  v11 = v2[33];
  v12 = v2[30];
  v13 = v2[29];
  v14 = v2[26];

  v23 = OUTLINED_FUNCTION_6_5(v15, v16, v17, v18, v19, v20, v21, v22, v26, a1);

  return v24(v23);
}

uint64_t sub_2660EC6F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 344);
  v6 = *v0;
  *(v2 + 352) = v4;

  return MEMORY[0x2822009F8](sub_2660EC7EC, 0, 0);
}

uint64_t sub_2660EC7EC()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 352);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_2660EC8BC(unint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = v2[40];
  v7 = v2[39];
  v8 = v2[38];
  v9 = v2[35];
  v10 = v2[34];
  v11 = v2[33];
  v12 = v2[30];
  v13 = v2[29];
  v14 = v2[26];

  v23 = OUTLINED_FUNCTION_6_5(v15, v16, v17, v18, v19, v20, v21, v22, v26, a1);

  return v24(v23);
}

uint64_t sub_2660ECAC0()
{
  v1 = (v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState);
  v2 = *(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState + 24);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_2660C8128(v2, v3))
  {
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v5 = sub_26618B190() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2660ECB48()
{
  v1 = sub_26618C6B0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v51 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v58 = sub_266144324();
  if (qword_2814B2C40 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_0_3();
  }

  v12 = __swift_project_value_buffer(v1, qword_2814B4A98);
  v13 = v2[2];
  v55 = (v2 + 2);
  v56 = v12;
  v54 = v13;
  v13(v11);
  v14 = sub_26618C690();
  v15 = sub_26618CA90();
  v16 = os_log_type_enabled(v14, v15);
  v51 = v9;
  v52 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v57[0] = v18;
    *v17 = 136315138;

    MEMORY[0x26677BD80](v19, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_15_4();
    v20 = sub_266103A98(v1, v2, v57);
    v2 = &unk_26618F000;

    *(v17 + 4) = v20;
    v1 = v0;
    _os_log_impl(&dword_2660B7000, v14, v15, "QRCodeFlow.resolveApp apps referenced in usoTask: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v9 = v51;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v21 = 67672;
    MEMORY[0x10858](v11, v0);
  }

  else
  {

    v21 = v2[1];
    (v21)(v11, v1);
  }

  v54(v9, v56, v1);
  v22 = sub_26618C690();
  v23 = sub_26618CA90();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57[0] = v9;
    *v24 = 136315138;

    MEMORY[0x26677BD80](v25, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_15_4();
    v26 = sub_266103A98(v1, v2, v57);
    v2 = &unk_26618F000;

    *(v24 + 4) = v26;
    v1 = v0;
    _os_log_impl(&dword_2660B7000, v22, v23, "QRCodeFlow.resolveApp adding the code scanner to list of candidate apps: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v27 = v51;
    v28 = v0;
  }

  else
  {

    v27 = v9;
    v28 = v1;
  }

  (v21)(v27, v28);
  v29 = v52;
  OUTLINED_FUNCTION_12_3();
  sub_266129488();
  v30 = *(v58 + 16);
  sub_26612955C();
  v0 = v58;
  *(v58 + 16) = v30 + 1;
  v31 = v0 + 16 * v30;
  *(v31 + 32) = 0xD000000000000018;
  *(v31 + 40) = v9;
  v58 = v0;
  swift_endAccess();
  v54(v29, v56, v1);
  v32 = sub_26618C690();
  v33 = sub_26618CA90();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v56 = v2;
    v2 = v34;
    v9 = swift_slowAlloc();
    v57[0] = v9;
    *v2 = 136315138;

    v36 = v1;
    v37 = MEMORY[0x26677BD80](v35, MEMORY[0x277D837D0]);
    v39 = v38;

    v1 = sub_266103A98(v37, v39, v57);

    *(v2 + 4) = v1;
    _os_log_impl(&dword_2660B7000, v32, v33, "QRCodeFlow.resolveApp adding the camera to list of candidate apps: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v40 = v29;
    v41 = v36;
  }

  else
  {

    v40 = v29;
    v41 = v1;
  }

  (v21)(v40, v41);
  OUTLINED_FUNCTION_12_3();
  sub_266129488();
  v42 = *(v58 + 16);
  sub_26612955C();
  v43 = v58;
  v55 = (v42 + 1);
  *(v58 + 16) = v42 + 1;
  v44 = v43 + 16 * v42;
  *(v44 + 32) = 0xD000000000000010;
  *(v44 + 40) = v9;
  swift_endAccess();
  v6 = (v53 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider);

  v11 = 0;
  v56 = v43;
  for (i = (v43 + 40); ; i += 2)
  {
    if (v55 == v11)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }

    if (v11 >= v56[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    v1 = *(i - 1);
    v9 = *i;
    v2 = v6[3];
    v46 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v2);
    v0 = v46 + 16;
    v47 = *(v46 + 16);

    v48 = v47(v1, v9, 1, v2, v46);
    if (v48)
    {
      break;
    }

    ++v11;
  }

  v49 = v48;
  swift_bridgeObjectRelease_n();

  return v1;
}

uint64_t sub_2660ED180()
{
  sub_2660C8040(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input, &qword_28005C060, &qword_26618FD10);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_aceService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_outputPublisher));
  sub_2660D3208(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_dialogProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_eventSender));
  return v0;
}

uint64_t sub_2660ED218()
{
  sub_2660ED180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for QRCodeFlow()
{
  result = qword_28005C2A0;
  if (!qword_28005C2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660ED2C4()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660ED3B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660E1B2C;

  return sub_2660EBB18();
}

uint64_t sub_2660ED44C(uint64_t a1)
{
  v2 = *v1;
  sub_2660EB994(a1);
  return 1;
}

uint64_t sub_2660ED498(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660ED560()
{
  type metadata accessor for QRCodeFlow();

  return sub_26618AFE0();
}

uint64_t sub_2660ED59C(uint64_t a1)
{
  result = sub_2660ED5F4(&qword_28005C2B0, type metadata accessor for QRCodeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2660ED5F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  result = a10 | ((HIDWORD(a10) & 1) << 32);
  v12 = *(v10 + 8);
  return result;
}

void OUTLINED_FUNCTION_7_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_3()
{
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{
}

BOOL OUTLINED_FUNCTION_16_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2660ED764()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_26618B600();
  v2 = sub_26618B470();
  OUTLINED_FUNCTION_41_0(v2);
  v3 = sub_26618B460();
  sub_26618B810();
  v40[3] = sub_26618C460();
  v40[4] = &off_2877CC660;
  v40[0] = sub_26618C450();
  sub_26618B040();
  v38[3] = v0;
  v38[4] = &off_2877CAA90;
  v38[0] = v1;
  v36 = v2;
  v37 = MEMORY[0x277D5BD58];
  *&v35 = v3;
  v33 = &type metadata for ReferenceResolver;
  v34 = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v32[0] = swift_allocObject();
  sub_2660CFC00(v40, v32[0] + 16);
  v30 = &type metadata for AppLaunchFlowFactoryImpl;
  v31 = &off_2877CD5D8;
  v4 = type metadata accessor for RemoveAppFlow();
  v5 = OUTLINED_FUNCTION_41_0(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v38, v0);
  v7 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = v33;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v13 = *(v11[-1].Description + 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v17 = *v9;
  v28[3] = v0;
  v28[4] = &off_2877CAA90;
  v28[0] = v17;
  *(v5 + 256) = &type metadata for ReferenceResolver;
  *(v5 + 264) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v18 = swift_allocObject();
  *(v5 + 232) = v18;
  v19 = *(v15 + 1);
  *(v18 + 16) = *v15;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v15 + 4);
  *(v5 + 336) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v5 + 344) = &off_2877CD5D8;
  v20 = OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input;
  v21 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v5 + v20, 1, 1, v21);
  sub_2660F1290(v42, v5 + 112);
  sub_2660F1290(v41, v5 + 152);
  sub_2660F1290(v28, v5 + 192);
  sub_2660F1290(v41, v5 + 16);
  sub_2660F1290(&v35, v5 + 56);

  v22 = sub_26618C8A0();
  LODWORD(v1) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v28);
  *(v5 + 104) = v1 == 1;
  sub_2660F1290(v5 + 16, v27);
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_4_5();
  v23 = swift_allocObject();
  sub_2660B9EB8(v27, v23 + 16);
  *(v5 + 96) = v23;
  sub_2660B9EB8(&v35, v5 + 272);
  sub_2660F1290(v5 + 152, v27);
  OUTLINED_FUNCTION_4_5();
  v24 = swift_allocObject();
  sub_2660B9EB8(v27, v24 + 16);
  *(v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_locUtil) = v24;
  sub_2660B9EB8(&v39, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_eventSender);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v38);
  sub_2660CFC5C(v40);
  return v5;
}

uint64_t sub_2660EDB94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = sub_26618B790();
  OUTLINED_FUNCTION_4_0(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_42_1();
  v11(v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v0 + v12);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660EDC8C()
{
  type metadata accessor for RemoveAppFlow();
  OUTLINED_FUNCTION_0_7();
  sub_2660F10F4(v0, v1);
  OUTLINED_FUNCTION_42_1();
  return sub_26618AFB0();
}

uint64_t sub_2660EDD08()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = *v0;
  v3 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 64);
  v1[37] = OUTLINED_FUNCTION_8_2();
  v6 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  v1[38] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v9);
  v11 = *(v10 + 64);
  v1[39] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B6A0();
  v1[40] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[41] = v13;
  v15 = *(v14 + 64);
  v1[42] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618C6B0();
  v1[43] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[44] = v17;
  v19 = *(v18 + 64);
  v1[45] = OUTLINED_FUNCTION_25_0();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v20 = sub_26618B800();
  v1[51] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[52] = v21;
  v23 = *(v22 + 64);
  v1[53] = OUTLINED_FUNCTION_25_0();
  v1[54] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v24);
  v26 = *(v25 + 64);
  v1[55] = OUTLINED_FUNCTION_8_2();
  v27 = sub_26618B790();
  v1[56] = v27;
  OUTLINED_FUNCTION_0_4(v27);
  v1[57] = v28;
  v30 = *(v29 + 64);
  v1[58] = OUTLINED_FUNCTION_25_0();
  v1[59] = swift_task_alloc();
  v31 = sub_26618B500();
  v1[60] = v31;
  OUTLINED_FUNCTION_0_4(v31);
  v1[61] = v32;
  v34 = *(v33 + 64);
  v1[62] = OUTLINED_FUNCTION_8_2();
  v35 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_2660EDFE4()
{
  v157 = v0;
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = *(v0 + 280);
  v5 = v4[22];
  v6 = v4[23];
  OUTLINED_FUNCTION_28_2(v4 + 19);
  sub_26618B4F0();
  OUTLINED_FUNCTION_42_1();
  v7 = sub_26618B110();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_11_2();
  v8(v9);
  v155 = v7;
  if ((v7 & 1) == 0)
  {
    v30 = *(v0 + 496);
    v31 = *(v0 + 480);
    v32 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v33 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v33);
    v35 = *(v34 + 72);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v38 = OUTLINED_FUNCTION_11_2();
    v8(v38);
    v39 = sub_26618AC10();

    *(v0 + 256) = v39;
    sub_26618AE60();
    sub_26618B330();

    goto LABEL_23;
  }

  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v12 = *(v0 + 280);
  v13 = OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v12 + v13, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
  {
    sub_2660BDDF8(*(v0 + 440), &qword_28005C060, &qword_26618FD10);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v14 = *(v0 + 368);
    v15 = *(v0 + 352);
    OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
    (*(v15 + 16))(v14);
    v16 = sub_26618C690();
    v17 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v17))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_9_6();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v23 = *(v0 + 368);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    v26 = *(v0 + 272);

    v27 = *(v24 + 8);
    v28 = OUTLINED_FUNCTION_11_2();
    v29(v28);
    sub_26618B360();
    goto LABEL_23;
  }

  v40 = *(v0 + 432);
  v42 = *(v0 + 408);
  v41 = *(v0 + 416);
  (*(*(v0 + 456) + 32))(*(v0 + 472), *(v0 + 440), *(v0 + 448));
  sub_26618B770();
  sub_2660C87C0();
  v43 = *(v41 + 8);
  v44 = OUTLINED_FUNCTION_11_2();
  v45(v44);
  if (!*(v0 + 40))
  {
    sub_2660BDDF8(v0 + 16, &qword_28005C148, &unk_26618FF00);
    goto LABEL_17;
  }

  v46 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v47 = *(v46 + 8);
  v48 = OUTLINED_FUNCTION_11_2();
  v50 = v49(v48);
  *(v0 + 504) = v50;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v50)
  {
LABEL_17:
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v60 = *(v0 + 464);
    v59 = *(v0 + 472);
    v62 = *(v0 + 448);
    v61 = *(v0 + 456);
    v63 = *(v0 + 376);
    v64 = *(v0 + 352);
    OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
    (*(v64 + 16))(v63);
    (*(v61 + 16))(v60, v59, v62);
    v65 = sub_26618C690();
    v66 = sub_26618CAB0();
    v67 = os_log_type_enabled(v65, v66);
    v69 = *(v0 + 456);
    v68 = *(v0 + 464);
    v70 = *(v0 + 448);
    if (v67)
    {
      v71 = *(v0 + 424);
      v147 = *(v0 + 352);
      v149 = *(v0 + 344);
      v152 = *(v0 + 376);
      v72 = OUTLINED_FUNCTION_49_0();
      v144 = v70;
      v73 = OUTLINED_FUNCTION_45_1();
      v156 = v73;
      *v72 = 136315138;
      sub_26618B770();
      sub_266145588(v71);
      v74 = OUTLINED_FUNCTION_39_0();
      v66(v74, v144);
      v75 = OUTLINED_FUNCTION_31_0();
      v78 = sub_266103A98(v75, v76, v77);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_2660B7000, v65, v66, "RemoveAppFlow.execute() Unexpected parse type or unable to get USO task: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v147 + 8))(v152, v149);
    }

    else
    {
      v79 = *(v0 + 376);
      v80 = *(v0 + 344);
      v81 = *(v0 + 352);

      v82 = OUTLINED_FUNCTION_39_0();
      v66(v82, v70);
      v83 = *(v81 + 8);
      v84 = OUTLINED_FUNCTION_31_0();
      v85(v84);
    }

    v86 = *(v0 + 472);
    v87 = *(v0 + 448);
    v88 = *(v0 + 272);
    sub_26618B360();
    v66(v86, v87);
LABEL_23:
    v89 = *(v0 + 496);
    v91 = *(v0 + 464);
    v90 = *(v0 + 472);
    v93 = *(v0 + 432);
    v92 = *(v0 + 440);
    v94 = *(v0 + 424);
    v95 = *(v0 + 392);
    v96 = *(v0 + 400);
    v98 = *(v0 + 376);
    v97 = *(v0 + 384);
    v142 = *(v0 + 368);
    v143 = *(v0 + 360);
    v145 = *(v0 + 336);
    v146 = *(v0 + 312);
    v148 = *(v0 + 304);
    v150 = *(v0 + 296);

    LOBYTE(v156) = (v155 & 1) == 0;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_20_2();

    __asm { BRAA            X2, X16 }
  }

  v51 = *(v0 + 280);
  sub_26613BA0C();
  v53 = v52;
  __swift_project_boxed_opaque_existential_1((v51 + 232), *(v51 + 256));
  v54 = sub_2660FA19C();
  *(v0 + 512) = v54;
  v55 = *(v54 + 16);
  *(v0 + 520) = v55;
  if (sub_266145BC4(v53) == 0x64616F6C66666FLL && v56 == 0xE700000000000000)
  {

    v58 = 1;
  }

  else
  {
    v58 = sub_26618D000();
  }

  if (v53 > 8u || ((1 << v53) & 0x1A0) == 0)
  {

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v125 = *(v0 + 384);
    v126 = *(v0 + 352);
    OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
    (*(v126 + 16))(v125);
    v127 = sub_26618C690();
    v128 = sub_26618CAB0();
    v129 = OUTLINED_FUNCTION_15_1(v128);
    v130 = *(v0 + 384);
    v132 = *(v0 + 344);
    v131 = *(v0 + 352);
    if (v129)
    {
      v133 = OUTLINED_FUNCTION_49_0();
      v134 = OUTLINED_FUNCTION_45_1();
      v156 = v134;
      *v133 = 136315138;
      *(v0 + 680) = v53;
      v135 = sub_26618C8D0();
      v154 = v130;
      v137 = sub_266103A98(v135, v136, &v156);

      *(v133 + 4) = v137;
      _os_log_impl(&dword_2660B7000, v127, v128, "RemoveAppFlow.execute() Unexpected verb: %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v131 + 8))(v154, v132);
    }

    else
    {

      (*(v131 + 8))(v130, v132);
    }

    v138 = *(v0 + 472);
    v140 = *(v0 + 448);
    v139 = *(v0 + 456);
    v141 = *(v0 + 272);
    sub_26618B360();

    (*(v139 + 8))(v138, v140);
    goto LABEL_23;
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v101 = *(v0 + 400);
  v102 = *(v0 + 352);
  *(v0 + 528) = OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
  *(v0 + 536) = *(v102 + 16);
  *(v0 + 544) = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v103 = OUTLINED_FUNCTION_13_2();
  v104(v103);
  v105 = sub_26618C690();
  v106 = sub_26618CAA0();
  v107 = OUTLINED_FUNCTION_15_1(v106);
  v108 = *(v0 + 400);
  v109 = *(v0 + 344);
  v110 = *(v0 + 352);
  if (v107)
  {
    v151 = v55 != 0;
    v111 = swift_slowAlloc();
    v156 = OUTLINED_FUNCTION_45_1();
    v112 = v156;
    *v111 = 136315906;
    *(v0 + 681) = v53;
    v113 = sub_26618C8D0();
    v153 = v108;
    v115 = v58;
    v116 = sub_266103A98(v113, v114, &v156);

    *(v111 + 4) = v116;
    *(v111 + 12) = 1024;
    *(v111 + 14) = v151;
    *(v111 + 18) = 1024;
    *(v111 + 20) = v115 & 1;
    *(v111 + 24) = 1024;
    *(v111 + 26) = 0;
    _os_log_impl(&dword_2660B7000, v105, v106, "RemoveAppFlow.execute() verb: %s and isAppInstalled: %{BOOL}d and isOffload: %{BOOL}d and uninstallNotSupported: %{BOOL}d", v111, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v112);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v117 = *(v110 + 8);
    v117(v153, v109);
  }

  else
  {

    v117 = *(v110 + 8);
    v117(v108, v109);
  }

  *(v0 + 552) = v117;
  v118 = *(v0 + 280);
  v119 = swift_task_alloc();
  *(v0 + 560) = v119;
  *v119 = v0;
  v119[1] = sub_2660EEA2C;
  OUTLINED_FUNCTION_20_2();

  return sub_2660C515C(v120, v121, v122);
}

uint64_t sub_2660EEA2C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 560);
  *v4 = *v1;
  v3[71] = v7;
  v3[72] = v0;

  if (v0)
  {
    v8 = v3[64];

    v9 = sub_2660EFF40;
  }

  else
  {
    v9 = sub_2660EEB40;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660EEB40()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[35];
  sub_26618B1B0();
  sub_26618B620();
  v4 = v3[22];
  v5 = v3[23];
  OUTLINED_FUNCTION_28_2(v3 + 19);
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0() & 1) != 0 || (v6 = v0[35], v7 = v6[22], v8 = v6[23], OUTLINED_FUNCTION_28_2(v6 + 19), OUTLINED_FUNCTION_12_1(), (sub_26618B190()))
  {
    v9 = v0[71];
    v10 = v0[64];
    v11 = v0[35];

    v12 = v11[37];
    v13 = v11[38];
    OUTLINED_FUNCTION_28_2(v11 + 34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v14 = swift_allocObject();
    v0[73] = v14;
    *(v14 + 16) = xmmword_26618F7E0;
    *(v14 + 32) = v9;
    v15 = *(MEMORY[0x277D5BE58] + 4);
    v16 = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[74] = v17;
    *v17 = v18;
    v17[1] = sub_2660EF264;
    v19 = v0[42];
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB488](v20, v21, v22, v23, v24);
  }

  v26 = v0[35];
  v28 = v26[22];
  v27 = v26[23];
  __swift_project_boxed_opaque_existential_1(v26 + 19, v28);
  if (sub_2660C80B8(v28, v27) & 1) != 0 || (v29 = v0[35], v30 = v29[22], v31 = v29[23], OUTLINED_FUNCTION_28_2(v29 + 19), OUTLINED_FUNCTION_12_1(), (sub_26618B180()))
  {
    v32 = v0[65];
    v33 = *(v0[35] + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_locUtil);

    sub_26617CA00(0xD000000000000015, 0x8000000266198D00);
    v35 = v34;

    v36 = v0[64];
    if (v32)
    {
      if (!v36[2])
      {
        __break(1u);
LABEL_28:
        OUTLINED_FUNCTION_0_3();
LABEL_17:
        v66 = v0[68];
        v67 = v0[67];
        v68 = v0[49];
        OUTLINED_FUNCTION_37_0(v0[43], qword_2814B4A98);
        v67(v68);
        v69 = sub_26618C690();
        v70 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_15_1(v70))
        {
          *OUTLINED_FUNCTION_6_2() = 0;
          OUTLINED_FUNCTION_9_6();
          _os_log_impl(v71, v72, v73, v74, v75, 2u);
          OUTLINED_FUNCTION_7_3();
        }

        v76 = v0[71];
        v77 = v0[69];
        v78 = v0[49];
        v79 = v0[43];
        v80 = v0[44];
        v81 = v0[41];
        v117 = v0[42];
        v82 = v0[40];

        v83 = OUTLINED_FUNCTION_11_2();
        v77(v83);
        sub_2660D3004();
        v84 = swift_allocError();
        *v85 = 7;
        swift_willThrow();

        v87 = *(v81 + 8);
        v86 = (v81 + 8);
        v87(v117, v82);
        v0[82] = v84;
        v88 = OUTLINED_FUNCTION_4_9();
        v89(v88);
        v90 = v84;
        v91 = sub_26618C690();
        v92 = sub_26618CAC0();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = OUTLINED_FUNCTION_49_0();
          v86 = swift_slowAlloc();
          *v93 = 138412290;
          v94 = v84;
          v95 = _swift_stdlib_bridgeErrorToNSError();
          *(v93 + 4) = v95;
          *v86 = v95;
          OUTLINED_FUNCTION_27_1();
          _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
          sub_2660BDDF8(v86, &qword_28005C1F8, &unk_266190550);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        OUTLINED_FUNCTION_16_5();
        v101 = OUTLINED_FUNCTION_11_2();
        v86(v101);
        v102 = swift_task_alloc();
        OUTLINED_FUNCTION_40_0(v102);
        OUTLINED_FUNCTION_0_7();
        sub_2660F10F4(v103, v104);
        OUTLINED_FUNCTION_18_5();
        v91->isa = v105;
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_22_0();

        return sub_2660F1894();
      }

      v32 = v36[4];
      v37 = v36[5];
    }

    else
    {
      v37 = 0;
    }

    v38 = v0[35];

    sub_26617B14C(v32, v37);
    v32 = v39;

    v0[79] = v32;
    if (v35)
    {
      v40 = v0[71];
      v42 = v0[37];
      v41 = v0[38];
      v43 = v0[35];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_26618E190;
      v45 = sub_26618AB80();
      v46 = MEMORY[0x277D63778];
      *(v44 + 56) = v45;
      *(v44 + 64) = v46;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v44 + 32));
      *boxed_opaque_existential_0 = v32;
      *(boxed_opaque_existential_0 + 8) = 0;
      v48 = *MEMORY[0x277D63720];
      OUTLINED_FUNCTION_4_0(v45);
      (*(v49 + 104))();
      v50 = v32;
      sub_26618AB60();
      AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
      v0[15] = OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_14_4();
      v0[16] = sub_2660F10F4(v51, v52);
      v53 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      sub_2660F113C(v41, v53);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v54 = swift_allocObject();
      v0[80] = v54;
      *(v54 + 16) = xmmword_26618F7E0;
      *(v54 + 32) = v40;
      v55 = *(MEMORY[0x277D5BE48] + 4);
      v56 = v40;
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[81] = v57;
      *v57 = v58;
      OUTLINED_FUNCTION_8_7(v57);
      OUTLINED_FUNCTION_22_0();

      return MEMORY[0x2821BB478](v59, v60, v61, v62, v63, v64);
    }

    if (qword_2814B2C40 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v107 = v0[64];
  v108 = v0[35];

  v109 = *(v108 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_locUtil);

  v110 = sub_26617CA00(0xD000000000000013, 0x8000000266198CE0);
  v112 = v111;
  v0[30] = v110;
  v0[31] = v111;

  v0[75] = v112;
  v113 = swift_task_alloc();
  v0[76] = v113;
  *v113 = v0;
  v113[1] = sub_2660EF50C;
  v114 = v0[35];
  OUTLINED_FUNCTION_22_0();

  return sub_2660F0310();
}

uint64_t sub_2660EF264()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 592);
  v3 = *(v1 + 584);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660EF364()
{
  OUTLINED_FUNCTION_20_3();
  sub_2660F1290(v2 + 56, v2 + 176);
  OUTLINED_FUNCTION_4_5();
  v4 = swift_allocObject();
  sub_2660B9EB8((v2 + 176), v4 + 16);
  v5 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v5);
  *(v2 + 264) = OUTLINED_FUNCTION_12_4();
  sub_26618B340();

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = *(v0 + 8);
  v7 = OUTLINED_FUNCTION_31_0();
  v8(v7);
  (*(v3 + 8))();

  OUTLINED_FUNCTION_5_6();

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_2660EF50C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v8 = *(v7 + 608);
  v9 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[77] = v1;

  if (v1)
  {
    v11 = v5[75];

    v12 = sub_2660F00B0;
  }

  else
  {
    v5[78] = a1;
    v12 = sub_2660EF62C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2660EF62C()
{
  v1 = v0[78];
  v2 = v0[75];
  v3 = v0[30];
  v0[79] = v1;
  if (v2)
  {
    v4 = v0[71];
    v6 = v0[37];
    v5 = v0[38];
    v7 = v0[35];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26618E190;
    v9 = sub_26618AB80();
    v10 = MEMORY[0x277D63778];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 32));
    *boxed_opaque_existential_0 = v1;
    *(boxed_opaque_existential_0 + 8) = 0;
    v12 = *MEMORY[0x277D63720];
    OUTLINED_FUNCTION_4_0(v9);
    (*(v13 + 104))();
    v14 = v1;
    sub_26618AB60();
    OUTLINED_FUNCTION_42_1();
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    v0[15] = OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_14_4();
    v0[16] = sub_2660F10F4(v15, v16);
    v17 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2660F113C(v5, v17);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v18 = swift_allocObject();
    v0[80] = v18;
    *(v18 + 16) = xmmword_26618F7E0;
    *(v18 + 32) = v4;
    v19 = *(MEMORY[0x277D5BE48] + 4);
    v20 = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[81] = v21;
    *v21 = v22;
    OUTLINED_FUNCTION_8_7(v21);
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB478](v23, v24, v25, v26, v27, v28);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v30 = v0[68];
    v31 = v0[67];
    v32 = v0[49];
    OUTLINED_FUNCTION_37_0(v0[43], qword_2814B4A98);
    v33 = OUTLINED_FUNCTION_13_2();
    v31(v33);
    v34 = sub_26618C690();
    v35 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v35))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v41 = v0[71];
    v42 = v0[69];
    v43 = v0[49];
    v44 = v0[43];
    v45 = v0[44];
    v46 = v0[41];
    v71 = v0[42];
    v47 = v0[40];

    v48 = OUTLINED_FUNCTION_12_1();
    v42(v48);
    sub_2660D3004();
    v49 = swift_allocError();
    *v50 = 7;
    swift_willThrow();

    v52 = *(v46 + 8);
    v51 = v46 + 8;
    v52(v71, v47);
    v0[82] = v49;
    v53 = OUTLINED_FUNCTION_4_9();
    v54(v53);
    v55 = v49;
    v56 = sub_26618C690();
    LOBYTE(v44) = sub_26618CAC0();

    if (os_log_type_enabled(v56, v44))
    {
      OUTLINED_FUNCTION_49_0();
      v47 = OUTLINED_FUNCTION_34_1();
      *v51 = 138412290;
      v57 = v49;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v58;
      *v47 = v58;
      OUTLINED_FUNCTION_9_6();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      sub_2660BDDF8(v47, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_16_5();
    v64 = OUTLINED_FUNCTION_11_2();
    v47(v64);
    v65 = swift_task_alloc();
    OUTLINED_FUNCTION_40_0(v65);
    OUTLINED_FUNCTION_0_7();
    sub_2660F10F4(v66, v67);
    OUTLINED_FUNCTION_18_5();
    v56->isa = v68;
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_22_0();

    return sub_2660F1894();
  }
}

uint64_t sub_2660EFA60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 648);
  v6 = *(v4 + 640);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2660EFB64()
{
  v4 = *(v2 + 304);

  sub_2660F11A0(v4);
  OUTLINED_FUNCTION_20_3();
  sub_2660F1290(v2 + 56, v2 + 176);
  OUTLINED_FUNCTION_4_5();
  v5 = swift_allocObject();
  sub_2660B9EB8((v2 + 176), v5 + 16);
  v6 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v6);
  *(v2 + 264) = OUTLINED_FUNCTION_12_4();
  sub_26618B340();

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v7 = *(v0 + 8);
  v8 = OUTLINED_FUNCTION_31_0();
  v9(v8);
  (*(v3 + 8))();

  OUTLINED_FUNCTION_5_6();

  OUTLINED_FUNCTION_54();

  return v10();
}

uint64_t sub_2660EFD20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 664);
  *v2 = *v0;
  *(v1 + 672) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2660EFE0C()
{
  v12 = *(v0 + 672);
  v1 = *(v0 + 656);
  v2 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 456);

  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_12_1();
  v8(v7);
  v11 = *(v0 + 676);
  OUTLINED_FUNCTION_5_6();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2660EFF40()
{
  v3 = *(v0 + 576);
  *(v0 + 656) = v3;
  v4 = OUTLINED_FUNCTION_4_9();
  v5(v4);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAC0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_49_0();
    v2 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v2 = v10;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_2660BDDF8(v2, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_16_5();
  v16 = OUTLINED_FUNCTION_11_2();
  v2(v16);
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_40_0(v17);
  OUTLINED_FUNCTION_0_7();
  sub_2660F10F4(v18, v19);
  OUTLINED_FUNCTION_18_5();
  v7->isa = v20;
  OUTLINED_FUNCTION_1_9();

  return sub_2660F1894();
}

uint64_t sub_2660F00B0()
{
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 320);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 616);
  *(v0 + 656) = v6;
  v7 = OUTLINED_FUNCTION_4_9();
  v8(v7);
  v9 = v6;
  v10 = sub_26618C690();
  LOBYTE(v4) = sub_26618CAC0();

  if (os_log_type_enabled(v10, v4))
  {
    OUTLINED_FUNCTION_49_0();
    v2 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v2 = v12;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660BDDF8(v2, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_16_5();
  v18 = OUTLINED_FUNCTION_11_2();
  v2(v18);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_40_0(v19);
  OUTLINED_FUNCTION_0_7();
  sub_2660F10F4(v20, v21);
  OUTLINED_FUNCTION_18_5();
  v10->isa = v22;
  OUTLINED_FUNCTION_1_9();

  return sub_2660F1894();
}

uint64_t sub_2660F0248()
{
  sub_26618B650();
  sub_26618B680();
  return sub_26618B640();
}

uint64_t sub_2660F0294(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660F02B4, 0, 0);
}

uint64_t sub_2660F02B4()
{
  OUTLINED_FUNCTION_18();
  sub_2660F1290(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660F0310()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  v2 = sub_26618A500();
  v1[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_25_0();
  v1[6] = swift_task_alloc();
  v6 = sub_26618C6B0();
  v1[7] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_25_0();
  v1[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v13 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2660F0444()
{
  v1 = v0[2];
  v0[12] = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2660F0530;

  return (sub_2661080B4)(0xD00000000000001FLL, 0x8000000266198CC0);
}

uint64_t sub_2660F0530(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v5 + 112) = v1;

  if (v1)
  {
    v11 = sub_2660F0B88;
  }

  else
  {
    *(v5 + 120) = a1;
    v11 = sub_2660F0648;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_2660F0648()
{
  v81 = v0;
  v1 = *(v0 + 120);
  v2 = [v1 dialog];

  sub_2660F10B0();
  v3 = sub_26618C9B0();

  if (sub_2661046B8(v3))
  {
    sub_2661046C8(0);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26677C150](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 88);
    v7 = *(v0 + 24);

    v8 = [v5 fullPrint];

    sub_26618C8B0();
    sub_26618A4F0();

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      v9 = 0;
    }

    else
    {
      v36 = *(v0 + 88);
      v37 = *(v0 + 24);
      v38 = *(v0 + 32);
      v9 = sub_26618A4D0();
      v39 = *(v38 + 8);
      v40 = OUTLINED_FUNCTION_12_1();
      v41(v40);
    }

    [*(v0 + 96) setPunchOutUri_];

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v42 = *(v0 + 96);
    v43 = *(v0 + 80);
    v44 = *(v0 + 64);
    OUTLINED_FUNCTION_37_0(*(v0 + 56), qword_2814B4A98);
    v45 = *(v44 + 16);
    v46 = OUTLINED_FUNCTION_13_2();
    v47(v46);
    v48 = v42;
    v49 = sub_26618C690();
    v50 = sub_26618CAA0();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 96);
    if (v51)
    {
      v53 = OUTLINED_FUNCTION_49_0();
      v79 = OUTLINED_FUNCTION_45_1();
      v80 = v79;
      *v53 = 136315138;
      v54 = [v52 punchOutUri];

      if (!v54)
      {
        __break(1u);
        return;
      }

      v55 = *(v0 + 64);
      v77 = *(v0 + 56);
      v78 = *(v0 + 80);
      v57 = *(v0 + 40);
      v56 = *(v0 + 48);
      v59 = *(v0 + 24);
      v58 = *(v0 + 32);
      sub_26618A4E0();

      (*(v58 + 32))(v56, v57, v59);
      sub_2660F10F4(&qword_28005C2F0, MEMORY[0x277CC9260]);
      v60 = sub_26618CFD0();
      v62 = v61;
      (*(v58 + 8))(v56, v59);
      v63 = sub_266103A98(v60, v62, &v80);

      *(v53 + 4) = v63;
      _os_log_impl(&dword_2660B7000, v49, v50, "Adding button punchout: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_3();

      (*(v55 + 8))(v78, v77);
    }

    else
    {
      v64 = *(v0 + 80);
      v65 = *(v0 + 56);
      v66 = *(v0 + 64);

      v67 = *(v66 + 8);
      v68 = OUTLINED_FUNCTION_11_2();
      v69(v68);
    }

    v71 = *(v0 + 80);
    v70 = *(v0 + 88);
    v72 = *(v0 + 72);
    v74 = *(v0 + 40);
    v73 = *(v0 + 48);

    OUTLINED_FUNCTION_54();
    v76 = *(v0 + 96);

    v75(v76);
  }

  else
  {

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    OUTLINED_FUNCTION_37_0(*(v0 + 56), qword_2814B4A98);
    v12 = *(v11 + 16);
    v13 = OUTLINED_FUNCTION_13_2();
    v14(v13);
    v15 = sub_26618C690();
    v16 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v16))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v22 = *(v0 + 96);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 56);

    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_12_1();
    v28(v27);
    sub_2660D3004();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v32 = *(v0 + 72);
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);

    OUTLINED_FUNCTION_5_3();

    v35();
  }
}

uint64_t sub_2660F0B88()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t *sub_2660F0C28()
{
  sub_2660D31B4((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  sub_2660D3208((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);
  sub_2660BDDF8(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input, &qword_28005C060, &qword_26618FD10);
  v1 = *(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_locUtil);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_eventSender));
  return v0;
}

uint64_t sub_2660F0CB8()
{
  sub_2660F0C28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RemoveAppFlow()
{
  result = qword_28005C2D0;
  if (!qword_28005C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660F0D64()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660F0E6C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660E1B2C;

  return sub_2660EDD08();
}

uint64_t sub_2660F0F08()
{
  v1 = *v0;
  sub_2660EDB94();
  return 1;
}

uint64_t sub_2660F0F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660D2E00;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660F101C()
{
  type metadata accessor for RemoveAppFlow();

  return sub_26618AFE0();
}

uint64_t sub_2660F1058(uint64_t a1)
{
  result = sub_2660F10F4(&qword_28005C2E0, type metadata accessor for RemoveAppFlow);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660F10B0()
{
  result = qword_28005C2E8;
  if (!qword_28005C2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C2E8);
  }

  return result;
}

uint64_t sub_2660F10F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2660F113C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660F11A0(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660F11FC()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2660D2E00;

  return sub_2660F0294(v3, v0 + 16);
}

uint64_t sub_2660F1290(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4_0(v3);
  (*v4)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_9()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[43];
  return v0[45];
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];
  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[47];
  v11 = v0[48];
  v14 = v0[46];
  v15 = v0[45];
  v12 = v0[42];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1)
{
  *(a1 + 8) = sub_2660EFA60;
  v2 = *(v1 + 336);
  return v1 + 56;
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_26618AC80();
}

void OUTLINED_FUNCTION_16_5()
{
  v3 = v1[69];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  v8 = v1[35];
  v7 = v1[36];
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  v2 = v0[71];
  v3 = v0[63];
  v4 = v0[57];
  v11 = v0[56];
  v12 = v0[59];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  v8 = v0[34];
  v9 = v0[35] + 112;

  return sub_2660F1290(v9, (v0 + 17));
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_1()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);

  return type metadata accessor for AppLaunchDataModels(0);
}

uint64_t sub_2660F1584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a2;
  v8 = *(a3 + 32);
  v13 = (v8 + *v8);
  v9 = v8[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v4[10] = v10;
  *v10 = v11;
  v10[1] = sub_2660F16B4;

  return v13(a1, a2, a3);
}

uint64_t sub_2660F16B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 80);
  v9 = *v0;
  *(v2 + 88) = v4;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660F17A8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  (*(v2 + 24))(v3, v2);
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2660F2734(v1 | ((HIDWORD(v1) & 1) << 32), v3, v2);
  sub_26618B050();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2660F1894()
{
  OUTLINED_FUNCTION_18();
  v0[14] = v1;
  v0[15] = v2;
  v0[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v0[16] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B870();
  v0[17] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v0[18] = v8;
  v0[19] = *(v9 + 64);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v10 = sub_26618B480();
  v0[22] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v0[23] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_8_2();
  v0[24] = v14;
  v15 = *(MEMORY[0x277D5BCD0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[25] = v16;
  *v16 = v17;
  v16[1] = sub_2660F1A10;

  return MEMORY[0x2821BAED8](v14);
}

uint64_t sub_2660F1A10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = *(v2 + 200);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660F1D34()
{
  OUTLINED_FUNCTION_18();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  v0[17] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B870();
  v0[18] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v0[19] = v9;
  v0[20] = *(v10 + 64);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v11 = sub_26618B480();
  v0[23] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v0[24] = v12;
  v14 = *(v13 + 64);
  v0[25] = OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2660F1E74()
{
  OUTLINED_FUNCTION_18();
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 112), *(*(v0 + 112) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 208) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_23_0(v2);

  return sub_2660C77E8(v4, v5);
}

uint64_t sub_2660F1F08()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = *(v2 + 208);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660F2244()
{
  OUTLINED_FUNCTION_18();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  v0[17] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B870();
  v0[18] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v0[19] = v9;
  v0[20] = *(v10 + 64);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v11 = sub_26618B480();
  v0[23] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v0[24] = v12;
  v14 = *(v13 + 64);
  v0[25] = OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2660F2384()
{
  OUTLINED_FUNCTION_18();
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 112), *(*(v0 + 112) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 208) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_23_0(v2);

  return sub_2660C79D4(v4, v5);
}

uint64_t sub_2660F2418()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = *(v2 + 208);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660F2734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26618B0D0();
  (*(a3 + 16))(a2, a3);
  return sub_26618B0B0();
}

uint64_t sub_2660F2864(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660F2C20, 0, 0);
}

uint64_t sub_2660F2884(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660F28A4, 0, 0);
}

uint64_t sub_2660F28A4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_26618B870();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2660F2958()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_3_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_8(v4);

  return sub_2660F2884(v6, v7);
}

uint64_t sub_2660F2A1C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_3_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_8(v4);

  return sub_2660F2864(v6, v7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_26_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2660F2B5C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_3_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_8(v4);

  return sub_2660F2864(v6, v7);
}

double OUTLINED_FUNCTION_0_8(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_26618CE80();
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);

  return MEMORY[0x2821BAB78](v2, v1);
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821BB060](v7, v6, v4 & 1, a4, 0, 1, v5, a4);
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_26618AC80();
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_21_4()
{
  v1 = v0[22];
  v4 = v0[23];
  v2 = v0[21];
  v3 = v0[20];
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 200);
  v4 = *(v2 + 120);
  return result;
}

uint64_t sub_2660F2DEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C330, &qword_266190B80);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C338, &qword_266190B88);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26618E190;
  v8 = (v7 + v6);
  *v8 = 0xD000000000000019;
  *(v8 + 1) = 0x8000000266198E10;
  sub_26618A4F0();
  v9 = sub_26618A500();
  result = __swift_getEnumTagSinglePayload(v3, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v9 - 8) + 32))(&v8[*(v4 + 48)], v3, v9);
    result = sub_26618C850();
    qword_28005D178 = result;
  }

  return result;
}

void *sub_2660F2FD0()
{
  sub_26618B0E0();
  v16[3] = sub_26618C460();
  v16[4] = &off_2877CC660;
  v16[0] = sub_26618C450();
  sub_26618B040();
  v14[3] = &type metadata for ReferenceResolver;
  v14[4] = &off_2877CC6F0;
  v14[0] = swift_allocObject();
  sub_2660CFC00(v16, v14[0] + 16);
  v0 = type metadata accessor for URLBasedLaunchFlow();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for ReferenceResolver);
  v5 = *(off_2877CC6D0 + 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v3[10] = &type metadata for ReferenceResolver;
  v3[11] = &off_2877CC6F0;
  v9 = swift_allocObject();
  v3[7] = v9;
  v10 = *(v7 + 1);
  *(v9 + 16) = *v7;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v7 + 4);
  v11 = OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input;
  v12 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v3 + v11, 1, 1, v12);
  sub_2660B9EB8(&v17, (v3 + 2));
  sub_2660B9EB8(&v15, (v3 + 12));
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_2660CFC5C(v16);
  return v3;
}

uint64_t sub_2660F3198(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26618B790();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660F329C()
{
  type metadata accessor for URLBasedLaunchFlow();
  sub_2660F46E8(&qword_28005C320, type metadata accessor for URLBasedLaunchFlow);
  return sub_26618AFB0();
}

uint64_t sub_2660F332C()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_26618A500();
  v1[7] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_26618B8E0();
  v1[12] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618C6B0();
  v1[15] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[16] = v12;
  v14 = *(v13 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v15 = sub_26618B790();
  v1[19] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[20] = v16;
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_8_2();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64);
  v1[22] = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618B800();
  v1[23] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[24] = v21;
  v23 = *(v22 + 64);
  v1[25] = OUTLINED_FUNCTION_8_2();
  v24 = sub_26618B840();
  v1[26] = v24;
  OUTLINED_FUNCTION_0_4(v24);
  v1[27] = v25;
  v27 = *(v26 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660F35D8, 0, 0);
}

uint64_t sub_2660F35D8()
{
  v136 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_2660CFA98(v0[22]);
LABEL_21:
    v134 = 0;
    v132 = 21;
    goto LABEL_22;
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  (*(v10 + 16))(v9, v7, v11);
  sub_2660CFA98(v7);
  sub_26618B770();
  (*(v10 + 8))(v9, v11);
  if ((*(v6 + 88))(v5, v8) != *MEMORY[0x277D5C160])
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    goto LABEL_21;
  }

  v12 = v0[30];
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  (*(v0[24] + 96))(v15, v0[23]);
  (*(v14 + 32))(v12, v15, v13);
  if (qword_2814B2C40 != -1)
  {
LABEL_30:
    swift_once();
  }

  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[18];
  v22 = v0[15];
  v21 = v0[16];
  v23 = __swift_project_value_buffer(v22, qword_2814B4A98);
  v123 = *(v21 + 16);
  v123(v20, v23, v22);
  v24 = *(v19 + 16);
  v24(v17, v16, v18);
  v25 = sub_26618C690();
  v26 = sub_26618CAA0();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[29];
  v126 = v23;
  v128 = (v21 + 16);
  if (v27)
  {
    v29 = v0[27];
    v30 = v0[28];
    v31 = v0[26];
    v130 = v0[18];
    v118 = v0[16];
    v120 = v0[15];
    v32 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v135 = v116;
    *v32 = 136315138;
    v24(v30, v28, v31);
    v33 = sub_26618C8D0();
    v34 = v26;
    v36 = v35;
    v133 = *(v29 + 8);
    v133(v28, v31);
    v37 = sub_266103A98(v33, v36, &v135);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_2660B7000, v25, v34, "Looking for url override matches in: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v38 = v130;
    v131 = *(v118 + 8);
    v131(v38, v120);
  }

  else
  {
    v39 = v0[26];
    v40 = v0[27];
    v41 = v0[18];
    v42 = v0[15];
    v43 = v0[16];

    v133 = *(v40 + 8);
    v133(v28, v39);
    v131 = *(v43 + 8);
    v131(v41, v42);
  }

  v44 = v0[30];
  v46 = v0[13];
  v45 = v0[14];
  v47 = v0[12];
  sub_26618B820();
  v48 = sub_266144AE8();
  (*(v46 + 8))(v45, v47);
  if (v48)
  {
    __swift_project_boxed_opaque_existential_1((v0[6] + 56), *(v0[6] + 80));
    v49 = sub_2660FA19C();
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_20:
    v59 = v0[30];
    v60 = v0[26];
    v61 = v0[27];

    v133(v59, v60);
    goto LABEL_21;
  }

  v51 = 0;
  v52 = (v49 + 40);
  while (1)
  {
    if (v51 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v54 = *(v52 - 1);
    v53 = *v52;
    v55 = qword_28005BC48;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = qword_28005D178;
    if (*(qword_28005D178 + 16))
    {
      v57 = sub_266129F20(v54, v53);
      if (v58)
      {
        break;
      }
    }

    ++v51;

    v52 += 2;
    if (v50 == v51)
    {
      goto LABEL_20;
    }
  }

  v117 = v0[17];
  v119 = v0[15];
  v75 = v0[10];
  v74 = v0[11];
  v76 = v0[8];
  v121 = v0[9];
  v77 = v0[7];
  v78 = *(v76 + 16);
  v78(v75, *(v56 + 56) + *(v76 + 72) * v57, v77);

  (*(v76 + 32))(v74, v75, v77);
  v123(v117, v126, v119);
  v78(v121, v74, v77);

  v79 = sub_26618C690();
  v80 = sub_26618CA90();

  v81 = os_log_type_enabled(v79, v80);
  v82 = v0[17];
  v125 = v0[16];
  v83 = v0[15];
  v85 = v0[8];
  v84 = v0[9];
  v86 = v0[7];
  if (v81)
  {
    v122 = v0[15];
    v87 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v87 = 136315394;
    v88 = sub_266103A98(v54, v53, &v135);

    *(v87 + 4) = v88;
    *(v87 + 12) = 2080;
    sub_2660F46E8(&qword_28005C2F0, MEMORY[0x277CC9260]);
    v89 = sub_26618CFD0();
    v91 = v90;
    v92 = OUTLINED_FUNCTION_1_10();
    v93(v92);
    v94 = sub_266103A98(v89, v91, &v135);

    *(v87 + 14) = v94;
    _os_log_impl(&dword_2660B7000, v79, v80, "Found matching url for bundle %s: %s", v87, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v95 = v122;
    v96 = v82;
  }

  else
  {

    v97 = OUTLINED_FUNCTION_1_10();
    v98(v97);
    v96 = v82;
    v95 = v83;
  }

  v131(v96, v95);
  v99 = v0[30];
  v100 = v0[26];
  v101 = v0[27];
  v102 = v0[11];
  v104 = v0[6];
  v103 = v0[7];
  v105 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C328, &unk_266190B70);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_26618E180;
  v107 = *MEMORY[0x277D48B28];
  v108 = sub_26618C8B0();
  v109 = MEMORY[0x277D837D0];
  *(v106 + 56) = MEMORY[0x277D837D0];
  *(v106 + 32) = v108;
  *(v106 + 40) = v110;
  v111 = *MEMORY[0x277D48B20];
  v112 = sub_26618C8B0();
  *(v106 + 88) = v109;
  *(v106 + 64) = v112;
  *(v106 + 72) = v113;
  sub_2660F4678(v106, v105);
  v114 = sub_26618A4D0();
  [v105 setPunchOutUri_];

  v115 = v104[6];
  __swift_project_boxed_opaque_existential_1(v104 + 2, v104[5]);
  sub_26618B5C0();

  v128(v102, v103);
  v133(v99, v100);
  v132 = 0;
  v134 = 1;
LABEL_22:
  v62 = v0[29];
  v63 = v0[30];
  v64 = v0[28];
  v65 = v0[25];
  v67 = v0[21];
  v66 = v0[22];
  v69 = v0[17];
  v68 = v0[18];
  v70 = v0[14];
  v124 = v0[11];
  v127 = v0[10];
  v129 = v0[9];
  v71 = v0[5];
  sub_26618B360();

  LOBYTE(v135) = v134;
  v72 = v0[1];

  return v72(v132 | (v134 << 32));
}

uint64_t *sub_2660F3EFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input);
  return v0;
}

uint64_t sub_2660F3F3C()
{
  sub_2660F3EFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for URLBasedLaunchFlow()
{
  result = qword_28005C310;
  if (!qword_28005C310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660F3FE8()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660F40B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660F4150;

  return sub_2660F332C();
}

uint64_t sub_2660F4150()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2 | ((HIDWORD(v2) & 1) << 32));
}

uint64_t sub_2660F4248(uint64_t a1)
{
  v2 = *v1;
  sub_2660F3198(a1);
  return 1;
}

uint64_t sub_2660F4270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2660F4320;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660F4320()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_2660F4434(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660F44FC;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660F44FC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2660F45E4()
{
  type metadata accessor for URLBasedLaunchFlow();

  return sub_26618AFE0();
}

uint64_t sub_2660F4620(uint64_t a1)
{
  result = sub_2660F46E8(&qword_28005C320, type metadata accessor for URLBasedLaunchFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_2660F4678(uint64_t a1, void *a2)
{
  v3 = sub_26618C990();

  [a2 setLaunchOptions_];
}

uint64_t sub_2660F46E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2660F474C()
{
  v1 = [v0 disambiguationItems];
  v2 = sub_26618C9B0();

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v5 = *(v2 + 16);
LABEL_2:
  v6 = v2 + 32 + 32 * v3;
  while (1)
  {
    if (v5 == v3)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_2660CD384(v6, v10);
    v7 = sub_2660F489C(v10);
    ++v3;
    v6 += 32;
    v8 = __swift_destroy_boxed_opaque_existential_1(v10);
    if (v7)
    {
      MEMORY[0x26677BD40](v8);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v4 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_1(v10);

  __break(1u);
  return result;
}

id sub_2660F489C(uint64_t a1)
{
  v2 = sub_26618C6B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  sub_2660CD384(a1, v24);
  type metadata accessor for Application();
  if (!swift_dynamicCast())
  {
    sub_2660CD384(a1, v24);
    sub_2660FA768();
    if (swift_dynamicCast())
    {
      v11 = v23;
      v12 = INTypedObjectWithCustomObject();
      if (v12)
      {
        v10 = v12;

        return v10;
      }

      if (qword_2814B2C38 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v2, qword_2814B4A80);
      (*(v3 + 16))(v7, v17, v2);
      v18 = sub_26618C690();
      v19 = sub_26618CAB0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2660B7000, v18, v19, "Could not convert disambiguation item to INObject", v20, 2u);
        MEMORY[0x26677CC30](v20, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v7, v2);
    }

    else
    {
      if (qword_2814B2C38 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v2, qword_2814B4A80);
      (*(v3 + 16))(v9, v13, v2);
      v14 = sub_26618C690();
      v15 = sub_26618CAB0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2660B7000, v14, v15, "Unexpected disambiguation item type", v16, 2u);
        MEMORY[0x26677CC30](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }

    return 0;
  }

  return v23;
}

uint64_t sub_2660F4BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a1;
  v171 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v152 = &v145 - v7;
  OUTLINED_FUNCTION_18_2();
  v150 = sub_26618B8E0();
  v8 = OUTLINED_FUNCTION_2_2(v150);
  v149 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_6();
  v148 = v12;
  OUTLINED_FUNCTION_18_2();
  v151 = sub_26618B980();
  v13 = OUTLINED_FUNCTION_2_2(v151);
  v147 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_6();
  v146 = v17;
  OUTLINED_FUNCTION_18_2();
  v153 = sub_26618B840();
  v18 = OUTLINED_FUNCTION_2_2(v153);
  v156 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_6();
  v160 = v22;
  OUTLINED_FUNCTION_18_2();
  v23 = type metadata accessor for AppLaunchIntent();
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_6();
  v157 = v27;
  OUTLINED_FUNCTION_18_2();
  v28 = sub_26618C0E0();
  v29 = OUTLINED_FUNCTION_2_2(v28);
  v158 = v30;
  v159 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_6();
  v163 = v33;
  OUTLINED_FUNCTION_18_2();
  v34 = sub_26618B800();
  v172 = OUTLINED_FUNCTION_2_2(v34);
  v173 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_69_0();
  v161 = v38;
  OUTLINED_FUNCTION_65_0();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v145 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v145 - v43;
  v162 = sub_26618B7F0();
  v45 = OUTLINED_FUNCTION_2_2(v162);
  v169 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4_6();
  v168 = v49;
  OUTLINED_FUNCTION_18_2();
  v50 = sub_26618C6B0();
  v51 = OUTLINED_FUNCTION_2_2(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_69_0();
  v155 = v56;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v57);
  v154 = &v145 - v58;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v59);
  v145 = &v145 - v60;
  OUTLINED_FUNCTION_65_0();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v145 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v145 - v65;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v50, qword_2814B4A98);
  v67 = *(v53 + 16);
  v164 = v68;
  v165 = v67;
  v67(v66);
  v69 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_6_2();
    *v71 = 0;
    _os_log_impl(&dword_2660B7000, v69, v2, "CloseAppDisambiguationStrategy.actionForInput() called", v71, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v72 = v50;
  v166 = *(v53 + 8);
  v167 = v53 + 8;
  v166(v66, v50);
  sub_26618B770();
  v73 = v172;
  v74 = v173;
  v75 = v173[11];
  if ((v75)(v44, v172) != *MEMORY[0x277D5C150])
  {
    (v74[1])(v44, v73);
LABEL_13:
    sub_26618B770();
    v82 = OUTLINED_FUNCTION_48_1();
    v83 = v75(v82);
    v84 = v163;
    if (v83 == *MEMORY[0x277D5C128])
    {
      v85 = v173[12];
      v86 = OUTLINED_FUNCTION_48_1();
      v87(v86);
      v89 = v158;
      v88 = v159;
      (*(v158 + 32))(v84, v42, v159);
      v90 = v157;
      (*(v89 + 16))(v157, v84, v88);
      if (sub_2660C97B4())
      {
        sub_26618B290();
        OUTLINED_FUNCTION_0_9();
        sub_2660FA810(v90, v91);
        v92 = OUTLINED_FUNCTION_53_0();
        return v93(v92);
      }

      OUTLINED_FUNCTION_0_9();
      sub_2660FA810(v90, v116);
      v117 = OUTLINED_FUNCTION_53_0();
      v118(v117);
      goto LABEL_29;
    }

    if (v83 == *MEMORY[0x277D5C160])
    {
      v95 = v173[12];
      v96 = OUTLINED_FUNCTION_48_1();
      v97(v96);
      v98 = v156;
      v99 = v153;
      (*(v156 + 32))(v160, v42, v153);
      v100 = v148;
      sub_26618B820();
      v101 = sub_26618B8B0();
      (*(v149 + 8))(v100, v150);
      v102 = v152;
      sub_266139C58(v101, v152);

      v103 = v151;
      if (__swift_getEnumTagSinglePayload(v102, 1, v151) == 1)
      {
        sub_2660D30C4(v102, &qword_28005BF28, &qword_26618F960);
        if (qword_2814B2C38 != -1)
        {
          OUTLINED_FUNCTION_2_5();
        }

        OUTLINED_FUNCTION_37_0(v72, qword_2814B4A80);
        v165(v145);
        v104 = sub_26618C690();
        v105 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_16_4(v105))
        {
          v106 = OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_43_0(v106);
          OUTLINED_FUNCTION_26_2(&dword_2660B7000, v107, v108, "CloseAppDisambiguationStrategy.actionForInputNLv4Uso() No user dialog act found in userParse");
          v98 = v156;
          OUTLINED_FUNCTION_7_2();
        }

        v109 = OUTLINED_FUNCTION_32_1();
        (v166)(v109);
        sub_26618B2B0();
        return (*(v98 + 8))(v160, v99);
      }

      v138 = v147;
      (*(v147 + 32))(v146, v102, v103);
      if (sub_26618B940() & 1) != 0 || (sub_26618B930())
      {
        sub_26618B290();
        v139 = *(v138 + 8);
        v140 = OUTLINED_FUNCTION_48_1();
        v141(v140);
        return (*(v98 + 8))(v160, v99);
      }

      v142 = *(v138 + 8);
      v143 = OUTLINED_FUNCTION_48_1();
      v144(v143);
      (*(v98 + 8))(v160, v99);
    }

    else
    {
      v119 = v173[1];
      v120 = OUTLINED_FUNCTION_48_1();
      v121(v120);
    }

LABEL_29:
    v122 = v161;
    sub_26618B770();
    v123 = sub_2661123A8(v122);
    v124 = OUTLINED_FUNCTION_53_0();
    v125(v124);
    if (v123)
    {
      v126 = v154;
      (v165)(v154, v164, v72);
      v127 = sub_26618C690();
      v128 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_16_4(v128))
      {
        v129 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_43_0(v129);
        OUTLINED_FUNCTION_26_2(&dword_2660B7000, v130, v131, "CloseAppDisambiguationStrategy.actionForInput() handling");
        OUTLINED_FUNCTION_7_2();
      }

      v166(v126, v72);
      return sub_26618B2A0();
    }

    else
    {
      v132 = v155;
      (v165)(v155, v164, v72);
      v133 = sub_26618C690();
      v134 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_16_4(v134))
      {
        v135 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_43_0(v135);
        OUTLINED_FUNCTION_26_2(&dword_2660B7000, v136, v137, "CloseAppDisambiguationStrategy.actionForInput() ignoring");
        OUTLINED_FUNCTION_7_2();
      }

      v166(v132, v72);
      return sub_26618B2B0();
    }
  }

  (v74[12])(v44, v73);
  v76 = v44;
  v77 = v162;
  (*(v169 + 32))(v168, v76, v162);
  sub_26618B7D0();
  OUTLINED_FUNCTION_54_0();
  v80 = v80 && v79 == v78;
  if (v80)
  {
  }

  else
  {
    v81 = OUTLINED_FUNCTION_44_0();

    if ((v81 & 1) == 0)
    {
      (*(v169 + 8))(v168, v77);
      goto LABEL_13;
    }
  }

  (v165)(v64, v164, v72);
  v110 = sub_26618C690();
  v111 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_16_4(v111))
  {
    v112 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_43_0(v112);
    OUTLINED_FUNCTION_26_2(&dword_2660B7000, v113, v114, "CloseAppDisambiguationStrategy.actionForInput() directInvocation handling");
    OUTLINED_FUNCTION_7_2();
  }

  v115 = OUTLINED_FUNCTION_32_1();
  (v166)(v115);
  sub_26618B2A0();
  return (*(v169 + 8))(v168, v77);
}

uint64_t sub_2660F5710()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  v1[6] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618B440();
  v1[9] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v15 = sub_26618C6B0();
  v1[12] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[13] = v16;
  v18 = *(v17 + 64);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v19 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2660F5870()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  __swift_project_value_buffer(v3, qword_2814B4A98);
  v4 = OUTLINED_FUNCTION_8_3();
  v5(v4);
  v6 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v8);
    _os_log_impl(&dword_2660B7000, v6, v3, "CloseAppDisambiguationStrategy.makePromptForDisambiguation() called", v2, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[3];

  v16 = *(v10 + 8);
  v17 = OUTLINED_FUNCTION_12_1();
  v18(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v0[15] = sub_26618B610();
  sub_2661490E0();
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v12;
  sub_26618B620();

  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_2660F5A58;
  v20 = v0[8];
  v21 = v0[4];
  v22 = v0[2];

  return sub_2660F5E64();
}

uint64_t sub_2660F5A58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v7 + 136) = v0;

  if (v0)
  {
    v8 = sub_2660F5C20;
  }

  else
  {
    v8 = sub_2660F5B78;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2660F5B78()
{
  OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_40_1();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_12_1();
  v5(v4);

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_2660F5C20()
{
  OUTLINED_FUNCTION_19();
  v2 = OUTLINED_FUNCTION_40_1();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_12_1();
  v6(v5);

  OUTLINED_FUNCTION_5_3();
  v8 = *(v0 + 136);

  return v7();
}

uint64_t sub_2660F5CC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26618B230();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_26618B650();
  sub_26618B680();
  v12 = sub_26618B440();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_26618B660();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_26618B630();
}

uint64_t sub_2660F5E64()
{
  OUTLINED_FUNCTION_18();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = sub_26618C6B0();
  v1[14] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[15] = v6;
  v8 = *(v7 + 64);
  v1[16] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B6A0();
  v1[17] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[18] = v10;
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_8_2();
  v13 = type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_0_4(v13);
  v1[20] = v14;
  v16 = *(v15 + 64);
  v1[21] = OUTLINED_FUNCTION_8_2();
  v17 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  v1[22] = v17;
  OUTLINED_FUNCTION_3_0(v17);
  v19 = *(v18 + 64);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618C300();
  v1[24] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[25] = v21;
  v23 = *(v22 + 64);
  v1[26] = OUTLINED_FUNCTION_8_2();
  v24 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2660F6010()
{
  v80 = v0;
  v1 = v0[12];
  v2 = sub_2661046B8(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v76 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x26677C150](v3, v0[12]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_45;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v10 = sub_2660C9D24(v7);
    v12 = v11;

    ++v3;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = v76[2];
        sub_266129600();
        v76 = v16;
      }

      v13 = v76[2];
      if (v13 >= v76[3] >> 1)
      {
        sub_266129600();
        v76 = v17;
      }

      v76[2] = v13 + 1;
      v14 = &v76[2 * v13];
      v14[4] = v10;
      v14[5] = v12;
      v3 = v9;
    }
  }

  v73 = v6;
  v74 = v5;
  v75 = v4;
  v18 = 0;
  v19 = v0[25];
  v20 = v76[2];
  v21 = v76 + 5;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[27] = v22;
    if (v20 == v18)
    {
      break;
    }

    if (v18 >= v76[2])
    {
      goto LABEL_46;
    }

    v23 = v0[26];
    v25 = *(v21 - 1);
    v24 = *v21;

    sub_26618C2F0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_266129CA4(0, *(v22 + 16) + 1, 1, v22);
      v22 = v30;
    }

    v27 = *(v22 + 16);
    v26 = *(v22 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_266129CA4(v26 > 1, v27 + 1, 1, v22);
      v22 = v31;
    }

    v28 = v0[26];
    v29 = v0[24];
    *(v22 + 16) = v27 + 1;
    (*(v19 + 32))(v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v27, v28, v29);
    v21 += 2;
    ++v18;
  }

  v32 = v0[13];

  v33 = *(v32 + 232);
  v34 = sub_26617CA00(0x50415F4843494857, 0xE900000000000050);
  if (!v35)
  {

    if (qword_2814B2C40 == -1)
    {
LABEL_39:
      v56 = v0[15];
      v55 = v0[16];
      v57 = v0[14];
      __swift_project_value_buffer(v57, qword_2814B4A98);
      v58 = OUTLINED_FUNCTION_8_3();
      v59(v58);
      v60 = sub_26618C690();
      sub_26618CAB0();
      OUTLINED_FUNCTION_59_0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v62);
        _os_log_impl(&dword_2660B7000, v60, v57, "Unable to get localized system text for snippet", v56, 2u);
        OUTLINED_FUNCTION_28_3();
      }

      v64 = v0[15];
      v63 = v0[16];
      v65 = v0[14];

      v66 = *(v64 + 8);
      v67 = OUTLINED_FUNCTION_12_1();
      v68(v67);
      sub_2660D3004();
      swift_allocError();
      *v69 = 7;
      swift_willThrow();
      OUTLINED_FUNCTION_63_0();

      OUTLINED_FUNCTION_5_3();

      return v70();
    }

LABEL_50:
    OUTLINED_FUNCTION_0_3();
    goto LABEL_39;
  }

  v36 = v34;
  v37 = v35;
  v38 = sub_2661046B8(v0[12]);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v40 = v38;
    v78 = MEMORY[0x277D84F90];
    sub_26612A648();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v71 = v37;
      v72 = v36;
      v41 = 0;
      v42 = v0[20];
      v39 = v78;
      v77 = v40;
      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_47;
        }

        if (v75)
        {
          v44 = MEMORY[0x26677C150](v41, v0[12]);
        }

        else
        {
          if (v41 >= *(v74 + 16))
          {
            goto LABEL_48;
          }

          v44 = *(v73 + 8 * v41);
        }

        v45 = v44;
        v46 = v0[21];
        v79 = v44;
        sub_2660F6B40(&v79, v46);

        v47 = *(v78 + 16);
        if (v47 >= *(v78 + 24) >> 1)
        {
          sub_26612A648();
        }

        v48 = v0[21];
        *(v78 + 16) = v47 + 1;
        sub_2660FA7AC(v48, v78 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v47);
        ++v41;
        if (v43 == v77)
        {
          v37 = v71;
          v36 = v72;
          goto LABEL_35;
        }
      }
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_35:
  v50 = v0[22];
  v49 = v0[23];
  v51 = v0[13];
  v0[7] = v36;
  v0[8] = v37;
  sub_26618AB90();
  v52 = *(v50 + 20);
  v0[9] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C390, "Fi");
  sub_26618AB90();
  v53 = swift_task_alloc();
  v0[28] = v53;
  *v53 = v0;
  v53[1] = sub_2660F65C8;

  return sub_2660C072C(v22);
}

uint64_t sub_2660F65C8()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = *(v4 + 224);
  *v6 = *v1;
  *(v5 + 232) = v0;

  v8 = *(v4 + 216);

  if (v0)
  {
    v9 = sub_2660F6AAC;
  }

  else
  {
    *(v5 + 240) = v3;
    v9 = sub_2660F6700;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660F6700()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[13];
  (*(v0[18] + 16))(v0[19], v0[11], v0[17]);
  sub_26618B640();
  v4 = v3[15];
  v5 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v4);
  v6 = OUTLINED_FUNCTION_60_0();
  v0[5] = type metadata accessor for AppLaunchDataModels(v6);
  v0[6] = sub_2660FA864(qword_2814B3FF0, 255, type metadata accessor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_2660FA8AC(v2, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v8 = swift_allocObject();
  v0[31] = v8;
  *(v8 + 16) = xmmword_26618F7E0;
  *(v8 + 32) = v1;
  v9 = *(MEMORY[0x277D5BE38] + 4);
  v10 = v1;
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_2660F68D0;
  v12 = v0[19];
  v13 = v0[10];

  return MEMORY[0x2821BB468](v13, v0 + 2, v8, v12, v4, v5);
}

uint64_t sub_2660F68D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660F69D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);

  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_31_0();
  v10(v9);
  OUTLINED_FUNCTION_20_5();
  sub_2660FA810(v2, v11);

  OUTLINED_FUNCTION_5_3();

  return v12();
}

uint64_t sub_2660F6AAC()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_20_5();
  sub_2660FA810(v2, v3);
  v4 = *(v0 + 232);
  OUTLINED_FUNCTION_63_0();

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660F6B40@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_26618AB50();
  v4 = *(v3 - 8);
  v42 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v45 = &v41 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v15 = swift_allocObject();
  v41 = xmmword_26618E190;
  *(v15 + 16) = xmmword_26618E190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
  inited = swift_initStackObject();
  *(inited + 16) = v41;
  v48 = 0x696669746E656469;
  v49 = 0xEA00000000007265;
  v17 = MEMORY[0x277D837D0];
  sub_26618CD20();
  v18 = sub_2660C9D30(v14);
  *(inited + 96) = v17;
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_26618C850();
  v22 = sub_26618AB80();
  v23 = MEMORY[0x277D63778];
  *(v15 + 56) = v22;
  *(v15 + 64) = v23;
  __swift_allocate_boxed_opaque_existential_0((v15 + 32));
  sub_26618AB70();

  v43 = v13;
  sub_26618AB60();
  v24 = sub_2660C9D24(v14);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = sub_2660C9D30(v14);
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v32 = *(v4 + 16);
  v33 = v44;
  v32(v44, v13, v3);
  v48 = v26;
  v49 = v27;
  sub_26618AB90();
  v34 = type metadata accessor for AppLaunchDataModels.App(0);
  v35 = v34[5];
  v48 = v30;
  v49 = v31;
  sub_26618AB90();
  v36 = v34[6];
  LOBYTE(v48) = 0;
  sub_26618AB90();
  v37 = v45;
  v32(v45, v33, v3);
  v38 = v34[7];
  v32(v47, v37, v3);
  sub_26618AB90();
  v39 = *(v42 + 8);
  v39(v37, v3);
  v39(v33, v3);
  return (v39)(v43, v3);
}

uint64_t *sub_2660F6F00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2660D31B4((v0 + 17));
  v1 = v0[29];

  sub_2660D3208((v0 + 30));
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  return v0;
}

uint64_t sub_2660F6F50()
{
  sub_2660F6F00();

  return MEMORY[0x2821FE8D8](v0, 320, 7);
}

void sub_2660F6FAC()
{
  type metadata accessor for CloseAppDisambiguationStrategy();

  JUMPOUT(0x26677A120);
}

uint64_t sub_2660F7018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2660F70C4;

  return sub_2660F71C8(a2);
}

uint64_t sub_2660F70C4(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2660F71C8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26618C6B0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660F7288, 0, 0);
}

uint64_t sub_2660F7288()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[4];
  v1 = v0[5];
  __swift_project_value_buffer(v0[3], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_84(&dword_2660B7000, v8, v9, "ApplicationNeedsDisambiguationStrategy.makeDisambiguationItemContainer() called");
    OUTLINED_FUNCTION_28_3();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_12_1();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v17 = sub_26618B6C0();
  sub_2660F474C();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C350, qword_266191BA0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_26618B720();

  v21 = OUTLINED_FUNCTION_72_0();

  return v22(v21);
}

uint64_t sub_2660F73F0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_26618C6B0();
  v0[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660F7494()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[4];
  v1 = v0[5];
  __swift_project_value_buffer(v0[3], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_84(&dword_2660B7000, v8, v9, "ApplicationNeedsDisambiguationStrategy.makeDisambiguationItemContainer() called");
    OUTLINED_FUNCTION_28_3();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_12_1();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v17 = sub_26618B6C0();
  sub_2660F474C();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C350, qword_266191BA0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_26618B720();

  v21 = OUTLINED_FUNCTION_72_0();

  return v22(v21);
}

uint64_t sub_2660F75FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2660D3260;

  return sub_2660F76D4(a1, a2, a3, a4);
}

uint64_t sub_2660F76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_26618B8E0();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = type metadata accessor for AppLaunchIntent();
  v5[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = sub_26618B790();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C360, &qword_266190D78);
  v5[24] = v15;
  v16 = *(v15 - 8);
  v5[25] = v16;
  v17 = *(v16 + 64) + 15;
  v5[26] = swift_task_alloc();
  v18 = sub_26618B840();
  v5[27] = v18;
  v19 = *(v18 - 8);
  v5[28] = v19;
  v20 = *(v19 + 64) + 15;
  v5[29] = swift_task_alloc();
  v21 = sub_26618C0E0();
  v5[30] = v21;
  v22 = *(v21 - 8);
  v5[31] = v22;
  v23 = *(v22 + 64) + 15;
  v5[32] = swift_task_alloc();
  v24 = sub_26618B7F0();
  v5[33] = v24;
  v25 = *(v24 - 8);
  v5[34] = v25;
  v26 = *(v25 + 64) + 15;
  v5[35] = swift_task_alloc();
  v27 = sub_26618B800();
  v5[36] = v27;
  v28 = *(v27 - 8);
  v5[37] = v28;
  v29 = *(v28 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v30 = sub_26618C6B0();
  v5[43] = v30;
  v31 = *(v30 - 8);
  v5[44] = v31;
  v32 = *(v31 + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660F7B00, 0, 0);
}

uint64_t sub_2660F7B00()
{
  v201 = v0;
  if (qword_2814B2C40 != -1)
  {
LABEL_80:
    OUTLINED_FUNCTION_0_3();
  }

  v6 = *(v0 + 400);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  OUTLINED_FUNCTION_37_0(v8, qword_2814B4A98);
  v9 = OUTLINED_FUNCTION_55_0();
  v10(v9);
  v11 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v13);
    OUTLINED_FUNCTION_83(&dword_2660B7000, v14, v15, "ApplicationNeedsDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_62_0();
  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_11_2();
  v198 = v18;
  (v18)(v17);
  sub_26618B770();
  v19 = *(v4 + 88);
  v4 += 88;
  v20 = v19(v2, v3);
  if (v20 == *MEMORY[0x277D5C128])
  {
    v21 = *(v0 + 392);
    v22 = *(v0 + 336);
    v23 = *(v0 + 344);
    v24 = *(v0 + 320);
    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v4 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);
    v29 = OUTLINED_FUNCTION_11_5();
    v30(v29);
    v31 = OUTLINED_FUNCTION_27_2();
    v32(v31);
    v33 = OUTLINED_FUNCTION_10_5();
    v34(v33);
    v35 = OUTLINED_FUNCTION_13_5();
    v36(v35);
    v37 = sub_26618C690();
    sub_26618CAA0();
    OUTLINED_FUNCTION_46_1();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v39);
      OUTLINED_FUNCTION_13_1(&dword_2660B7000, v40, v41, "Parsing disambiguation result from NLv3IntentOnly");
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_61_0();
    v42 = OUTLINED_FUNCTION_9_7();
    v43(v42);
    v44 = OUTLINED_FUNCTION_80();
    v45(v44);
    if (qword_2814B3D40 != -1)
    {
      OUTLINED_FUNCTION_31_2();
    }

    v1 = *(v0 + 152);
    v46 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = qword_2814B4AF8;
    v47 = _s11ApplicationVMa(0);
    OUTLINED_FUNCTION_21_5();
    sub_2660FA864(v48, 255, v49);
    OUTLINED_FUNCTION_3_10();
    sub_2660FA864(v50, 255, v51);
    OUTLINED_FUNCTION_32_1();
    sub_26618BD90();
    if (__swift_getEnumTagSinglePayload(v2, 1, v47) == 1)
    {
      OUTLINED_FUNCTION_79();
      v53 = *(v0 + 248);
      v52 = *(v0 + 256);
      v54 = *(v0 + 240);
      v55 = *(v0 + 160);
      v56 = *(v0 + 144);
      OUTLINED_FUNCTION_0_9();
      sub_2660FA810(v57, v58);
      v59 = *(v53 + 8);
      v11 = v53 + 8;
      v60 = OUTLINED_FUNCTION_31_0();
      v61(v60);
      v62 = &qword_28005C220;
      v63 = &qword_266190D70;
      v64 = v56;
LABEL_61:
      sub_2660D30C4(v64, v62, v63);
      v168 = OUTLINED_FUNCTION_8_9();
      v169(v168);
LABEL_62:
      v199 = 0;
      v47 = 0;
      goto LABEL_63;
    }

    if (qword_2814B3D90 != -1)
    {
      OUTLINED_FUNCTION_30_2();
    }

    OUTLINED_FUNCTION_75_0();
    v11 = qword_2814B4B20;
    OUTLINED_FUNCTION_3_10();
    sub_2660FA864(v74, 255, v75);
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_0_9();
    sub_2660FA810(v3, v76);
    v78 = *(v25 + 8);
    v77 = v25 + 8;
    v79 = OUTLINED_FUNCTION_31_0();
    v80(v79);
    OUTLINED_FUNCTION_19_4();
    goto LABEL_25;
  }

  if (v20 == *MEMORY[0x277D5C150])
  {
    v65 = OUTLINED_FUNCTION_24_2();
    v66(v65);
    v67 = *(v3 + 96);
    v3 += 96;
    v67(v6, v8);
    v68 = OUTLINED_FUNCTION_77();
    v69(v68);
    sub_26618B7D0();
    v6 = v70;
    OUTLINED_FUNCTION_54_0();
    v73 = v73 && v72 == v71;
    if (v73)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_44_0();

      if ((v8 & 1) == 0)
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_40:
        if (qword_2814B2C38 != -1)
        {
          OUTLINED_FUNCTION_2_5();
        }

        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_37_0(v8, qword_2814B4A80);
        v197(v6);
        v109 = OUTLINED_FUNCTION_68_0();
        v110(v109);
        v111 = sub_26618C690();
        v112 = sub_26618CAB0();
        v113 = os_log_type_enabled(v111, v112);
        v11 = *(v0 + 352);
        v114 = *(v0 + 360);
        v115 = *(v0 + 344);
        if (v113)
        {
          v116 = *(v0 + 304);
          v117 = *(v0 + 176);
          v118 = *(v0 + 184);
          v119 = *(v0 + 168);
          OUTLINED_FUNCTION_49_0();
          v196 = v114;
          v120 = OUTLINED_FUNCTION_47_2();
          v200[0] = v120;
          *v11 = 136315138;
          sub_26618B770();
          v121 = sub_266145588(v116);
          v195 = v115;
          v123 = v122;
          v124 = OUTLINED_FUNCTION_22_1();
          v125(v124, v119);
          v126 = sub_266103A98(v121, v123, v200);

          *(v11 + 4) = v126;
          OUTLINED_FUNCTION_82(&dword_2660B7000, v127, v128, "Unable to process parse: %s");
          __swift_destroy_boxed_opaque_existential_1(v120);
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_7_2();

          v130 = v195;
          v129 = v196;
        }

        else
        {
          v141 = *(v0 + 176);
          v142 = *(v0 + 184);
          v143 = *(v0 + 168);

          v144 = OUTLINED_FUNCTION_22_1();
          v145(v144, v143);
          v129 = OUTLINED_FUNCTION_11_2();
        }

        v198(v129, v130);
        (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
        goto LABEL_62;
      }
    }

    v131 = *(v0 + 280);
    v132 = sub_26618B7E0();
    v77 = *(v0 + 272);
    v133 = *(v0 + 280);
    v134 = *(v0 + 264);
    if (v132)
    {
      OUTLINED_FUNCTION_34_2(v132);

      v135 = OUTLINED_FUNCTION_8_9();
      v136(v135);
      if (*(v0 + 40))
      {
        v137 = OUTLINED_FUNCTION_89();
        v138 = *(v0 + 336);
        v139 = *(v0 + 288);
        v140 = *(v0 + 296);
        if (!v137)
        {
          (*(v140 + 8))(v138, v139);
          goto LABEL_62;
        }

        v47 = *(v0 + 72);
        v199 = *(v0 + 64);
        (*(v140 + 8))(v138, v139);

        goto LABEL_26;
      }
    }

    else
    {
      v166 = OUTLINED_FUNCTION_8_9();
      v167(v166);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    OUTLINED_FUNCTION_79();
    v62 = &qword_28005C0A8;
    v63 = qword_26618FAE0;
    v64 = v0 + 16;
    goto LABEL_61;
  }

  if (v20 != *MEMORY[0x277D5C160])
  {
    goto LABEL_40;
  }

  v81 = *(v0 + 384);
  v82 = *(v0 + 336);
  v47 = *(v0 + 344);
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v77 = *(v0 + 296);
  v4 = *(v0 + 224);
  v83 = *(v0 + 232);
  v11 = *(v0 + 216);
  v84 = OUTLINED_FUNCTION_11_5();
  v85(v84);
  v86 = OUTLINED_FUNCTION_27_2();
  v87(v86);
  v88 = OUTLINED_FUNCTION_10_5();
  v89(v88);
  v90 = OUTLINED_FUNCTION_13_5();
  v91(v90);
  v92 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v94);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v95, v96, "Parsing disambiguation result from USO");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_50_0();
  v97 = OUTLINED_FUNCTION_9_7();
  v98(v97);
  sub_26618B820();
  v46 = v5;
  v99 = sub_2660F9FD4();
  v100 = OUTLINED_FUNCTION_57_0(v99);
  v101(v100);
  v102 = *(v83 + 8);
  v3 = v83 + 8;
  v102(v2);
LABEL_25:
  OUTLINED_FUNCTION_88();
  (v1)(v46, v2);
  if (!v47)
  {
LABEL_63:
    v170 = OUTLINED_FUNCTION_58_0();
    v171(v170);

    v172 = sub_26618C690();
    v173 = sub_26618CAB0();

    v174 = os_log_type_enabled(v172, v173);
    v175 = *(v0 + 368);
    v176 = *(v0 + 344);
    v177 = *(v0 + 352);
    if (v174)
    {
      OUTLINED_FUNCTION_49_0();
      v178 = OUTLINED_FUNCTION_47_2();
      v200[0] = v178;
      *v11 = 136315138;
      if (v47)
      {
        v179 = v199;
      }

      else
      {
        v179 = 7104878;
      }

      if (!v47)
      {
        v47 = 0xE300000000000000;
      }

      v180 = sub_266103A98(v179, v47, v200);

      *(v11 + 4) = v180;
      OUTLINED_FUNCTION_81(&dword_2660B7000, v181, v182, "No app id matched the selected app id: %s");
      __swift_destroy_boxed_opaque_existential_1(v178);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    v183 = OUTLINED_FUNCTION_73_0();
    v184(v183);
    OUTLINED_FUNCTION_14_5();
    swift_allocError();
    *v185 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();
    goto LABEL_72;
  }

LABEL_26:
  v103 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v104 = sub_26618B610();
  sub_2661046B8(v104);
  OUTLINED_FUNCTION_71_0();
  while (1)
  {
    if (v3 == v11)
    {

      goto LABEL_63;
    }

    if (v77)
    {
      v105 = MEMORY[0x26677C150](v11, v104);
    }

    else
    {
      if (v11 >= *(v1 + 16))
      {
        goto LABEL_79;
      }

      v105 = *(v104 + 8 * v11 + 32);
    }

    v2 = v105;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v106 = sub_2660C9D30(v105);
    if (!v107)
    {
      goto LABEL_38;
    }

    v4 = v107;
    if (v106 == v199 && v107 == v47)
    {
      break;
    }

    v5 = sub_26618D000();

    if (v5)
    {
      goto LABEL_53;
    }

LABEL_38:

    ++v11;
  }

LABEL_53:

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v146 = *(v0 + 376);
  OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
  v197(v146);
  v147 = v2;
  v148 = sub_26618C690();
  LOBYTE(v146) = sub_26618CAA0();

  if (os_log_type_enabled(v148, v146))
  {
    v149 = OUTLINED_FUNCTION_49_0();
    v150 = swift_slowAlloc();
    *v149 = 138412290;
    *(v149 + 4) = v147;
    *v150 = v147;
    v151 = v147;
    OUTLINED_FUNCTION_87(&dword_2660B7000, v152, v153, "Found app: %@");
    sub_2660D30C4(v150, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_2();
  }

  v154 = *(v0 + 376);
  v155 = *(v0 + 344);
  v156 = *(v0 + 352);
  v157 = *(v0 + 104);

  v158 = OUTLINED_FUNCTION_76_0();
  v159(v158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v160 = sub_26618B6B0();
  [v160 setApplication_];

  v161 = sub_26618B6B0();
  v162 = [v161 application];

  v163 = [v162 isOffloaded];
  v164 = sub_26618B6B0();
  v165 = [v164 application];

  if (v165)
  {
    type metadata accessor for Application();
  }

  else
  {
    v200[1] = 0;
    v200[2] = 0;
  }

  OUTLINED_FUNCTION_15_5();
  v188 = *(v0 + 200);
  v189 = *(v0 + 208);
  OUTLINED_FUNCTION_45_2();
  v190 = *(v0 + 80);
  v200[0] = v165;
  v200[3] = v191;
  sub_26618B6B0();
  OUTLINED_FUNCTION_60_0();
  type metadata accessor for CloseAppIntent();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_70_0();
  sub_26618B550();

  v192 = *(v188 + 8);
  v193 = OUTLINED_FUNCTION_70_0();
  v194(v193);

  OUTLINED_FUNCTION_5_3();
LABEL_72:

  return v186();
}

uint64_t sub_2660F881C()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = sub_26618B8E0();
  v1[15] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_8_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v1[18] = OUTLINED_FUNCTION_8_2();
  v13 = type metadata accessor for AppLaunchIntent();
  v1[19] = v13;
  OUTLINED_FUNCTION_3_0(v13);
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618B790();
  v1[21] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C380, &unk_266190DA0);
  v1[24] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[25] = v21;
  v23 = *(v22 + 64);
  v1[26] = OUTLINED_FUNCTION_8_2();
  v24 = sub_26618B840();
  v1[27] = v24;
  OUTLINED_FUNCTION_0_4(v24);
  v1[28] = v25;
  v27 = *(v26 + 64);
  v1[29] = OUTLINED_FUNCTION_8_2();
  v28 = sub_26618C0E0();
  v1[30] = v28;
  OUTLINED_FUNCTION_0_4(v28);
  v1[31] = v29;
  v31 = *(v30 + 64);
  v1[32] = OUTLINED_FUNCTION_8_2();
  v32 = sub_26618B7F0();
  v1[33] = v32;
  OUTLINED_FUNCTION_0_4(v32);
  v1[34] = v33;
  v35 = *(v34 + 64);
  v1[35] = OUTLINED_FUNCTION_8_2();
  v36 = sub_26618B800();
  v1[36] = v36;
  OUTLINED_FUNCTION_0_4(v36);
  v1[37] = v37;
  v39 = *(v38 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v40 = sub_26618C6B0();
  v1[43] = v40;
  OUTLINED_FUNCTION_0_4(v40);
  v1[44] = v41;
  v43 = *(v42 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v44 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_2660F8BB4()
{
  v203 = v0;
  if (qword_2814B2C40 != -1)
  {
LABEL_80:
    OUTLINED_FUNCTION_0_3();
  }

  v6 = *(v0 + 400);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  OUTLINED_FUNCTION_37_0(v8, qword_2814B4A98);
  v9 = OUTLINED_FUNCTION_55_0();
  v10(v9);
  v11 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v13);
    OUTLINED_FUNCTION_83(&dword_2660B7000, v14, v15, "ApplicationNeedsDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_62_0();
  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_11_2();
  v199 = v18;
  (v18)(v17);
  sub_26618B770();
  v19 = *(v4 + 88);
  v4 += 88;
  v20 = v19(v2, v3);
  if (v20 == *MEMORY[0x277D5C128])
  {
    v21 = *(v0 + 392);
    v22 = *(v0 + 336);
    v23 = *(v0 + 344);
    v24 = *(v0 + 320);
    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v4 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);
    v29 = OUTLINED_FUNCTION_11_5();
    v30(v29);
    v31 = OUTLINED_FUNCTION_27_2();
    v32(v31);
    v33 = OUTLINED_FUNCTION_10_5();
    v34(v33);
    v35 = OUTLINED_FUNCTION_13_5();
    v36(v35);
    v37 = sub_26618C690();
    sub_26618CAA0();
    OUTLINED_FUNCTION_46_1();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v39);
      OUTLINED_FUNCTION_13_1(&dword_2660B7000, v40, v41, "Parsing disambiguation result from NLv3IntentOnly");
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_61_0();
    v42 = OUTLINED_FUNCTION_9_7();
    v43(v42);
    v44 = OUTLINED_FUNCTION_80();
    v45(v44);
    if (qword_2814B3D40 != -1)
    {
      OUTLINED_FUNCTION_31_2();
    }

    v1 = *(v0 + 152);
    v46 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = qword_2814B4AF8;
    v47 = _s11ApplicationVMa(0);
    OUTLINED_FUNCTION_21_5();
    sub_2660FA864(v48, 255, v49);
    OUTLINED_FUNCTION_3_10();
    sub_2660FA864(v50, 255, v51);
    OUTLINED_FUNCTION_32_1();
    sub_26618BD90();
    if (__swift_getEnumTagSinglePayload(v2, 1, v47) == 1)
    {
      OUTLINED_FUNCTION_79();
      v53 = *(v0 + 248);
      v52 = *(v0 + 256);
      v54 = *(v0 + 240);
      v55 = *(v0 + 160);
      v56 = *(v0 + 144);
      OUTLINED_FUNCTION_0_9();
      sub_2660FA810(v57, v58);
      v59 = *(v53 + 8);
      v11 = v53 + 8;
      v60 = OUTLINED_FUNCTION_31_0();
      v61(v60);
      v62 = &qword_28005C220;
      v63 = &qword_266190D70;
      v64 = v56;
LABEL_61:
      sub_2660D30C4(v64, v62, v63);
      v169 = OUTLINED_FUNCTION_8_9();
      v170(v169);
LABEL_62:
      v200 = 0;
      v47 = 0;
      goto LABEL_63;
    }

    if (qword_2814B3D90 != -1)
    {
      OUTLINED_FUNCTION_30_2();
    }

    OUTLINED_FUNCTION_75_0();
    v11 = qword_2814B4B20;
    OUTLINED_FUNCTION_3_10();
    sub_2660FA864(v74, 255, v75);
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_0_9();
    sub_2660FA810(v3, v76);
    v78 = *(v25 + 8);
    v77 = v25 + 8;
    v79 = OUTLINED_FUNCTION_31_0();
    v80(v79);
    OUTLINED_FUNCTION_19_4();
    goto LABEL_25;
  }

  if (v20 == *MEMORY[0x277D5C150])
  {
    v65 = OUTLINED_FUNCTION_24_2();
    v66(v65);
    v67 = *(v3 + 96);
    v3 += 96;
    v67(v6, v8);
    v68 = OUTLINED_FUNCTION_77();
    v69(v68);
    sub_26618B7D0();
    v6 = v70;
    OUTLINED_FUNCTION_54_0();
    v73 = v73 && v72 == v71;
    if (v73)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_44_0();

      if ((v8 & 1) == 0)
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_40:
        if (qword_2814B2C38 != -1)
        {
          OUTLINED_FUNCTION_2_5();
        }

        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_37_0(v8, qword_2814B4A80);
        v198(v6);
        v109 = OUTLINED_FUNCTION_68_0();
        v110(v109);
        v111 = sub_26618C690();
        v112 = sub_26618CAB0();
        v113 = os_log_type_enabled(v111, v112);
        v11 = *(v0 + 352);
        v114 = *(v0 + 360);
        v115 = *(v0 + 344);
        if (v113)
        {
          v116 = *(v0 + 304);
          v117 = *(v0 + 176);
          v118 = *(v0 + 184);
          v119 = *(v0 + 168);
          OUTLINED_FUNCTION_49_0();
          v197 = v114;
          v120 = OUTLINED_FUNCTION_47_2();
          v202[0] = v120;
          *v11 = 136315138;
          sub_26618B770();
          v121 = sub_266145588(v116);
          v196 = v115;
          v123 = v122;
          v124 = OUTLINED_FUNCTION_22_1();
          v125(v124, v119);
          v126 = sub_266103A98(v121, v123, v202);

          *(v11 + 4) = v126;
          OUTLINED_FUNCTION_82(&dword_2660B7000, v127, v128, "Unable to process parse: %s");
          __swift_destroy_boxed_opaque_existential_1(v120);
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_7_2();

          v130 = v196;
          v129 = v197;
        }

        else
        {
          v141 = *(v0 + 176);
          v142 = *(v0 + 184);
          v143 = *(v0 + 168);

          v144 = OUTLINED_FUNCTION_22_1();
          v145(v144, v143);
          v129 = OUTLINED_FUNCTION_11_2();
        }

        v199(v129, v130);
        (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
        goto LABEL_62;
      }
    }

    v131 = *(v0 + 280);
    v132 = sub_26618B7E0();
    v77 = *(v0 + 272);
    v133 = *(v0 + 280);
    v134 = *(v0 + 264);
    if (v132)
    {
      OUTLINED_FUNCTION_34_2(v132);

      v135 = OUTLINED_FUNCTION_8_9();
      v136(v135);
      if (*(v0 + 40))
      {
        v137 = OUTLINED_FUNCTION_89();
        v138 = *(v0 + 336);
        v139 = *(v0 + 288);
        v140 = *(v0 + 296);
        if (!v137)
        {
          (*(v140 + 8))(v138, v139);
          goto LABEL_62;
        }

        v47 = *(v0 + 72);
        v200 = *(v0 + 64);
        (*(v140 + 8))(v138, v139);

        goto LABEL_26;
      }
    }

    else
    {
      v167 = OUTLINED_FUNCTION_8_9();
      v168(v167);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    OUTLINED_FUNCTION_79();
    v62 = &qword_28005C0A8;
    v63 = qword_26618FAE0;
    v64 = v0 + 16;
    goto LABEL_61;
  }

  if (v20 != *MEMORY[0x277D5C160])
  {
    goto LABEL_40;
  }

  v81 = *(v0 + 384);
  v82 = *(v0 + 336);
  v47 = *(v0 + 344);
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v77 = *(v0 + 296);
  v4 = *(v0 + 224);
  v83 = *(v0 + 232);
  v11 = *(v0 + 216);
  v84 = OUTLINED_FUNCTION_11_5();
  v85(v84);
  v86 = OUTLINED_FUNCTION_27_2();
  v87(v86);
  v88 = OUTLINED_FUNCTION_10_5();
  v89(v88);
  v90 = OUTLINED_FUNCTION_13_5();
  v91(v90);
  v92 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v94);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v95, v96, "Parsing disambiguation result from USO");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_50_0();
  v97 = OUTLINED_FUNCTION_9_7();
  v98(v97);
  sub_26618B820();
  v46 = v5;
  v99 = sub_2660F9FD4();
  v100 = OUTLINED_FUNCTION_57_0(v99);
  v101(v100);
  v102 = *(v83 + 8);
  v3 = v83 + 8;
  v102(v2);
LABEL_25:
  OUTLINED_FUNCTION_88();
  (v1)(v46, v2);
  if (!v47)
  {
LABEL_63:
    v171 = OUTLINED_FUNCTION_58_0();
    v172(v171);

    v173 = sub_26618C690();
    v174 = sub_26618CAB0();

    v175 = os_log_type_enabled(v173, v174);
    v176 = *(v0 + 368);
    v177 = *(v0 + 344);
    v178 = *(v0 + 352);
    if (v175)
    {
      OUTLINED_FUNCTION_49_0();
      v179 = OUTLINED_FUNCTION_47_2();
      v202[0] = v179;
      *v11 = 136315138;
      if (v47)
      {
        v180 = v200;
      }

      else
      {
        v180 = 7104878;
      }

      if (!v47)
      {
        v47 = 0xE300000000000000;
      }

      v181 = sub_266103A98(v180, v47, v202);

      *(v11 + 4) = v181;
      OUTLINED_FUNCTION_81(&dword_2660B7000, v182, v183, "No app id matched the selected app id: %s");
      __swift_destroy_boxed_opaque_existential_1(v179);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    v184 = OUTLINED_FUNCTION_73_0();
    v185(v184);
    OUTLINED_FUNCTION_14_5();
    swift_allocError();
    *v186 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();
    goto LABEL_72;
  }

LABEL_26:
  v103 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v104 = sub_26618B610();
  sub_2661046B8(v104);
  OUTLINED_FUNCTION_71_0();
  while (1)
  {
    if (v3 == v11)
    {

      goto LABEL_63;
    }

    if (v77)
    {
      v105 = MEMORY[0x26677C150](v11, v104);
    }

    else
    {
      if (v11 >= *(v1 + 16))
      {
        goto LABEL_79;
      }

      v105 = *(v104 + 8 * v11 + 32);
    }

    v2 = v105;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v106 = sub_2660C9D30(v105);
    if (!v107)
    {
      goto LABEL_38;
    }

    v4 = v107;
    if (v106 == v200 && v107 == v47)
    {
      break;
    }

    v5 = sub_26618D000();

    if (v5)
    {
      goto LABEL_53;
    }

LABEL_38:

    ++v11;
  }

LABEL_53:

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v146 = *(v0 + 376);
  OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
  v198(v146);
  v147 = v2;
  v148 = sub_26618C690();
  LOBYTE(v146) = sub_26618CAA0();

  if (os_log_type_enabled(v148, v146))
  {
    v149 = OUTLINED_FUNCTION_49_0();
    v150 = swift_slowAlloc();
    *v149 = 138412290;
    *(v149 + 4) = v147;
    *v150 = v147;
    v151 = v147;
    OUTLINED_FUNCTION_87(&dword_2660B7000, v152, v153, "Found app: %@");
    sub_2660D30C4(v150, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_2();
  }

  v154 = *(v0 + 376);
  v155 = *(v0 + 344);
  v156 = *(v0 + 352);
  v157 = *(v0 + 104);

  v158 = OUTLINED_FUNCTION_76_0();
  v159(v158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v160 = sub_26618B6B0();
  [v160 setApplication_];

  v161 = sub_26618B6B0();
  v162 = sub_26618B6B0();
  v163 = [v162 application];

  v164 = [v163 isOffloaded];
  [v161 setAutoInstallOffloaded_];

  v165 = sub_26618B6B0();
  v166 = [v165 application];

  v201 = v147;
  if (v166)
  {
    type metadata accessor for Application();
  }

  else
  {
    v202[1] = 0;
    v202[2] = 0;
  }

  OUTLINED_FUNCTION_15_5();
  v190 = *(v0 + 200);
  v189 = *(v0 + 208);
  OUTLINED_FUNCTION_45_2();
  v191 = *(v0 + 80);
  v202[0] = v166;
  v202[3] = v192;
  sub_26618B6B0();
  OUTLINED_FUNCTION_60_0();
  type metadata accessor for LaunchAppIntent();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_70_0();
  sub_26618B550();

  v193 = *(v190 + 8);
  v194 = OUTLINED_FUNCTION_70_0();
  v195(v194);

  OUTLINED_FUNCTION_5_3();
LABEL_72:

  return v187();
}

uint64_t sub_2660F98E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D2E00;

  return sub_2660F5710();
}

uint64_t sub_2660F9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_2660D3260;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_2660F9A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_2660D3260;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_2660F9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_2660F9BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_2660F9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CloseAppDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_2660F9D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v13 = v6;
  v13[1] = sub_2660D3260;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2660F9DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2660D3260;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_2660F9F0C()
{
  result = qword_28005C348;
  if (!qword_28005C348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C350, qword_266191BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C348);
  }

  return result;
}

uint64_t sub_2660F9F7C(uint64_t a1, uint64_t a2)
{
  result = sub_2660FA864(&qword_28005C358, a2, type metadata accessor for CloseAppDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2660F9FD4()
{
  OUTLINED_FUNCTION_60_0();
  v2 = sub_26618C6B0();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_266144AE8())
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v10 = sub_2660FA19C();
    if (v10[2])
    {
      v11 = v10[4];
      v12 = v10[5];
    }
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_37_0(v2, qword_2814B4A80);
    (*(v5 + 16))(v9);
    v13 = sub_26618C690();
    v14 = sub_26618CAB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v15);
      _os_log_impl(&dword_2660B7000, v13, v14, "ApplicationNeedsDisambiguationStrategy.parseDisambiguationResultNLv4Uso() No tasks found in input", v1, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    (*(v5 + 8))(v9, v2);
  }

  return OUTLINED_FUNCTION_12_1();
}

uint64_t sub_2660FA19C()
{
  OUTLINED_FUNCTION_60_0();
  v1 = sub_26618C7A0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &type metadata for ReferenceResolver;
  v45 = &off_2877CC6F0;
  v43[0] = swift_allocObject();
  sub_2660CFC00(v0, v43[0] + 16);
  sub_26618BDF0();
  sub_2660D74A8(v42, v40);
  if (!v41)
  {
    goto LABEL_41;
  }

  sub_2660D74A8(v40, v39);
  sub_26618BE40();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_90();
    sub_26618BAF0();
    goto LABEL_7;
  }

  sub_26618BDD0();
  if ((OUTLINED_FUNCTION_6_7() & 1) == 0)
  {
    sub_26618BF80();
    if ((OUTLINED_FUNCTION_6_7() & 1) == 0)
    {
      sub_26618BF40();
      if (OUTLINED_FUNCTION_6_7())
      {
        v11 = v38;

        sub_26618BAF0();

        if (v37)
        {
          v12 = sub_26618BB90();

          __swift_project_boxed_opaque_existential_1(v43, v44);
          v13 = sub_2661613B8();
          v14 = *(v13 + 16);
          if (v14)
          {
            v33[1] = v12;
            v33[2] = v11;
            v36 = v1;
            v37 = MEMORY[0x277D84F90];
            sub_26612A450();
            v10 = v37;
            v16 = *(v4 + 16);
            v15 = v4 + 16;
            v35 = v16;
            v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
            v33[0] = v13;
            v18 = v13 + v17;
            v34 = *(v15 + 56);
            v19 = (v15 - 8);
            do
            {
              v20 = v36;
              v21 = v15;
              v35(v8, v18, v36);
              v22 = sub_26618C770();
              v24 = v23;
              (*v19)(v8, v20);
              v37 = v10;
              v25 = *(v10 + 16);
              v26 = v10;
              if (v25 >= *(v10 + 24) >> 1)
              {
                sub_26612A450();
                v26 = v37;
              }

              *(v26 + 16) = v25 + 1;
              v27 = v26 + 16 * v25;
              *(v27 + 32) = v22;
              *(v27 + 40) = v24;
              v18 += v34;
              --v14;
              v10 = v26;
              v15 = v21;
            }

            while (v14);
            sub_2660D30C4(v42, &qword_28005C0A8, qword_26618FAE0);
          }

          else
          {

            sub_2660D30C4(v42, &qword_28005C0A8, qword_26618FAE0);
            v10 = MEMORY[0x277D84F90];
          }

          __swift_destroy_boxed_opaque_existential_1(v39);
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_1(v39);
        sub_2660D30C4(v40, &qword_28005C0A8, qword_26618FAE0);
        v31 = v42;
LABEL_42:
        sub_2660D30C4(v31, &qword_28005C0A8, qword_26618FAE0);
        v10 = MEMORY[0x277D84F90];
        goto LABEL_43;
      }

      sub_26618BE00();
      if (OUTLINED_FUNCTION_6_7())
      {
        goto LABEL_6;
      }

      sub_26618BDE0();
      if (OUTLINED_FUNCTION_6_7())
      {
        goto LABEL_6;
      }

      sub_26618BFA0();
      if (OUTLINED_FUNCTION_6_7())
      {
        OUTLINED_FUNCTION_90();
        v28 = sub_26618C060();

        if (!v28)
        {
          goto LABEL_37;
        }

        if (!sub_2661046B8(v28))
        {

          goto LABEL_37;
        }

        sub_2661046C8(0);
        if ((v28 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26677C150](0, v28);
        }

        else
        {
          v29 = *(v28 + 32);
        }

        sub_26618BCF0();
        goto LABEL_25;
      }

      sub_26618BE90();
      if (OUTLINED_FUNCTION_6_7())
      {
        goto LABEL_6;
      }

      sub_26618BF90();
      if (OUTLINED_FUNCTION_6_7())
      {
        goto LABEL_6;
      }

      sub_26618BEA0();
      if (OUTLINED_FUNCTION_6_7())
      {
        goto LABEL_6;
      }

      sub_26618C080();
      if (OUTLINED_FUNCTION_6_7())
      {
        OUTLINED_FUNCTION_90();
        sub_26618BED0();
LABEL_25:

        if (v37)
        {
          v30 = sub_26618BD20();

          if (v30)
          {
            goto LABEL_8;
          }
        }

LABEL_37:

        v10 = MEMORY[0x277D84F90];
        goto LABEL_38;
      }

      __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_41:
      sub_2660D30C4(v42, &qword_28005C0A8, qword_26618FAE0);
      v31 = v40;
      goto LABEL_42;
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_90();
  sub_26618BED0();
LABEL_7:

  if (!v37)
  {
    goto LABEL_37;
  }

LABEL_8:
  sub_26613C958();
  v10 = v9;

LABEL_38:
  sub_2660D30C4(v42, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_39:
  sub_2660D30C4(v40, &qword_28005C0A8, qword_26618FAE0);
LABEL_43:
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v10;
}

unint64_t sub_2660FA768()
{
  result = qword_28005C378;
  if (!qword_28005C378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C378);
  }

  return result;
}

uint64_t sub_2660FA7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.App(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660FA810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_26_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2660FA864(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2660FA8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_14_5()
{
  v3 = v0[49];
  v4 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[18];
  *(v1 - 120) = v0[17];

  return sub_2660D3004();
}

void OUTLINED_FUNCTION_15_5()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v5 = v0[47];
  v6 = v0[46];
  v7 = v0[45];
  v8 = v0[42];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[38];
  v13 = v0[35];
  v3 = v0[32];
  v14 = v0[29];
}

uint64_t OUTLINED_FUNCTION_19_4()
{
  v4 = *(v1 + 56);
  *(v2 - 120) = *(v1 + 48);

  return sub_2660FA810(v0, _s11ApplicationVMa);
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v1 = v0[42];
  v2 = v0[36];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = *(v0[37] + 16);
  return v0[41];
}

void OUTLINED_FUNCTION_26_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_28_3()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_once();
}

double OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return sub_266158220(0x696669746E656469, 0xEA00000000007265, a1, (v1 + 16));
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[5];
  v7 = *(v0[7] + 8);
  return v0[8];
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_26618D000();
}

void OUTLINED_FUNCTION_45_2()
{
  v1 = v0[24];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[17];
  v2 = v0[13];
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_0()
{
  v3 = v1[48];
  v5 = v1[43];
  v4 = v1[44];
  v7 = v1[28];
  v6 = v1[29];
  v9 = v1[16];
  v8 = v1[17];
  v10 = v1[15];
  v11 = v1[27];
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  result = v1;
  v3 = *(v0 + 16);
  return result;
}

void OUTLINED_FUNCTION_56_0()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1)
{
  *(v3 - 120) = a1;
  v4 = *(v2 + 8);
  return v1;
}

void OUTLINED_FUNCTION_61_0()
{
  v3 = v1[49];
  v5 = v1[43];
  v4 = v1[44];
  v7 = v1[31];
  v6 = v1[32];
  v8 = v1[30];
  v9 = v1[20];
}

void OUTLINED_FUNCTION_62_0()
{
  v3 = v0[50];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[36];
  v8 = v0[37];
  v9 = v0[11];
}

uint64_t OUTLINED_FUNCTION_63_0()
{
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
}

void OUTLINED_FUNCTION_75_0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[20];
  v5 = v0[18];
}

void OUTLINED_FUNCTION_79()
{
  v1 = v0[42];
  v3 = v0[36];
  v2 = v0[37];
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_82(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_83(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_85()
{

  return sub_26618BDA0();
}

uint64_t OUTLINED_FUNCTION_86()
{

  return sub_26618B4A0();
}

void OUTLINED_FUNCTION_87(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_88()
{
  v2 = v0[42];
  v3 = v0[36];
  v4 = *(v0[37] + 8);
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_90()
{
  v2 = *(v0 - 232);
}

id sub_2660FAFA0()
{
  result = [objc_allocWithZone(type metadata accessor for CloseAppIntentHandler()) init];
  qword_28005D180 = result;
  return result;
}

uint64_t sub_2660FAFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v120 = a1;
  v2 = sub_26618B790();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v109 = v4;
  v110 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v108 = v7;
  OUTLINED_FUNCTION_18_2();
  v111 = type metadata accessor for AppLaunchIntent();
  v8 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_4_6();
  v112 = v9;
  OUTLINED_FUNCTION_18_2();
  v10 = sub_26618C0E0();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v113 = v12;
  v114 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_6();
  v117 = v15;
  OUTLINED_FUNCTION_18_2();
  v121 = sub_26618B800();
  v16 = OUTLINED_FUNCTION_2_2(v121);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  v106 = v21 - v22;
  OUTLINED_FUNCTION_65_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v104 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  OUTLINED_FUNCTION_18_2();
  v29 = sub_26618C6B0();
  v30 = OUTLINED_FUNCTION_2_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_1();
  v118 = v35 - v36;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v37);
  v105 = &v104 - v38;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v39);
  v115 = &v104 - v40;
  OUTLINED_FUNCTION_65_0();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v104 - v43;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    v42 = swift_once();
  }

  OUTLINED_FUNCTION_25_3(v42, qword_2814B4A98);
  v116 = *(v32 + 16);
  (v116)(v44);
  v45 = sub_26618C690();
  v46 = sub_26618CAA0();
  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_24_0();
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2660B7000, v45, v46, "CloseAppFlowStrategy.actionForInput() called", v47, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v48 = v32 + 8;
  v49 = *(v32 + 8);
  v49(v44, v29);
  sub_26618B770();
  v50 = v18;
  v51 = v28;
  v52 = v121;
  if ((*(v50 + 88))(v28, v121) == *MEMORY[0x277D5C128])
  {
    (*(v50 + 96))(v28, v52);
    v53 = v113;
    v54 = v117;
    v55 = v114;
    (*(v113 + 32))(v117, v28, v114);
    v56 = v112;
    (*(v53 + 16))(v112, v54, v55);
    if (qword_2814B3D30 != -1)
    {
      swift_once();
    }

    sub_2660FDBBC(&qword_2814B3D28, 255, type metadata accessor for AppLaunchIntent);
    sub_26618BDA0();
    v57 = LOBYTE(v122[0]);
    if (LOBYTE(v122[0]) == 11)
    {
      goto LABEL_9;
    }

    if (sub_266146C4C(v122[0]) == 0x65736F6C63 && v82 == 0xE500000000000000)
    {
    }

    else
    {
      v84 = sub_26618D000();

      if ((v84 & 1) == 0)
      {
LABEL_9:
        if (qword_2814B2C38 != -1)
        {
          v57 = OUTLINED_FUNCTION_2_5();
        }

        OUTLINED_FUNCTION_25_3(v57, qword_2814B4A80);
        (v116)(v115);
        v58 = sub_26618C690();
        v59 = sub_26618CA90();
        if (os_log_type_enabled(v58, v59))
        {
          OUTLINED_FUNCTION_24_0();
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_2660B7000, v58, v59, "Incorrect verb in intent for flow, ignoring input", v60, 2u);
          v54 = v117;
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
        }

        v49(v115, v29);
        sub_26618B2B0();
        goto LABEL_46;
      }
    }

    sub_26618B2A0();
LABEL_46:
    sub_2660DD7D0(v56);
    return (*(v53 + 8))(v54, v55);
  }

  sub_26618B770();
  sub_2660C87C0();
  v61 = *(v50 + 8);
  v117 = v50 + 8;
  v115 = v61;
  (v61)(v26, v52);
  v62 = v123;
  if (!v123)
  {
    v65 = sub_2660C8040(v122, &qword_28005C148, &unk_26618FF00);
    v66 = v118;
    goto LABEL_38;
  }

  v63 = v124;
  __swift_project_boxed_opaque_existential_1(v122, v123);
  v64 = (*(v63 + 8))(v62, v63);
  v65 = __swift_destroy_boxed_opaque_existential_1(v122);
  v66 = v118;
  if (!v64)
  {
LABEL_38:
    v114 = v49;
    if (qword_2814B2C38 != -1)
    {
      v65 = OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_25_3(v65, qword_2814B4A80);
    (v116)(v66);
    v86 = v108;
    v85 = v109;
    v87 = v110;
    (*(v109 + 16))(v108, v120, v110);
    v88 = sub_26618C690();
    v89 = sub_26618CAB0();
    if (os_log_type_enabled(v88, v89))
    {
      OUTLINED_FUNCTION_19_5();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v120 = v48;
      v116 = v91;
      v122[0] = v91;
      *v90 = 136315138;
      v92 = v51;
      v93 = v106;
      sub_26618B770();
      v94 = v93;
      v51 = v92;
      v95 = sub_266145588(v94);
      v96 = v87;
      v98 = v97;
      (*(v85 + 8))(v86, v96);
      v99 = sub_266103A98(v95, v98, v122);

      *(v90 + 4) = v99;
      _os_log_impl(&dword_2660B7000, v88, v89, "Unable to handle parse: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v116);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      v52 = v121;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {

      (*(v85 + 8))(v86, v87);
    }

    v114(v118, v29);
    sub_26618B2B0();
    v80 = v51;
    v81 = v52;
    return (v115)(v80, v81);
  }

  sub_26613BA0C();
  v68 = v67;
  if (sub_266145BC4(v67) == 0x65736F6C63 && v69 == 0xE500000000000000)
  {
    goto LABEL_47;
  }

  v71 = sub_26618D000();

  if (v71)
  {
LABEL_48:
    __swift_project_boxed_opaque_existential_1((v107 + 16), *(v107 + 40));
    v101 = sub_2660FA19C();
    if (qword_28005BC80 != -1)
    {
      swift_once();
    }

    v102 = sub_26612EAB0(v101, qword_28005D1A0);

    v103 = v121;
    if (v102)
    {
      sub_26618B2A0();
    }

    else
    {
      sub_26618B2B0();
    }

    v80 = v28;
    v81 = v103;
    return (v115)(v80, v81);
  }

  if (sub_266145BC4(v68) == 1953068401 && v72 == 0xE400000000000000)
  {
LABEL_47:

    goto LABEL_48;
  }

  v74 = sub_26618D000();

  if (v74)
  {
    goto LABEL_48;
  }

  if (qword_2814B2C38 != -1)
  {
    v75 = OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_25_3(v75, qword_2814B4A80);
  v76 = v105;
  (v116)(v105);
  v77 = sub_26618C690();
  v78 = sub_26618CA90();
  if (os_log_type_enabled(v77, v78))
  {
    OUTLINED_FUNCTION_24_0();
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_2660B7000, v77, v78, "Incorrect verb in userDialogAct for flow, ignoring input", v79, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v49(v76, v29);
  sub_26618B2B0();

  v80 = v51;
  v81 = v121;
  return (v115)(v80, v81);
}

uint64_t sub_2660FBA94()
{
  OUTLINED_FUNCTION_18();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = sub_26618B7B0();
  v1[32] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[33] = v5;
  v7 = *(v6 + 64);
  v1[34] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B7F0();
  v1[35] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[36] = v9;
  v11 = *(v10 + 64);
  v1[37] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B840();
  v1[38] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[39] = v13;
  v15 = *(v14 + 64);
  v1[40] = OUTLINED_FUNCTION_8_2();
  v16 = *(*(type metadata accessor for AppLaunchIntent() - 8) + 64);
  v1[41] = OUTLINED_FUNCTION_8_2();
  v17 = sub_26618C0E0();
  v1[42] = v17;
  OUTLINED_FUNCTION_0_4(v17);
  v1[43] = v18;
  v20 = *(v19 + 64);
  v1[44] = OUTLINED_FUNCTION_8_2();
  v21 = sub_26618B800();
  v1[45] = v21;
  OUTLINED_FUNCTION_0_4(v21);
  v1[46] = v22;
  v24 = *(v23 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v25 = sub_26618C6B0();
  v1[50] = v25;
  OUTLINED_FUNCTION_0_4(v25);
  v1[51] = v26;
  v28 = *(v27 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660FBD54, 0, 0);
}

uint64_t sub_2660FBD54()
{
  v209 = v0;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = *(v0 + 464);
  v3 = *(v0 + 408);
  v4 = __swift_project_value_buffer(*(v0 + 400), qword_2814B4A98);
  v6 = *(v3 + 16);
  v5 = (v3 + 16);
  v202 = v4;
  v204 = v6;
  (v6)(v2);
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();
  v9 = OUTLINED_FUNCTION_21_6();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_24_0();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_2(v11);
    _os_log_impl(&dword_2660B7000, v7, v8, "CloseAppFlowStrategy.makeIntentFromParse() called", v1, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v12 = *(v0 + 464);
  v13 = *(v0 + 400);
  v14 = *(v0 + 408);
  v15 = *(v0 + 240);

  v17 = *(v14 + 8);
  v16 = (v14 + 8);
  v206 = v17;
  v17(v12, v13);
  if (v15)
  {
    v18 = *(v0 + 240);
  }

  else
  {
    v18 = [objc_allocWithZone(type metadata accessor for CloseAppIntent()) init];
  }

  v19 = *(v0 + 392);
  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v22 = *(v20 + 16);
  v22(v19, *(v0 + 232), v21);
  v23 = (*(v20 + 88))(v19, v21);
  v207 = v18;
  if (v23 == *MEMORY[0x277D5C128])
  {
    v24 = *(v0 + 456);
    OUTLINED_FUNCTION_17_4();
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    v28 = *(v0 + 240);
    (*(v29 + 96))(v16);
    v30 = OUTLINED_FUNCTION_9_8();
    v31(v30);
    v32 = OUTLINED_FUNCTION_7_8();
    v33(v32);
    v34 = v28;
    v35 = sub_26618C690();
    v36 = sub_26618CAA0();
    v37 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_24_0();
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2660B7000, v35, v36, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from NLv3IntentOnly parse", v39, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v40 = *(v0 + 456);
    v199 = *(v0 + 448);
    v42 = *(v0 + 400);
    v41 = *(v0 + 408);
    v43 = *(v0 + 344);
    v44 = *(v0 + 352);
    v46 = *(v0 + 328);
    v45 = *(v0 + 336);
    v47 = *(v0 + 248);

    v206(v40, v42);
    (*(v43 + 16))(v46, v44, v45);
    v48 = __swift_project_boxed_opaque_existential_1((v47 + 16), *(v47 + 40));
    sub_266107968(v46, v48, v207);
    v204(v199, v202, v42);
    v49 = v207;
    v50 = sub_26618C690();
    v51 = sub_26618CAD0();

    if (os_log_type_enabled(v50, v51))
    {
      OUTLINED_FUNCTION_19_5();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_2660B7000, v50, v51, "Finished creating intent from parse: %@", v52, 0xCu);
      sub_2660C8040(v53, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v55 = *(v0 + 448);
    v57 = *(v0 + 400);
    v56 = *(v0 + 408);
    v59 = *(v0 + 344);
    v58 = *(v0 + 352);
    v61 = *(v0 + 328);
    v60 = *(v0 + 336);

    v62 = OUTLINED_FUNCTION_8_10();
    v63(v62);
    sub_2660DD7D0(v61);
    (*(v59 + 8))(v58, v60);
    goto LABEL_52;
  }

  if (v23 == *MEMORY[0x277D5C150])
  {
    v64 = *(v0 + 392);
    v65 = *(v0 + 288);
    v66 = *(v0 + 296);
    v67 = *(v0 + 280);
    v68 = *(v0 + 240);
    (*(*(v0 + 368) + 96))(v64, *(v0 + 360));
    (*(v65 + 32))(v66, v64, v67);
    v69 = v68;
    v70 = [v18 application];
    if (!v70)
    {
      type metadata accessor for Application();
      v71 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v70 = sub_2661038FC(0, 0);
      [v18 setApplication_];
    }

    v72 = [v18 application];
    if (!v72)
    {
LABEL_42:
      v155 = [v18 application];
      if (!v155)
      {
LABEL_51:
        (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
        goto LABEL_52;
      }

      v156 = v155;
      v157 = *(v0 + 296);
      v158 = sub_26618B7E0();
      if (v158)
      {
        sub_266158220(0x656D614E707061, 0xE700000000000000, v158, (v0 + 168));

        if (*(v0 + 192))
        {
          if (swift_dynamicCast())
          {
            v159 = *(v0 + 200);
            v160 = *(v0 + 208);
            v161 = sub_26618C8A0();

LABEL_50:
            [v156 setName_];

            goto LABEL_51;
          }

LABEL_49:
          v161 = 0;
          goto LABEL_50;
        }
      }

      else
      {
        *(v0 + 184) = 0u;
        *(v0 + 168) = 0u;
      }

      sub_2660C8040(v0 + 168, &qword_28005C0A8, qword_26618FAE0);
      goto LABEL_49;
    }

    v73 = v72;
    v74 = *(v0 + 296);
    v75 = sub_26618B7E0();
    if (v75)
    {
      sub_266158220(0x746E656449707061, 0xED00007265696669, v75, (v0 + 136));

      if (*(v0 + 160))
      {
        if (swift_dynamicCast())
        {
          v76 = *(v0 + 216);
          v77 = *(v0 + 224);
          v78 = sub_26618C8A0();

LABEL_41:
          [v73 setAppId_];

          goto LABEL_42;
        }

LABEL_40:
        v78 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
    }

    sub_2660C8040(v0 + 136, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_40;
  }

  if (v23 == *MEMORY[0x277D5C140])
  {
    v79 = *(v0 + 432);
    OUTLINED_FUNCTION_17_4();
    v80 = *(v0 + 264);
    v81 = *(v0 + 272);
    v82 = *(v0 + 256);
    v84 = OUTLINED_FUNCTION_12_6(v83);
    v85(v84);
    v86 = OUTLINED_FUNCTION_9_8();
    v87(v86);
    v88 = OUTLINED_FUNCTION_7_8();
    v89(v88);
    v90 = v5;
    v91 = sub_26618C690();
    v92 = sub_26618CAA0();
    if (os_log_type_enabled(v91, v92))
    {
      OUTLINED_FUNCTION_24_0();
      v93 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_2(v93);
      OUTLINED_FUNCTION_83(&dword_2660B7000, v94, v95, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from Pegasus Result parse");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v96 = *(v0 + 432);
    v98 = *(v0 + 400);
    v97 = *(v0 + 408);
    v100 = *(v0 + 264);
    v99 = *(v0 + 272);
    v101 = *(v0 + 248);
    v102 = *(v0 + 256);

    v103 = OUTLINED_FUNCTION_8_10();
    v104(v103);
    *(v0 + 80) = v102;
    *(v0 + 88) = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(v100 + 16))(boxed_opaque_existential_0, v99, v102);
    sub_2660FCB2C((v0 + 56), v207);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    v106 = (v0 + 56);
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(v106);
LABEL_52:
    v163 = *(v0 + 456);
    v162 = *(v0 + 464);
    OUTLINED_FUNCTION_23_1();
    v164 = *(v0 + 376);
    OUTLINED_FUNCTION_10_6();

    OUTLINED_FUNCTION_54();

    return v165(v207);
  }

  if (v23 == *MEMORY[0x277D5C148])
  {
    v107 = *(v0 + 424);
    OUTLINED_FUNCTION_17_4();
    v109 = OUTLINED_FUNCTION_12_6(v108);
    v110(v109);
    v111 = *v16;
    v112 = OUTLINED_FUNCTION_7_8();
    v113(v112);
    v114 = v5;
    v115 = sub_26618C690();
    v116 = sub_26618CAA0();
    if (os_log_type_enabled(v115, v116))
    {
      OUTLINED_FUNCTION_24_0();
      v117 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_2(v117);
      _os_log_impl(&dword_2660B7000, v115, v116, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from Pommes Response parse", v21, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v118 = *(v0 + 424);
    v119 = *(v0 + 400);
    v120 = *(v0 + 408);
    v121 = *(v0 + 248);

    v206(v118, v119);
    *(v0 + 40) = sub_26618C430();
    *(v0 + 48) = &off_2877CAAD8;
    *(v0 + 16) = v111;
    v122 = v111;
    sub_2660FCB2C((v0 + 16), v18);

    v106 = (v0 + 16);
    goto LABEL_34;
  }

  if (v23 == *MEMORY[0x277D5C160])
  {
    v123 = *(v0 + 440);
    OUTLINED_FUNCTION_17_4();
    v124 = *(v0 + 312);
    v125 = *(v0 + 320);
    v126 = *(v0 + 304);
    v128 = OUTLINED_FUNCTION_12_6(v127);
    v129(v128);
    v130 = OUTLINED_FUNCTION_9_8();
    v131(v130);
    v132 = OUTLINED_FUNCTION_7_8();
    v133(v132);
    v134 = v5;
    v135 = sub_26618C690();
    v136 = sub_26618CAA0();
    if (os_log_type_enabled(v135, v136))
    {
      OUTLINED_FUNCTION_24_0();
      v137 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_2(v137);
      OUTLINED_FUNCTION_83(&dword_2660B7000, v138, v139, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from USO parse");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v140 = *(v0 + 440);
    v142 = *(v0 + 400);
    v141 = *(v0 + 408);
    v144 = *(v0 + 312);
    v143 = *(v0 + 320);
    v145 = *(v0 + 304);
    v146 = *(v0 + 248);

    v147 = OUTLINED_FUNCTION_8_10();
    v148(v147);
    *(v0 + 120) = v145;
    *(v0 + 128) = &off_2877CAAB8;
    v149 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    (*(v144 + 16))(v149, v143, v145);
    sub_2660FCB2C((v0 + 96), v207);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    v106 = (v0 + 96);
    goto LABEL_34;
  }

  v166 = qword_2814B2C38;
  v167 = *(v0 + 240);
  if (v166 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v168 = *(v0 + 416);
  v169 = *(v0 + 400);
  v170 = *(v0 + 384);
  v171 = *(v0 + 360);
  v172 = *(v0 + 232);
  v173 = __swift_project_value_buffer(v169, qword_2814B4A80);
  v204(v168, v173, v169);
  v22(v170, v172, v171);
  v174 = sub_26618C690();
  v175 = sub_26618CAB0();
  v176 = os_log_type_enabled(v174, v175);
  v177 = *(v0 + 416);
  v205 = *(v0 + 408);
  v178 = *(v0 + 400);
  v179 = *(v0 + 384);
  if (v176)
  {
    v203 = *(v0 + 416);
    v200 = v175;
    v180 = *(v0 + 368);
    v181 = *(v0 + 376);
    v182 = *(v0 + 360);
    OUTLINED_FUNCTION_19_5();
    v201 = v178;
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v208 = v184;
    *v183 = 136315138;
    v22(v181, v179, v182);
    v185 = sub_266145588(v181);
    v187 = v186;
    v188 = v179;
    v189 = *(v180 + 8);
    v189(v188, v182);
    v190 = sub_266103A98(v185, v187, &v208);

    *(v183 + 4) = v190;
    _os_log_impl(&dword_2660B7000, v174, v200, "Unable to process parse: %s", v183, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v184);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    v191 = v203;
    v192 = v201;
  }

  else
  {
    v194 = *(v0 + 360);
    v193 = *(v0 + 368);

    v195 = v179;
    v189 = *(v193 + 8);
    v189(v195, v194);
    v191 = v177;
    v192 = v178;
  }

  v206(v191, v192);
  v196 = *(v0 + 392);
  v197 = *(v0 + 360);
  sub_2660D3004();
  swift_allocError();
  *v198 = 0;
  swift_willThrow();

  v189(v196, v197);
  v151 = *(v0 + 456);
  v150 = *(v0 + 464);
  OUTLINED_FUNCTION_23_1();
  v152 = *(v0 + 376);
  OUTLINED_FUNCTION_10_6();

  v153 = *(v0 + 8);

  return v153();
}

void *sub_2660FCB2C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_26618C6B0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 8))(v18, v19);
  if (v20)
  {
    v21 = v20;
    v22 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_266106FB4(v21, v22, a2);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v23 = __swift_project_value_buffer(v6, qword_2814B4A98);
    (*(v9 + 16))(v17, v23, v6);

    v24 = sub_26618C690();
    v25 = sub_26618CAD0();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_19_5();
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v26 = 136315138;
      v43 = v21;
      sub_26618C0D0();

      v27 = sub_26618C8D0();
      v42 = v6;
      v29 = v9;
      v30 = sub_266103A98(v27, v28, &v44);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2660B7000, v24, v25, "CloseAppFlowStrategy.makeIntentFromParse() Finished creating intent from USO task: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();

      (*(v29 + 8))(v17, v42);
    }

    else
    {

      (*(v9 + 8))(v17, v6);
    }

    v39 = a2;
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v31 = __swift_project_value_buffer(v6, qword_2814B4A98);
    v32 = v9;
    (*(v9 + 16))(v14, v31, v6);
    v33 = sub_26618C690();
    v34 = sub_26618CAB0();
    v35 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_24_0();
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2660B7000, v33, v34, "CloseAppFlowStrategy.makeIntentFromParse() No tasks found in input", v37, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v32 + 8))(v14, v6);
    sub_2660D3004();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2660FCF0C()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_26618B070();
  v0[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618C6B0();
  v0[7] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x2822009F8](sub_2660FD004, 0, 0);
}

uint64_t sub_2660FD004()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAD0();
  v7 = OUTLINED_FUNCTION_21_6();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_24_0();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "CloseAppFlowStrategy.makeIntentExecutionBehavior", v9, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v13 = v0[2];

  (*(v11 + 8))(v10, v12);
  sub_26618B0A0();
  v14 = qword_28005BC50;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = v0[9];
  v17 = v0[5];
  v16 = v0[6];
  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  v21 = qword_28005D180;
  type metadata accessor for CloseAppIntent();
  v22 = v21;
  v23 = v19;
  sub_26618B060();
  v24 = sub_26618B090();
  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_54();

  return v25(v24);
}

uint64_t sub_2660FD218()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2660FD298()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660FD340;

  return sub_2660FBA94();
}

uint64_t sub_2660FD340()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_54();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_2660FD430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CloseAppFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2660FD47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2660FDC04;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2660FD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CloseAppFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_2660FD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CloseAppFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2660F44FC;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_2660FD6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CloseAppFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_2660FD7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CloseAppFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2660FD880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CloseAppFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2660FDC04;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2660FD95C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660FD9F8;

  return sub_2660FCF0C();
}

uint64_t sub_2660FD9F8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_54();

  return v6(v2);
}

uint64_t sub_2660FDBBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void OUTLINED_FUNCTION_10_6()
{
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[40];
  v5 = v0[37];
  v2 = v0[34];
}

uint64_t OUTLINED_FUNCTION_12_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 240);
  v4 = *(a1 + 96);
  return v2;
}

void OUTLINED_FUNCTION_17_4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[45];
  v4 = v0[46];
}

void OUTLINED_FUNCTION_23_1()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v7 = v0[48];
  v6 = v0[49];
}

id sub_2660FDCC0()
{
  if (qword_28005BC50 != -1)
  {
    swift_once();
  }

  v1 = qword_28005D180;
  qword_28005D188 = qword_28005D180;

  return v1;
}

uint64_t sub_2660FDD24()
{
  OUTLINED_FUNCTION_18();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_26618C6B0();
  v1[18] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[19] = v5;
  v7 = *(v6 + 64);
  v1[20] = OUTLINED_FUNCTION_8_2();
  v8 = *(*(sub_26618B1E0() - 8) + 64);
  v1[21] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B6A0();
  v1[22] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[23] = v10;
  v12 = *(v11 + 64);
  v1[24] = OUTLINED_FUNCTION_8_2();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2660FDE80()
{
  v1 = v0[26];
  v2 = v0[16];
  v3 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3B8, &qword_2661910F8);
  v4 = sub_26618B5F0();
  v5 = [v4 application];

  if (v5)
  {
    v7 = v0[25];
    v6 = v0[26];
    sub_26618B430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26618F7E0;
    *(inited + 32) = v5;
    v9 = v5;
    sub_26614AC6C();
    swift_setDeallocating();
    sub_2661242E4();
    sub_26618B390();

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v3);
    sub_2660FFEE8(v7, v6);
  }

  v10 = v0[16];
  v11 = sub_26618B5E0();
  v12 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  v13 = *&v11[v12];

  if (v13 == 100)
  {
    v14 = v0[16];
    sub_2660FFE84(v0[17] + 56, (v0 + 2));
    v15 = sub_26618B5F0();
    v16 = [v15 application];

    if (v16 && (v17 = sub_26610410C(v16), v18))
    {
      v19 = v17;
      v20 = v18;
    }

    else
    {

      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v0[27] = v20;
    v41 = swift_task_alloc();
    v0[28] = v41;
    *v41 = v0;
    v41[1] = sub_2660FE380;

    return sub_2660BFAD0(v19, v20);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];
    v24 = __swift_project_value_buffer(v23, qword_2814B4A98);
    (*(v22 + 16))(v21, v24, v23);
    v25 = sub_26618C690();
    v26 = sub_26618CAA0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2660B7000, v25, v26, "CloseAppHandleIntentStrategy.makeIntentHandledResponse() called", v27, 2u);
      MEMORY[0x26677CC30](v27, -1, -1);
    }

    v28 = v0[25];
    v42 = v0[26];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[17];
    v32 = v0[18];
    v33 = v0[15];

    (*(v30 + 8))(v29, v32);
    v34 = v31[21];
    __swift_project_boxed_opaque_existential_1(v31 + 17, v31[20]);
    sub_26618B0D0();
    sub_26618B0C0();
    sub_26618B050();

    v35 = v31[21];
    __swift_project_boxed_opaque_existential_1(v31 + 17, v31[20]);
    sub_26618B0B0();
    sub_26618B050();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26618F7E0;
    *(v36 + 32) = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    sub_2660FFDAC(v42, v28);
    v37 = sub_26618B870();
    v38 = MEMORY[0x277D5C1D8];
    v33[3] = v37;
    v33[4] = v38;
    __swift_allocate_boxed_opaque_existential_0(v33);
    sub_26618B850();
    OUTLINED_FUNCTION_8_11();

    OUTLINED_FUNCTION_5_3();

    return v39();
  }
}

uint64_t sub_2660FE380()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = *(v4 + 224);
  *v6 = *v1;
  *(v5 + 232) = v0;

  v8 = *(v4 + 216);
  if (v0)
  {
    sub_2660D3208(v5 + 16);

    v9 = sub_2660FE7E0;
  }

  else
  {
    *(v5 + 240) = v3;
    sub_2660D3208(v5 + 16);

    v9 = sub_2660FE4D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660FE4D4()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[17];
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v2;
  sub_26618B620();

  v6 = v5[26];
  __swift_project_boxed_opaque_existential_1(v5 + 22, v5[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v7 = swift_allocObject();
  v0[31] = v7;
  *(v7 + 16) = xmmword_26618F7E0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_2660FE628;
  v11 = v0[24];
  v12 = v0[15];
  OUTLINED_FUNCTION_13_6();

  return MEMORY[0x2821BB488](v13, v14, v15, v16, v17);
}