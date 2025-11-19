uint64_t sub_1DCFB5248()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput();
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  v5 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v4, v6, v7, v5);
  v8 = v2[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v8, v10, v11, v9);
  v12 = v2[8];
  v13 = *MEMORY[0x1E69D0678];
  v14 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v14);
  (*(v15 + 104))(boxed_opaque_existential_1Tm + v12, v13);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v16();
}

uint64_t sub_1DCFB53B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCFB5450()
{
  OUTLINED_FUNCTION_70();
  v0 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_20_0(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return sub_1DCFB53B0();
}

uint64_t sub_1DCFB55BC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

void sub_1DCFB56BC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v24 = v2;
  v3 = *v0;
  v4 = v3[10];
  v5 = v3[11];
  v6 = OUTLINED_FUNCTION_21_49();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v7, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v23 - v15;
  v17 = v3[17];
  swift_beginAccess();
  v23[4] = v9;
  (*(v9 + 16))(v16, &v1[v17], v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v19 = xmmword_1DD102E90;
LABEL_7:
    *v24 = v19;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v23[3] = v4;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v22, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v19 = *v16;
    goto LABEL_7;
  }

  v20 = v16[8];
  v21 = v24;
  *v24 = *v16 | 0x8000000000000000;
  *(v21 + 1) = v20;
LABEL_11:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFB5A20()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1DCFB5A90();
  return v3;
}

uint64_t *sub_1DCFB5A90()
{
  OUTLINED_FUNCTION_65();
  v6 = *v1;
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 96), v7, *(*v1 + 80));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v5, v1 + *(v8 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v9 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v10 + 120));
  OUTLINED_FUNCTION_66();
  v12 = *(v11 + 136);
  v13 = *(v6 + 88);
  type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  v15 = (v1 + *(v14 + 128));
  *v15 = v2;
  v15[1] = v0;
  return v1;
}

void sub_1DCFB5BF4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 88);
  v7 = OUTLINED_FUNCTION_21_49();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v48 - v18);
  v20 = *(v4 + 136);
  swift_beginAccess();
  (*(v10 + 16))(v19, v1 + v20, v7);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v21 = *v19;
    v22 = v1 + *(*v1 + 96);
    (*(v6 + 32))(&v51, v3, v5, v6);
    if (v51)
    {
      if (v51 == 1)
      {
        v50 = v21;
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v49 = v3;
        v23 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v23, qword_1EDE57E00);
        v24 = sub_1DD0DD8EC();
        v25 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_50_0();
          *v26 = 0;
          _os_log_impl(&dword_1DCAFC000, v24, v25, "AppResolutionFlow strategy indicated it wants to handle the input. Moving to execute.", v26, 2u);
          OUTLINED_FUNCTION_80();
        }

        type metadata accessor for Input(255);
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v28 = *(TupleTypeMetadata3 + 48);
        v29 = *(TupleTypeMetadata3 + 64);
        sub_1DCFBFF98(v49, v16, type metadata accessor for Input);
        *&v16[v28] = v50;
        *&v16[v29] = 0;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_28_34();
        v30 = OUTLINED_FUNCTION_27_37();
        v31(v30);
        swift_endAccess();
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v43 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v43, qword_1EDE57E00);
        v44 = sub_1DD0DD8EC();
        v45 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v44, v45))
        {
          *OUTLINED_FUNCTION_50_0() = 0;
          OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v46, v47, "AppResolutionFlow strategy indicated it wants to ignore the input. Ignoring...");
          OUTLINED_FUNCTION_80();
        }
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v37 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v37, qword_1EDE57E00);
      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_50_0();
        *v40 = 0;
        _os_log_impl(&dword_1DCAFC000, v38, v39, "AppResolutionFlow strategy indicated it wants to cancel. Cancelling.", v40, 2u);
        OUTLINED_FUNCTION_80();
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_28_34();
      v41 = OUTLINED_FUNCTION_27_37();
      v42(v41);
      swift_endAccess();
    }
  }

  else
  {
    (*(v10 + 8))(v19, v7);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v33, v34))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v35, v36, "AppResolutionFlow received input but is not waiting for any. Ignoring...");
      OUTLINED_FUNCTION_80();
    }
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFB613C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCFB615C, 0, 0);
}

uint64_t sub_1DCFB6244()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCFB6380(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = *v1;
  v79 = type metadata accessor for ExecuteResponse(0);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79, v5);
  v80 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v78 = *(v84 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v84, v8);
  v81 = &v72 - v9;
  v10 = type metadata accessor for Input(0);
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v75 = &v72 - v16;
  v17 = v3[11];
  v82 = v3[10];
  v77 = v17;
  v18 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v74 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v72 - v25;
  v27 = v3[17];
  swift_beginAccess();
  v76 = v19;
  (*(v19 + 16))(v26, &v2[v27], v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = v77;
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v74 = *&v26[*(TupleTypeMetadata3 + 48)];
      v76 = *&v26[*(TupleTypeMetadata3 + 64)];
      v30 = v75;
      sub_1DCC333DC(v26, v75);
      v80 = *(*v2 + 96);
      v79 = *(v10 + 20);
      sub_1DCFBFF98(v30, v14, type metadata accessor for Input);
      v31 = v78;
      (*(v78 + 16))(v81, v83, v84);
      v32 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = (*(v31 + 80) + v34 + 8) & ~*(v31 + 80);
      v36 = (v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 16) = v82;
      *(v37 + 24) = v28;
      sub_1DCC333DC(v14, v37 + v32);
      *(v37 + v33) = v2;
      *(v37 + v34) = v74;
      (*(v31 + 32))(v37 + v35, v81, v84);
      *(v37 + v36) = v76;
      v38 = *(v28 + 40);
      sub_1DD0DCF8C();
    case 2u:
      v51 = *(v26 + 5);
      v50 = *(v26 + 6);
      sub_1DCAFF9E8(v26, v85);
      v52 = v78;
      v53 = v81;
      v54 = v84;
      (*(v78 + 16))(v81, v83, v84);
      v55 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v56 = swift_allocObject();
      (*(v52 + 32))(v56 + v55, v53, v54);
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1DCFC64C8;
      *(v57 + 24) = v56;
      sub_1DCFB785C(v51, v85, v50, sub_1DCFC64CC, v57);
    case 4u:
      v41 = *v26;
      v40 = *(v26 + 1);
      v42 = v26[56];
      sub_1DCAFF9E8(v26 + 1, v85);
      v43 = v78 + 16;
      v44 = v81;
      v45 = v84;
      (*(v78 + 16))(v81, v83, v84);
      v46 = (*(v43 + 64) + 16) & ~*(v43 + 64);
      v47 = (v43 + 16);
      if (v42 == 1)
      {
        v48 = swift_allocObject();
        (*v47)(v48 + v46, v44, v45);
        v49 = swift_allocObject();
        *(v49 + 16) = sub_1DCFBFCF8;
        *(v49 + 24) = v48;
        sub_1DCFB7D44(v41, v40, v85, sub_1DCFC64CC, v49);
      }

      v70 = swift_allocObject();
      (*v47)(v70 + v46, v44, v45);
      v71 = swift_allocObject();
      *(v71 + 16) = sub_1DCFC64C8;
      *(v71 + 24) = v70;
      sub_1DCFB82E4(v41, v40, v85, sub_1DCFBFCF0, v71);
    case 5u:
      (*(v76 + 8))(v26, v18);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v58 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v58, qword_1EDE57E00);
      v59 = sub_1DD0DD8EC();
      v60 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_18;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "AppResolution is complete. Exiting...";
      break;
    case 8u:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v63 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v63, qword_1EDE57E00);
      v59 = sub_1DD0DD8EC();
      v60 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_18;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "AppResolution is cancelled. Exiting...";
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v39 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v39, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  _os_log_impl(&dword_1DCAFC000, v59, v60, v62, v61, 2u);
  MEMORY[0x1E12A8390](v61, -1, -1);
LABEL_18:

  v64 = v79;
  v65 = *(v79 + 36);
  v66 = type metadata accessor for PluginAction();
  v67 = v80;
  __swift_storeEnumTagSinglePayload(&v80[v65], 1, 1, v66);
  *v67 = 1;
  *(v67 + 1) = 0;
  v67[16] = 0;
  *(v67 + 4) = 0;
  *(v67 + 5) = 0;
  *(v67 + 3) = 0;
  v67[48] = -4;
  v68 = &v67[*(v64 + 40)];
  *v68 = 0u;
  *(v68 + 1) = 0u;
  return sub_1DD0DE46C();
}

uint64_t sub_1DCFB6FA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GuardFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26A8, &unk_1DD0E62D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DCC7E584;
  *(v6 + 24) = v5;
  *(inited + 32) = sub_1DCFC0260;
  *(inited + 40) = v6;

  return GuardFlow.__allocating_init(withGuards:)(inited);
}

void sub_1DCFB7080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v57 = a4;
  v55 = a2;
  v9 = *a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v51 - v14;
  v16 = *(v9 + 80);
  v17 = *(v9 + 88);
  v18 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.AppResolutionError();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v51 - v22;
  sub_1DCB09910(a1, v59, qword_1ECCA9360, &qword_1DD107640);
  if (v60 == 1)
  {
    v52 = a5;
    v53 = v12;
    v56 = v15;
    v24 = *&v59[0];
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v54 = v19;
    v25 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v25, qword_1EDE57E00);
    v26 = v24;
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v51[0] = a3;
      v30 = v29;
      v58[0] = swift_slowAlloc();
      v51[1] = v24;
      v31 = v58[0];
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = sub_1DD0DF18C();
      v34 = v10;
      v35 = sub_1DCB10E9C(v32, v33, v58);

      *(v30 + 4) = v35;
      v10 = v34;
      _os_log_impl(&dword_1DCAFC000, v27, v28, "Unable to extract app resolution state from parse: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A8390](v31, -1, -1);
      MEMORY[0x1E12A8390](v30, -1, -1);
    }

    v36 = v56;
    v37 = v52;
    v38 = type metadata accessor for Input(0);
    sub_1DCFBFF98(v55 + *(v38 + 20), v23, type metadata accessor for Parse);
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    v39 = swift_allocError();
    (*(v54 + 16))(v40, v23, v18);
    (*(v11 + 16))(v36, v37, v10);
    v41 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v42 = swift_allocObject();
    v43 = v10;
    v44 = v42;
    (*(v11 + 32))(v42 + v41, v36, v43);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1DCFC64C8;
    *(v45 + 24) = v44;
    sub_1DCFB7690(v57, v39, sub_1DCFC64CC, v45);
  }

  sub_1DCAFF9E8(v59, v58);
  (*(v11 + 16))(v15, a5, v10);
  v46 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v47 = swift_allocObject();
  v48 = v10;
  v49 = v47;
  (*(v11 + 32))(v47 + v46, v15, v48);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1DCFC64C8;
  *(v50 + 24) = v49;
  sub_1DCFB785C(v57, v58, v56, sub_1DCFC64CC, v50);
}

uint64_t sub_1DCFB75EC(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCFBFF98(a1, v8, type metadata accessor for ExecuteResponse);
  return a2(v8);
}

void sub_1DCFB7690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 96);
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a2;
  v11 = *(*(v8 + 88) + 88);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFB77A4()
{
  v1 = OUTLINED_FUNCTION_70();
  v2 = type metadata accessor for ExecuteResponse(v1);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1DCFBFF98(v0, &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExecuteResponse);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  sub_1DD0DE46C();
  OUTLINED_FUNCTION_7_74();
  return sub_1DCFBFF48();
}

void sub_1DCFB785C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a1;
  v11 = *v5;
  v12 = v11[11];
  v13 = v11[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v31 = type metadata accessor for ExecuteResponse(0);
  v17 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v18);
  v19 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v25 = v30 - v24;
  if (a3)
  {
    v30[0] = v25;
    v30[1] = v23;
    v30[2] = v22;
    v30[3] = a4;
    v30[4] = a5;
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1DD0DCF8C();
  }

  v27 = v6 + v11[12];
  (*(v12 + 48))(v13, v12);
  sub_1DCB17CA0(a2, v35);
  v28 = swift_allocObject();
  v29 = v32;
  v28[2] = v6;
  v28[3] = v29;
  v28[4] = a4;
  v28[5] = a5;
  sub_1DCAFF9E8(v35, (v28 + 6));
  swift_getAssociatedConformanceWitness();
  sub_1DD0DCF8C();
}

void sub_1DCFB7D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v18 = a3;
  v19 = a2;
  v6 = *(*v5 + 80);
  v7 = *(*v5 + 88);
  v8 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v16 = *(v8 - 8);
  v17 = v8;
  v9 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v15[1] = v15 - v11;
  v20 = type metadata accessor for ExecuteResponse(0);
  v12 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v13);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFB82E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v46 = a5;
  v41[4] = a2;
  v9 = *v5;
  v41[0] = type metadata accessor for SiriKitEventPayload(0);
  v10 = *(*(v41[0] - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v41[0], v11);
  v41[1] = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v41[2] = v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v44 = v41 - v19;
  v43 = type metadata accessor for ExecuteResponse(0);
  v20 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43, v21);
  v22 = *(v9 + 88);
  v41[3] = *(v9 + 80);
  v23 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v42 = *(v23 - 8);
  v24 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (v41 - v26);
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v29 = sub_1DD0DD29C();
  if (!v29 || (*&v47 = v29, v48 = a1, sub_1DD0DD1FC(), sub_1DCB252F0(qword_1ECCA2290, MEMORY[0x1E69CE208]), v30 = sub_1DD0DDF7C(), , (v30 & 1) == 0))
  {
    v31 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v32 = sub_1DD0DD2AC();
    if (!v32 || (*&v47 = v32, v48 = a1, sub_1DD0DD1FC(), sub_1DCB252F0(qword_1ECCA2290, MEMORY[0x1E69CE208]), v33 = sub_1DD0DDF7C(), , (v33 & 1) == 0))
    {
      v36 = *(*v6 + 96);
      v37 = swift_allocObject();
      v38 = v45;
      v39 = v46;
      v37[2] = v6;
      v37[3] = v38;
      v37[4] = v39;
      v37[5] = a1;
      v40 = *(v22 + 72);
      sub_1DD0DCF8C();
    }
  }

  *v27 = a1;
  v27[1] = 0;
  swift_storeEnumTagMultiPayload();
  v34 = *(*v6 + 136);
  swift_beginAccess();
  v35 = *(v42 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCFB89A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a4;
  v33 = a5;
  v8 = sub_1DD0DD2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAB868, &qword_1DD107648);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v31 - v17);
  sub_1DCB09910(a1, &v31 - v17, qword_1ECCAB868, &qword_1DD107648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = a3;
    v19 = v32;
    v20 = v33;
    v21 = *v18;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = v21;
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_1DD0DF18C();
      v30 = sub_1DCB10E9C(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "ExecuteAppResolution error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A8390](v27, -1, -1);
      MEMORY[0x1E12A8390](v26, -1, -1);
    }

    sub_1DCFB7690(v31, v21, v19, v20);
  }

  (*(v9 + 32))(v13, v18, v8);
  sub_1DCFB8CA8(a3, v31, v13, v32, v33);
}

void sub_1DCFB8CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a2;
  v71 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v59 = &v57 - v14;
  v15 = sub_1DD0DD2DC();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v64 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DD0DD2FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v69 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v57 - v26;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v62 = sub_1DD0DD8FC();
  v28 = __swift_project_value_buffer(v62, qword_1EDE57E00);
  v29 = *(v20 + 16);
  v70 = a3;
  v68 = v29;
  v29(v27, a3, v19);
  v58 = v28;
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v61 = a5;
    v33 = v32;
    v57 = swift_slowAlloc();
    v72 = v57;
    *v33 = 136315138;
    sub_1DCB252F0(&qword_1EDE46328, MEMORY[0x1E69CE260]);
    v34 = sub_1DD0DF03C();
    v60 = a4;
    v36 = v35;
    (*(v20 + 8))(v27, v19);
    v37 = sub_1DCB10E9C(v34, v36, &v72);
    a4 = v60;

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1DCAFC000, v30, v31, "AppResolutionFlow routeAppResolutionResult %s", v33, 0xCu);
    v38 = v57;
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1E12A8390](v38, -1, -1);
    v39 = v33;
    a5 = v61;
    MEMORY[0x1E12A8390](v39, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v27, v19);
  }

  v40 = v69;
  v68(v69, v70, v19);
  v41 = (*(v20 + 88))(v40, v19);
  if (v41 == *MEMORY[0x1E69CE248])
  {
    (*(v20 + 96))(v40, v19);
    v42 = *v40;
    sub_1DCFB97C0();
  }

  if (v41 == *MEMORY[0x1E69CE250])
  {
    (*(v20 + 96))(v40, v19);
    sub_1DCFB9A18(*v40, v71, a4, a5);
  }

  if (v41 == *MEMORY[0x1E69CE258])
  {
    (*(v20 + 96))(v40, v19);
    v43 = *v40;
    sub_1DCFB9DDC();
  }

  if (v41 == *MEMORY[0x1E69CE240])
  {
    (*(v20 + 96))(v40, v19);
    v44 = v64;
    (*(v65 + 32))(v64, v40, v66);
    sub_1DCFB9480(v71, v44, a4, a5);
  }

  v45 = v62;
  v46 = *(v62 - 8);
  v47 = v59;
  (*(v46 + 16))(v59, v58, v62);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v45);
  v48 = v47;
  v49 = v63;
  sub_1DCB09910(v48, v63, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v45) == 1)
  {
    sub_1DCB16DB0(v63, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72 = v53;
      *v52 = 136315650;
      v54 = sub_1DD0DEC3C();
      v56 = sub_1DCB10E9C(v54, v55, &v72);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 283;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_1DCB10E9C(0xD000000000000020, 0x80000001DD114970, &v72);
      _os_log_impl(&dword_1DCAFC000, v50, v51, "FatalError at %s:%lu - %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v53, -1, -1);
      MEMORY[0x1E12A8390](v52, -1, -1);
    }

    (*(v46 + 8))(v63, v62);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000020, 0x80000001DD114970);
}

void sub_1DCFB9480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a4;
  v40 = a1;
  v38 = *v4;
  v8 = sub_1DD0DD2DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v35 - v16;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = *(v9 + 16);
  v41 = a2;
  v19(v17, a2, v8);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = a3;
    v23 = v22;
    v36 = swift_slowAlloc();
    v42 = v36;
    *v23 = 136315138;
    v19(v14, v17, v8);
    v24 = sub_1DD0DE02C();
    v26 = v25;
    (*(v9 + 8))(v17, v8);
    v27 = sub_1DCB10E9C(v24, v26, &v42);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "AppResolutionFlow executeResolutionUnsuccessful: %s", v23, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1E12A8390](v28, -1, -1);
    v29 = v23;
    a3 = v37;
    MEMORY[0x1E12A8390](v29, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v17, v8);
  }

  v30 = *(*v5 + 96);
  v31 = swift_allocObject();
  v31[2] = v5;
  v31[3] = a3;
  v32 = v38;
  v31[4] = v39;
  v33 = *(v32 + 80);
  v34 = *(*(v32 + 88) + 80);
  sub_1DD0DCF8C();
}

void sub_1DCFB97C0()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFB9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);

  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v34 = a2;
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35[0] = v33;
    *v14 = 136315138;
    v15 = sub_1DD0DD1FC();
    v16 = MEMORY[0x1E12A69A0](a1, v15);
    v18 = v10;
    v19 = a4;
    v20 = sub_1DCB10E9C(v16, v17, v35);

    *(v14 + 4) = v20;
    a4 = v19;
    v10 = v18;
    v5 = v4;
    _os_log_impl(&dword_1DCAFC000, v12, v13, "AppResolutionFlow sending prompt for disambiguation for apps %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1E12A8390](v33, -1, -1);
    v21 = v14;
    a2 = v34;
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  if (sub_1DCB08B14(a1))
  {
    v22 = *(*v5 + 96);
    v23 = sub_1DCB08B14(a1);
    v35[0] = a1;
    v35[1] = 0;
    v35[2] = v23;
    v36 = 2;
    v37 = 0;
    v38 = 1;
    v24 = swift_allocObject();
    v24[2] = v5;
    v24[3] = a1;
    v24[4] = a3;
    v24[5] = a4;
    v24[6] = a2;
    v25 = *(v10 + 80);
    v26 = *(*(v10 + 88) + 64);
    swift_bridgeObjectRetain_n();
    sub_1DD0DCF8C();
  }

  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DCAFC000, v27, v28, "AppResolutionFlow executeAppNeedsDisambiguation called with no Apps", v29, 2u);
    MEMORY[0x1E12A8390](v29, -1, -1);
  }

  v30 = *(v10 + 80);
  v31 = *(v10 + 88);
  type metadata accessor for SiriKitServerAssistedAppResolutionFlow.AppResolutionError();
  swift_getWitnessTable();
  v32 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  sub_1DCFB7690(a2, v32, a3, a4);
}

void sub_1DCFB9DDC()
{
  v1 = *v0;
  v2 = type metadata accessor for ExecuteResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFBA164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFBA210(uint64_t *a1, void (*a2)(void))
{
  v4 = *a1;
  v5 = type metadata accessor for ExecuteResponse(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  v12 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - v16;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = v5;
    v22 = a2;
    v23 = v21;
    *v21 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "AppResolutionFlow successfully sent unsuccessful response.", v21, 2u);
    v24 = v23;
    a2 = v22;
    v5 = v30;
    MEMORY[0x1E12A8390](v24, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v25 = *(*a1 + 136);
  swift_beginAccess();
  (*(v13 + 40))(a1 + v25, v17, v12);
  swift_endAccess();
  v26 = *(v5 + 36);
  v27 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v9[v26], 1, 1, v27);
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 3) = 0;
  v9[48] = -4;
  v28 = &v9[*(v5 + 40)];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  a2(v9);
  return sub_1DCFBFF48();
}

uint64_t sub_1DCFBA4F0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = type metadata accessor for ExecuteResponse(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v12 + 80);
  v19 = *(v12 + 88);
  v20 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v58 = *(v20 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53 - v23;
  sub_1DCB09910(a1, v60, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v61 != 1)
  {
    sub_1DCAFF9E8(v60, v59);
    v43 = (v6 + *(*v6 + 120));
    v44 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v45 = swift_allocObject();
    v45[2] = v6;
    v45[3] = a2;
    v45[4] = a3;
    v45[5] = a4;
    v45[6] = a5;
    v46 = *(v44 + 8);
    sub_1DD0DCF8C();
  }

  v57 = a3;
  v25 = *&v60[0];
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v26 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v26, qword_1EDE57E00);
  v27 = v25;
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v55 = v30;
    v56 = swift_slowAlloc();
    v59[0] = v56;
    *v30 = 136315138;
    swift_getErrorValue();
    v54 = v28;
    v31 = sub_1DD0DF18C();
    LOBYTE(v30) = v29;
    v33 = v25;
    v34 = v20;
    v35 = v13;
    v36 = a2;
    v37 = sub_1DCB10E9C(v31, v32, v59);

    v38 = v55;
    *(v55 + 1) = v37;
    a2 = v36;
    v13 = v35;
    v20 = v34;
    v25 = v33;
    v39 = v30;
    v40 = v54;
    v41 = v38;
    _os_log_impl(&dword_1DCAFC000, v54, v39, "Unexpected error while trying to produce output: %s", v38, 0xCu);
    v42 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x1E12A8390](v42, -1, -1);
    MEMORY[0x1E12A8390](v41, -1, -1);
  }

  else
  {
  }

  *v24 = v25;
  v24[8] = 0;
  swift_storeEnumTagMultiPayload();
  v47 = *(*v6 + 136);
  swift_beginAccess();
  v48 = v25;
  (*(v58 + 40))(v6 + v47, v24, v20);
  swift_endAccess();
  v49 = *(v13 + 36);
  v50 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v17[v49], 1, 1, v50);
  *v17 = 1;
  *(v17 + 1) = 0;
  v17[16] = 0;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  *(v17 + 3) = 0;
  v17[48] = -4;
  v51 = &v17[*(v13 + 40)];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  a2(v17);

  return sub_1DCFBFF48();
}

void sub_1DCFBA990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD0DD2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9[15] = 28;
  *&v9[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)] = a3;
  (*(v5 + 104))(&v9[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69CE248], v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFBAB54(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v52 = a4;
  v11 = type metadata accessor for SiriKitEventPayload(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v47 - v23;
  v25 = *a1;
  sub_1DCB09910(a3, v54, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v55 == 1)
  {
    return sub_1DCB16DB0(v54, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }

  sub_1DCAFF9E8(v54, v56);
  v27 = v57;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  if (sub_1DCB651D0(v27))
  {
    v49 = v11;
    v50 = a2;
    v51 = v6;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v28 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v28, qword_1EDE57E00);

    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v54[0] = v48;
      *v31 = 136315394;
      v53 = v25;
      v32 = ActivityType.rawValue.getter();
      v34 = sub_1DCB10E9C(v32, v33, v54);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1DCB10E9C(v52, a5, v54);
      _os_log_impl(&dword_1DCAFC000, v29, v30, "AppResolutionFlow logging Task step: %s for Task type: %s", v31, 0x16u);
      v35 = v48;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v35, -1, -1);
      MEMORY[0x1E12A8390](v31, -1, -1);
    }

    v36 = v51;
    v37 = *(*v51 + 104);
    v38 = sub_1DD0DD2FC();
    (*(*(v38 - 8) + 16))(v24, v50, v38);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v38);
    v39 = v57;
    v40 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    (*(v40 + 8))(v54, v39, v40);
    if ((sub_1DCE0669C(v25, 10) & 1) == 0)
    {
      v41 = v36 + v37;
      if (sub_1DCE0669C(v25, 10))
      {
        v42 = 25;
      }

      else
      {
        v42 = v25;
      }

      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      *v19 = v42;
      *(v19 + 1) = 0x54746E6572727543;
      *(v19 + 2) = 0xEB000000006B7361;
      v19[24] = 29;
      sub_1DCB09910(v54, (v19 + 32), &unk_1ECCA3280, &unk_1DD0E23D0);
      *(v19 + 9) = 0;
      sub_1DCB09910(v24, &v19[v43], &qword_1ECCA2278, &qword_1DD0E4830);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SiriKitEvent(0);
      sub_1DCFBFF98(v19, v16, type metadata accessor for SiriKitEventPayload);
      v44 = SiriKitEvent.__allocating_init(_:builder:)(v16, 0);
      sub_1DCFBFF48();
      v45 = *(v41 + 24);
      v46 = *(v41 + 32);
      __swift_project_boxed_opaque_existential_1((v36 + v37), v45);
      (*(v46 + 8))(v44, v45, v46);
    }

    sub_1DCB16DB0(v54, &unk_1ECCA3280, &unk_1DD0E23D0);
    sub_1DCB16DB0(v24, &qword_1ECCA2278, &qword_1DD0E4830);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v56);
}

void sub_1DCFBB064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DD0DD2FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = 27;
  *v17 = a3;
  (*(v13 + 104))(v17, *MEMORY[0x1E69CE250], v12);

  sub_1DCFBAB54(&v20, v17, a1, 0x54746E6572727543, 0xEB000000006B7361);

  (*(v13 + 8))(v17, v12);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a6;
  v18[4] = a4;
  v18[5] = a5;
  sub_1DD0DCF8C();
}

void sub_1DCFBB228()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v39 = v3;
  v40 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = type metadata accessor for ExecuteResponse(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 80);
  v15 = *(v6 + 88);
  v16 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  OUTLINED_FUNCTION_9(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v38 - v23);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v25, qword_1EDE57E00);
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_50_0();
    v38 = v7;
    *v28 = 0;
    _os_log_impl(&dword_1DCAFC000, v26, v27, v1, v28, 2u);
    v7 = v38;
    OUTLINED_FUNCTION_80();
  }

  v29 = v40;
  *v24 = v40;
  swift_storeEnumTagMultiPayload();
  v30 = *(*v5 + 136);
  OUTLINED_FUNCTION_22_42();
  v31 = *(v18 + 40);
  v32 = v29;
  v31(&v5[v30], v24, v16);
  swift_endAccess();
  v33 = *(v7 + 36);
  v34 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(&v13[v33], v35, v36, v34);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 3) = 0;
  v13[48] = -4;
  v37 = &v13[*(v7 + 40)];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v39(v13);
  OUTLINED_FUNCTION_7_74();
  sub_1DCFBFF48();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFBB49C(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(*a2 + 80);
  v12 = *(v10 + 88);
  v13 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v23 - v17;
  if ((*a1 & 1) == 0)
  {
    *v18 = a3;
    *(v18 + 1) = a4;
    sub_1DCB17CA0(a5, (v18 + 16));
    v18[56] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  sub_1DCC22514();
  v19 = swift_allocError();
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 2;
  *v18 = v19;
  v18[8] = 1;
  swift_storeEnumTagMultiPayload();
  v21 = *(*a2 + 136);
  swift_beginAccess();
  (*(v14 + 40))(a2 + v21, v18, v13);
  return swift_endAccess();
}

void sub_1DCFBB658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a5;
  v9[4] = a3;
  v9[5] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCFBB710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  v24[2] = a3;
  v6 = *a1;
  v7 = type metadata accessor for ExecuteResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (v24 - v16);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "AppResolutionFlow successfully sent app resolution success response.", v21, 2u);
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  *v17 = a2;
  v17[1] = 0;
  swift_storeEnumTagMultiPayload();
  v22 = *(*a1 + 136);
  swift_beginAccess();
  v23 = *(v13 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCFBB9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DD0DD2FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 6;
  v16 = *MEMORY[0x1E69CE228];
  v17 = sub_1DD0DD2DC();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(v11 + 104))(v15, *MEMORY[0x1E69CE240], v10);
  sub_1DCFBAB54(&v20, v15, a1, 0x54746E6572727543, 0xEB000000006B7361);

  (*(v11 + 8))(v15, v10);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a5;
  v18[4] = a3;
  v18[5] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFBBBE4(uint64_t *a1, void *a2, void (*a3)(char *))
{
  v26 = a3;
  v5 = *a1;
  v6 = type metadata accessor for ExecuteResponse(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 80);
  v13 = *(v5 + 88);
  v14 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v26 - v18;
  *v19 = a2;
  v19[8] = 1;
  swift_storeEnumTagMultiPayload();
  v20 = *(*a1 + 136);
  swift_beginAccess();
  v21 = a2;
  (*(v15 + 40))(a1 + v20, v19, v14);
  swift_endAccess();
  v22 = *(v7 + 44);
  v23 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v11[v22], 1, 1, v23);
  *v11 = 1;
  *(v11 + 1) = 0;
  v11[16] = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  *(v11 + 3) = 0;
  v11[48] = -4;
  v24 = &v11[*(v7 + 48)];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v26(v11);
  return sub_1DCFBFF48();
}

uint64_t sub_1DCFBBE08(void *a1, char a2, uint64_t *a3, void (*a4)(char *), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v52 = a5;
  v11 = *a3;
  v51 = type metadata accessor for ExecuteResponse(0);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + 80);
  v17 = *(v11 + 88);
  v18 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v48 - v23;
  if ((a2 & 1) == 0)
  {
    return a6(v22);
  }

  v50 = a4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v25 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v25, qword_1EDE57E00);
  v26 = a1;
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6EC();
  sub_1DCB79378(a1, 1);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = v29;
    v49 = swift_slowAlloc();
    v53 = v49;
    *v29 = 136315138;
    swift_getErrorValue();
    v30 = sub_1DD0DF18C();
    v32 = v18;
    v33 = a1;
    v34 = v28;
    v35 = v19;
    v36 = sub_1DCB10E9C(v30, v31, &v53);

    v37 = v48;
    *(v48 + 1) = v36;
    v19 = v35;
    v38 = v34;
    a1 = v33;
    v18 = v32;
    v39 = v37;
    _os_log_impl(&dword_1DCAFC000, v27, v38, "Unexpected error while trying to publish output: %s", v37, 0xCu);
    v40 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1E12A8390](v40, -1, -1);
    MEMORY[0x1E12A8390](v39, -1, -1);
  }

  *v24 = a1;
  v24[8] = 0;
  swift_storeEnumTagMultiPayload();
  v41 = *(*a3 + 136);
  swift_beginAccess();
  v42 = a1;
  (*(v19 + 40))(a3 + v41, v24, v18);
  swift_endAccess();
  v43 = v51;
  v44 = *(v51 + 36);
  v45 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v15[v44], 1, 1, v45);
  *v15 = 1;
  *(v15 + 1) = 0;
  v15[16] = 0;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  *(v15 + 3) = 0;
  v15[48] = -4;
  v46 = &v15[*(v43 + 40)];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v50(v15);
  return sub_1DCFBFF48();
}

uint64_t *sub_1DCFBC1B4()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v2 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 120)));
  OUTLINED_FUNCTION_66();
  v6 = *(v0 + *(v5 + 128) + 8);

  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 136);
  v9 = *(v1 + 88);
  v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  OUTLINED_FUNCTION_13_1(v10);
  (*(v11 + 8))(v0 + v8);
  return v0;
}

uint64_t sub_1DCFBC2F0()
{
  sub_1DCFBC1B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFBC378()
{
  v4 = "\b";
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout3();
    v5 = &v3;
    v6 = &unk_1DD107550;
    v7 = &unk_1DD107538;
    v8 = &unk_1DD107568;
    v9 = &unk_1DD107580;
    v10 = &unk_1DD107598;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCFBC45C(char *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 1u:
      v18 = sub_1DD0DB04C();
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      v19 = type metadata accessor for Input(0);
      v20 = v19[5];
      v21 = &a1[v20];
      v22 = (a2 + v20);
      v23 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v24 = sub_1DD0DC76C();
          (*(*(v24 - 8) + 16))(v21, v22, v24);
          goto LABEL_37;
        case 1u:
          v37 = sub_1DD0DC76C();
          (*(*(v37 - 8) + 16))(v21, v22, v37);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v21[*(v38 + 48)] = *&v22[*(v38 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v31 = *(v22 + 1);
          *v21 = *v22;
          *(v21 + 1) = v31;
          *(v21 + 2) = *(v22 + 2);

          goto LABEL_37;
        case 3u:
          *v21 = *v22;
          swift_unknownObjectRetain();
          goto LABEL_37;
        case 4u:
          v29 = sub_1DD0DB1EC();
          (*(*(v29 - 8) + 16))(v21, v22, v29);
          goto LABEL_37;
        case 5u:
          v39 = *v22;
          *v21 = *v22;
          v40 = v39;
          goto LABEL_37;
        case 6u:
          v41 = sub_1DD0DB4BC();
          (*(*(v41 - 8) + 16))(v21, v22, v41);
          v42 = type metadata accessor for USOParse();
          v43 = v42[5];
          v44 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v22[v43], 1, v44))
          {
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v21[v43], &v22[v43], *(*(v45 - 8) + 64));
          }

          else
          {
            (*(*(v44 - 8) + 16))(&v21[v43], &v22[v43], v44);
            __swift_storeEnumTagSinglePayload(&v21[v43], 0, 1, v44);
          }

          v76 = v42[6];
          v77 = &v21[v76];
          v78 = &v22[v76];
          v79 = *(v78 + 1);
          *v77 = *v78;
          *(v77 + 1) = v79;
          v80 = v42[7];
          v81 = &v21[v80];
          v82 = &v22[v80];
          v81[4] = v82[4];
          *v81 = *v82;

          goto LABEL_37;
        case 7u:
          v32 = sub_1DD0DB4BC();
          (*(*(v32 - 8) + 16))(v21, v22, v32);
          v33 = type metadata accessor for USOParse();
          v34 = v33[5];
          v35 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v22[v34], 1, v35))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v21[v34], &v22[v34], *(*(v36 - 8) + 64));
          }

          else
          {
            (*(*(v35 - 8) + 16))(&v21[v34], &v22[v34], v35);
            __swift_storeEnumTagSinglePayload(&v21[v34], 0, 1, v35);
          }

          v56 = v33[6];
          v57 = &v21[v56];
          v58 = &v22[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;
          v60 = v33[7];
          v61 = &v21[v60];
          v62 = &v22[v60];
          v61[4] = v62[4];
          *v61 = *v62;
          v63 = type metadata accessor for LinkParse();
          v64 = v63[5];
          v65 = &v21[v64];
          v66 = &v22[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = v63[6];
          v69 = &v21[v68];
          v70 = &v22[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;
          v72 = v63[7];
          v73 = &v21[v72];
          v74 = &v22[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;

          goto LABEL_37;
        case 8u:
          v46 = sub_1DD0DD12C();
          (*(*(v46 - 8) + 16))(v21, v22, v46);
          v47 = type metadata accessor for NLRouterParse();
          v48 = *(v47 + 20);
          v49 = &v21[v48];
          v50 = &v22[v48];
          v51 = *(v50 + 1);
          *v49 = *v50;
          *(v49 + 1) = v51;
          v52 = *(v47 + 24);
          v109 = v47;
          __dst = &v21[v52];
          v53 = &v22[v52];
          v54 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v53, 1, v54))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v53, *(*(v55 - 8) + 64));
          }

          else
          {
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 16))(__dst, v53, v83);
            v84 = v54[5];
            v108 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v53[v84], 1, v108))
            {
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v84], &v53[v84], *(*(v85 - 8) + 64));
            }

            else
            {
              (*(*(v108 - 8) + 16))(&__dst[v84], &v53[v84]);
              __swift_storeEnumTagSinglePayload(&__dst[v84], 0, 1, v108);
            }

            v86 = v54[6];
            v87 = &__dst[v86];
            v88 = &v53[v86];
            v89 = *(v88 + 1);
            *v87 = *v88;
            *(v87 + 1) = v89;
            v90 = v54[7];
            v91 = &__dst[v90];
            v92 = &v53[v90];
            v91[4] = v92[4];
            *v91 = *v92;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v54);
          }

          v93 = *(v109 + 28);
          v94 = *&v22[v93];
          *&v21[v93] = v94;
          v95 = v94;
          goto LABEL_37;
        case 9u:
          v30 = sub_1DD0DD08C();
          (*(*(v30 - 8) + 16))(v21, v22, v30);
LABEL_37:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v21, v22, *(*(v23 - 8) + 64));
          break;
      }

      *&a1[v19[6]] = *(a2 + v19[6]);
      v96 = v19[7];
      v97 = &a1[v96];
      v98 = a2 + v96;
      v99 = *(a2 + v96 + 24);

      if (v99)
      {
        v100 = *(v98 + 32);
        *(v97 + 3) = v99;
        *(v97 + 4) = v100;
        (**(v99 - 8))(v97, v98, v99);
      }

      else
      {
        v101 = *(v98 + 16);
        *v97 = *v98;
        *(v97 + 1) = v101;
        *(v97 + 4) = *(v98 + 32);
      }

      a1[v19[8]] = *(a2 + v19[8]);
      v103 = *(a3 + 16);
      v102 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v105 = *(TupleTypeMetadata3 + 48);
      v106 = *(a2 + v105);
      *&a1[v105] = v106;
      *&a1[*(TupleTypeMetadata3 + 64)] = *(a2 + *(TupleTypeMetadata3 + 64));
      v107 = v106;
      sub_1DD0DCF8C();
    case 2u:
      v10 = *(a2 + 24);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1, a2);
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      *(a1 + 5) = v11;
      *(a1 + 6) = v12;
      v13 = v11;
      sub_1DD0DCF8C();
    case 3u:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      goto LABEL_42;
    case 4u:
      v7 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 1) = v7;
      v8 = *(a2 + 40);
      *(a1 + 40) = v8;
      v9 = **(v8 - 8);
      sub_1DD0DCF8C();
    case 5u:
      v26 = *a2;
      v25 = *(a2 + 8);
      sub_1DCBF4C98(v26);
      *a1 = v26;
      *(a1 + 1) = v25;
      goto LABEL_42;
    case 6u:
      v27 = *a2;
      v28 = *a2;
      *a1 = v27;
      a1[8] = *(a2 + 8);
LABEL_42:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v16 = *(v6 + 64);

      result = memcpy(a1, a2, v16);
      break;
  }

  return result;
}

void sub_1DCFBCF20(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = *a1;
      goto LABEL_40;
    case 1u:
      v8 = sub_1DD0DB04C();
      (*(*(v8 - 8) + 8))(a1, v8);
      v9 = type metadata accessor for Input(0);
      v10 = (a1 + v9[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v11 = sub_1DD0DC76C();
          goto LABEL_18;
        case 1u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 8))(v10, v26);
          v27 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v14 = *(v10 + 1);

          v15 = *(v10 + 2);
          goto LABEL_30;
        case 3u:
          v16 = *v10;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v11 = sub_1DD0DB1EC();
          goto LABEL_18;
        case 5u:
          v28 = *v10;
          goto LABEL_36;
        case 6u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 8))(v10, v29);
          v30 = type metadata accessor for USOParse();
          v31 = *(v30 + 20);
          v32 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v10[v31], 1, v32))
          {
            (*(*(v32 - 8) + 8))(&v10[v31], v32);
          }

          v25 = *(v30 + 24);
          goto LABEL_29;
        case 7u:
          v17 = sub_1DD0DB4BC();
          (*(*(v17 - 8) + 8))(v10, v17);
          v18 = type metadata accessor for USOParse();
          v19 = *(v18 + 20);
          v20 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v10[v19], 1, v20))
          {
            (*(*(v20 - 8) + 8))(&v10[v19], v20);
          }

          v21 = *&v10[*(v18 + 24) + 8];

          v22 = type metadata accessor for LinkParse();
          v23 = *&v10[v22[5] + 8];

          v24 = *&v10[v22[6] + 8];

          v25 = v22[7];
LABEL_29:
          v33 = *&v10[v25 + 8];
LABEL_30:

          break;
        case 8u:
          v34 = sub_1DD0DD12C();
          (*(*(v34 - 8) + 8))(v10, v34);
          v35 = type metadata accessor for NLRouterParse();
          v36 = *&v10[v35[5] + 8];

          v37 = &v10[v35[6]];
          v38 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v37, 1, v38))
          {
            v39 = sub_1DD0DB4BC();
            (*(*(v39 - 8) + 8))(v37, v39);
            v40 = *(v38 + 20);
            v41 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v37 + v40, 1, v41))
            {
              (*(*(v41 - 8) + 8))(v37 + v40, v41);
            }

            v42 = *(v37 + *(v38 + 24) + 8);
          }

          v28 = *&v10[v35[7]];
LABEL_36:

          break;
        case 9u:
          v11 = sub_1DD0DD08C();
LABEL_18:
          (*(*(v11 - 8) + 8))(v10, v11);
          break;
        default:
          break;
      }

      v43 = *(a1 + v9[6]);

      v44 = (a1 + v9[7]);
      if (v44[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }

      v46 = *(a2 + 16);
      v45 = *(a2 + 24);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();

      v48 = *(a1 + *(TupleTypeMetadata3 + 64));
      goto LABEL_40;
    case 2u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      v6 = *(a1 + 48);
LABEL_40:

      return;
    case 3u:
      v7 = *a1;

      goto LABEL_7;
    case 4u:
      v5 = *a1;

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      return;
    case 5u:
      v12 = *a1;
      v13 = *(a1 + 8);

      sub_1DCC2315C(v12, v13);
      return;
    case 6u:
      v7 = *a1;

LABEL_7:

      break;
    default:
      return;
  }
}

void *sub_1DCFBD520(char *a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 1u:
      v17 = sub_1DD0DB04C();
      (*(*(v17 - 8) + 16))(a1, a2, v17);
      v18 = type metadata accessor for Input(0);
      v19 = v18[5];
      v20 = &a1[v19];
      v21 = (a2 + v19);
      v22 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v23 = sub_1DD0DC76C();
          (*(*(v23 - 8) + 16))(v20, v21, v23);
          goto LABEL_35;
        case 1u:
          v36 = sub_1DD0DC76C();
          (*(*(v36 - 8) + 16))(v20, v21, v36);
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v20[*(v37 + 48)] = *&v21[*(v37 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v30 = *(v21 + 1);
          *v20 = *v21;
          *(v20 + 1) = v30;
          *(v20 + 2) = *(v21 + 2);

          goto LABEL_35;
        case 3u:
          *v20 = *v21;
          swift_unknownObjectRetain();
          goto LABEL_35;
        case 4u:
          v28 = sub_1DD0DB1EC();
          (*(*(v28 - 8) + 16))(v20, v21, v28);
          goto LABEL_35;
        case 5u:
          v38 = *v21;
          *v20 = *v21;
          v39 = v38;
          goto LABEL_35;
        case 6u:
          v40 = sub_1DD0DB4BC();
          (*(*(v40 - 8) + 16))(v20, v21, v40);
          v41 = type metadata accessor for USOParse();
          v42 = v41[5];
          v43 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v21[v42], 1, v43))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v20[v42], &v21[v42], *(*(v44 - 8) + 64));
          }

          else
          {
            (*(*(v43 - 8) + 16))(&v20[v42], &v21[v42], v43);
            __swift_storeEnumTagSinglePayload(&v20[v42], 0, 1, v43);
          }

          v75 = v41[6];
          v76 = &v20[v75];
          v77 = &v21[v75];
          v78 = *(v77 + 1);
          *v76 = *v77;
          *(v76 + 1) = v78;
          v79 = v41[7];
          v80 = &v20[v79];
          v81 = &v21[v79];
          v80[4] = v81[4];
          *v80 = *v81;

          goto LABEL_35;
        case 7u:
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 16))(v20, v21, v31);
          v32 = type metadata accessor for USOParse();
          v33 = v32[5];
          v34 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v21[v33], 1, v34))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v20[v33], &v21[v33], *(*(v35 - 8) + 64));
          }

          else
          {
            (*(*(v34 - 8) + 16))(&v20[v33], &v21[v33], v34);
            __swift_storeEnumTagSinglePayload(&v20[v33], 0, 1, v34);
          }

          v55 = v32[6];
          v56 = &v20[v55];
          v57 = &v21[v55];
          v58 = *(v57 + 1);
          *v56 = *v57;
          *(v56 + 1) = v58;
          v59 = v32[7];
          v60 = &v20[v59];
          v61 = &v21[v59];
          v60[4] = v61[4];
          *v60 = *v61;
          v62 = type metadata accessor for LinkParse();
          v63 = v62[5];
          v64 = &v20[v63];
          v65 = &v21[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;
          v67 = v62[6];
          v68 = &v20[v67];
          v69 = &v21[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;
          v71 = v62[7];
          v72 = &v20[v71];
          v73 = &v21[v71];
          v74 = *(v73 + 1);
          *v72 = *v73;
          *(v72 + 1) = v74;

          goto LABEL_35;
        case 8u:
          v45 = sub_1DD0DD12C();
          (*(*(v45 - 8) + 16))(v20, v21, v45);
          v46 = type metadata accessor for NLRouterParse();
          v47 = *(v46 + 20);
          v48 = &v20[v47];
          v49 = &v21[v47];
          v50 = *(v49 + 1);
          *v48 = *v49;
          *(v48 + 1) = v50;
          v51 = *(v46 + 24);
          v108 = v46;
          __dst = &v20[v51];
          v52 = &v21[v51];
          v53 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v52, 1, v53))
          {
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v52, *(*(v54 - 8) + 64));
          }

          else
          {
            v82 = sub_1DD0DB4BC();
            (*(*(v82 - 8) + 16))(__dst, v52, v82);
            v83 = v53[5];
            v107 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v52[v83], 1, v107))
            {
              v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v83], &v52[v83], *(*(v84 - 8) + 64));
            }

            else
            {
              (*(*(v107 - 8) + 16))(&__dst[v83], &v52[v83]);
              __swift_storeEnumTagSinglePayload(&__dst[v83], 0, 1, v107);
            }

            v85 = v53[6];
            v86 = &__dst[v85];
            v87 = &v52[v85];
            v88 = *(v87 + 1);
            *v86 = *v87;
            *(v86 + 1) = v88;
            v89 = v53[7];
            v90 = &__dst[v89];
            v91 = &v52[v89];
            v90[4] = v91[4];
            *v90 = *v91;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v53);
          }

          v92 = *(v108 + 28);
          v93 = *&v21[v92];
          *&v20[v92] = v93;
          v94 = v93;
          goto LABEL_35;
        case 9u:
          v29 = sub_1DD0DD08C();
          (*(*(v29 - 8) + 16))(v20, v21, v29);
LABEL_35:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v20, v21, *(*(v22 - 8) + 64));
          break;
      }

      *&a1[v18[6]] = *(a2 + v18[6]);
      v95 = v18[7];
      v96 = &a1[v95];
      v97 = a2 + v95;
      v98 = *(a2 + v95 + 24);

      if (v98)
      {
        v99 = *(v97 + 32);
        *(v96 + 3) = v98;
        *(v96 + 4) = v99;
        (**(v98 - 8))(v96, v97, v98);
      }

      else
      {
        v100 = *(v97 + 16);
        *v96 = *v97;
        *(v96 + 1) = v100;
        *(v96 + 4) = *(v97 + 32);
      }

      a1[v18[8]] = *(a2 + v18[8]);
      v102 = *(a3 + 16);
      v101 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v104 = *(TupleTypeMetadata3 + 48);
      v105 = *(a2 + v104);
      *&a1[v104] = v105;
      *&a1[*(TupleTypeMetadata3 + 64)] = *(a2 + *(TupleTypeMetadata3 + 64));
      v106 = v105;
      sub_1DD0DCF8C();
    case 2u:
      v9 = *(a2 + 24);
      *(a1 + 24) = v9;
      (**(v9 - 8))(a1, a2);
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      *(a1 + 5) = v10;
      *(a1 + 6) = v11;
      v12 = v10;
      sub_1DD0DCF8C();
    case 3u:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      goto LABEL_40;
    case 4u:
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 1) = v6;
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      v8 = **(v7 - 8);
      sub_1DD0DCF8C();
    case 5u:
      v25 = *a2;
      v24 = *(a2 + 8);
      sub_1DCBF4C98(v25);
      *a1 = v25;
      *(a1 + 1) = v24;
      goto LABEL_40;
    case 6u:
      v26 = *a2;
      v27 = *a2;
      *a1 = v26;
      a1[8] = *(a2 + 8);
LABEL_40:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v15 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v15);
      break;
  }

  return result;
}

unint64_t *sub_1DCFBDFA4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 - 8);
    (*(v6 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 1u:
        v16 = sub_1DD0DB04C();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        v17 = type metadata accessor for Input(0);
        v18 = v17[5];
        v19 = a1 + v18;
        v20 = a2 + v18;
        v21 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v22 = sub_1DD0DC76C();
            (*(*(v22 - 8) + 16))(v19, v20, v22);
            goto LABEL_36;
          case 1u:
            v34 = sub_1DD0DC76C();
            (*(*(v34 - 8) + 16))(v19, v20, v34);
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v19[*(v35 + 48)] = *&v20[*(v35 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v19 = *v20;
            *(v19 + 1) = *(v20 + 1);
            *(v19 + 2) = *(v20 + 2);

            goto LABEL_36;
          case 3u:
            *v19 = *v20;
            swift_unknownObjectRetain();
            goto LABEL_36;
          case 4u:
            v27 = sub_1DD0DB1EC();
            (*(*(v27 - 8) + 16))(v19, v20, v27);
            goto LABEL_36;
          case 5u:
            v36 = *v20;
            *v19 = *v20;
            v37 = v36;
            goto LABEL_36;
          case 6u:
            v38 = sub_1DD0DB4BC();
            (*(*(v38 - 8) + 16))(v19, v20, v38);
            v39 = type metadata accessor for USOParse();
            v40 = v39[5];
            v41 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v40], 1, v41))
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v40], &v20[v40], *(*(v42 - 8) + 64));
            }

            else
            {
              (*(*(v41 - 8) + 16))(&v19[v40], &v20[v40], v41);
              __swift_storeEnumTagSinglePayload(&v19[v40], 0, 1, v41);
            }

            v69 = v39[6];
            v70 = &v19[v69];
            v71 = &v20[v69];
            *v70 = *v71;
            *(v70 + 1) = *(v71 + 1);
            v72 = v39[7];
            v73 = &v19[v72];
            v74 = &v20[v72];
            v75 = *v74;
            v73[4] = v74[4];
            *v73 = v75;

            goto LABEL_36;
          case 7u:
            v29 = sub_1DD0DB4BC();
            (*(*(v29 - 8) + 16))(v19, v20, v29);
            v30 = type metadata accessor for USOParse();
            v31 = v30[5];
            v32 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v31], 1, v32))
            {
              v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v31], &v20[v31], *(*(v33 - 8) + 64));
            }

            else
            {
              (*(*(v32 - 8) + 16))(&v19[v31], &v20[v31], v32);
              __swift_storeEnumTagSinglePayload(&v19[v31], 0, 1, v32);
            }

            v52 = v30[6];
            v53 = &v19[v52];
            v54 = &v20[v52];
            *v53 = *v54;
            *(v53 + 1) = *(v54 + 1);
            v55 = v30[7];
            v56 = &v19[v55];
            v57 = &v20[v55];
            v58 = *v57;
            v56[4] = v57[4];
            *v56 = v58;
            v59 = type metadata accessor for LinkParse();
            v60 = v59[5];
            v61 = &v19[v60];
            v62 = &v20[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);
            v63 = v59[6];
            v64 = &v19[v63];
            v65 = &v20[v63];
            *v64 = *v65;
            *(v64 + 1) = *(v65 + 1);
            v66 = v59[7];
            v67 = &v19[v66];
            v68 = &v20[v66];
            *v67 = *v68;
            *(v67 + 1) = *(v68 + 1);

            goto LABEL_36;
          case 8u:
            v43 = sub_1DD0DD12C();
            (*(*(v43 - 8) + 16))(v19, v20, v43);
            v44 = type metadata accessor for NLRouterParse();
            v45 = *(v44 + 20);
            v46 = &v19[v45];
            v47 = &v20[v45];
            *v46 = *v47;
            *(v46 + 1) = *(v47 + 1);
            v48 = *(v44 + 24);
            v102 = v44;
            __dst = &v19[v48];
            v49 = &v20[v48];
            v50 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v49, 1, v50))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v49, *(*(v51 - 8) + 64));
            }

            else
            {
              v76 = sub_1DD0DB4BC();
              (*(*(v76 - 8) + 16))(__dst, v49, v76);
              v77 = v50[5];
              v101 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v49[v77], 1, v101))
              {
                v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v77], &v49[v77], *(*(v78 - 8) + 64));
              }

              else
              {
                (*(*(v101 - 8) + 16))(&__dst[v77], &v49[v77]);
                __swift_storeEnumTagSinglePayload(&__dst[v77], 0, 1, v101);
              }

              v79 = v50[6];
              v80 = &__dst[v79];
              v81 = &v49[v79];
              *v80 = *v81;
              *(v80 + 1) = *(v81 + 1);
              v82 = v50[7];
              v83 = &__dst[v82];
              v84 = &v49[v82];
              v85 = *v84;
              v83[4] = v84[4];
              *v83 = v85;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v50);
            }

            v86 = *(v102 + 28);
            v87 = *&v20[v86];
            *&v19[v86] = v87;
            v88 = v87;
            goto LABEL_36;
          case 9u:
            v28 = sub_1DD0DD08C();
            (*(*(v28 - 8) + 16))(v19, v20, v28);
LABEL_36:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v19, v20, *(*(v21 - 8) + 64));
            break;
        }

        *(a1 + v17[6]) = *(a2 + v17[6]);
        v89 = v17[7];
        v90 = a1 + v89;
        v91 = a2 + v89;
        v92 = *(a2 + v89 + 24);

        if (v92)
        {
          *(v90 + 3) = v92;
          *(v90 + 4) = *(v91 + 4);
          (**(v92 - 8))(v90, v91, v92);
        }

        else
        {
          v93 = *v91;
          v94 = *(v91 + 1);
          *(v90 + 4) = *(v91 + 4);
          *v90 = v93;
          *(v90 + 1) = v94;
        }

        *(a1 + v17[8]) = *(a2 + v17[8]);
        v96 = *(a3 + 16);
        v95 = *(a3 + 24);
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v98 = *(TupleTypeMetadata3 + 48);
        v99 = *(a2 + v98);
        *(a1 + v98) = v99;
        *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
        v100 = v99;
        sub_1DD0DCF8C();
      case 2u:
        v9 = a2[3];
        a1[3] = v9;
        a1[4] = a2[4];
        (**(v9 - 8))(a1, a2);
        v10 = a2[5];
        a1[5] = v10;
        a1[6] = a2[6];
        v11 = v10;
        sub_1DD0DCF8C();
      case 3u:
        v12 = *a2;
        *a1 = *a2;
        v13 = v12;
        goto LABEL_41;
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];
        v7 = a2[5];
        a1[5] = v7;
        a1[6] = a2[6];
        v8 = **(v7 - 8);
        sub_1DD0DCF8C();
      case 5u:
        v24 = *a2;
        v23 = a2[1];
        sub_1DCBF4C98(v24);
        *a1 = v24;
        a1[1] = v23;
        goto LABEL_41;
      case 6u:
        v25 = *a2;
        v26 = *a2;
        *a1 = v25;
        *(a1 + 8) = *(a2 + 8);
LABEL_41:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v14 = *(v6 + 64);

        return memcpy(a1, a2, v14);
    }
  }

  return a1;
}

_BYTE *sub_1DCFBEAD8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse();
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_26;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse();
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_26;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse();
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v63 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v62 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v61 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v62;
            memcpy(&v62[v61], &v19[v61], *(*(v41 - 8) + 64));
          }

          else
          {
            v60 = v40;
            (*(*(v40 - 8) + 32))(&v62[v61], &v19[v61], v40);
            v42 = v62;
            __swift_storeEnumTagSinglePayload(&v62[v61], 0, 1, v60);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v63 + 28)] = *&v10[*(v63 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    v58 = *(a3 + 16);
    v57 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
    *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

_BYTE *sub_1DCFBF2CC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for Input(0);
    v9 = v8[5];
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_27;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v24 + 48)] = *&v11[*(v24 + 48)];
        goto LABEL_27;
      case 4u:
        v26 = sub_1DD0DB1EC();
        (*(*(v26 - 8) + 32))(v10, v11, v26);
        goto LABEL_27;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v10, v11, v27);
        v28 = type metadata accessor for USOParse();
        v29 = v28[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v29], &v11[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 32))(&v10[v29], &v11[v29], v30);
          __swift_storeEnumTagSinglePayload(&v10[v29], 0, 1, v30);
        }

        *&v10[v28[6]] = *&v11[v28[6]];
        v44 = v28[7];
        v45 = &v10[v44];
        v46 = &v11[v44];
        v45[4] = v46[4];
        *v45 = *v46;
        goto LABEL_27;
      case 7u:
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v10, v11, v32);
        v33 = type metadata accessor for USOParse();
        v34 = v33[5];
        v35 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v35))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v34], &v11[v34], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(*(v35 - 8) + 32))(&v10[v34], &v11[v34], v35);
          __swift_storeEnumTagSinglePayload(&v10[v34], 0, 1, v35);
        }

        *&v10[v33[6]] = *&v11[v33[6]];
        v47 = v33[7];
        v48 = &v10[v47];
        v49 = &v11[v47];
        v48[4] = v49[4];
        *v48 = *v49;
        v50 = type metadata accessor for LinkParse();
        *&v10[v50[5]] = *&v11[v50[5]];
        *&v10[v50[6]] = *&v11[v50[6]];
        *&v10[v50[7]] = *&v11[v50[7]];
        goto LABEL_27;
      case 8u:
        v16 = sub_1DD0DD12C();
        (*(*(v16 - 8) + 32))(v10, v11, v16);
        v17 = type metadata accessor for NLRouterParse();
        *&v10[*(v17 + 20)] = *&v11[*(v17 + 20)];
        v64 = v17;
        v18 = *(v17 + 24);
        v19 = &v10[v18];
        v20 = &v11[v18];
        v21 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v20, 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v19, v20, *(*(v22 - 8) + 64));
        }

        else
        {
          v37 = sub_1DD0DB4BC();
          v63 = v19;
          (*(*(v37 - 8) + 32))(v19, v20, v37);
          v38 = v21[5];
          v39 = sub_1DD0DB3EC();
          v62 = v38;
          v40 = &v20[v38];
          v41 = v39;
          if (__swift_getEnumTagSinglePayload(v40, 1, v39))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v43 = v63;
            memcpy(&v63[v62], &v20[v62], *(*(v42 - 8) + 64));
          }

          else
          {
            v61 = v41;
            (*(*(v41 - 8) + 32))(&v63[v62], &v20[v62], v41);
            v43 = v63;
            __swift_storeEnumTagSinglePayload(&v63[v62], 0, 1, v61);
          }

          *(v43 + v21[6]) = *&v20[v21[6]];
          v51 = v21[7];
          v52 = v43 + v51;
          v53 = &v20[v51];
          *(v52 + 4) = v53[4];
          *v52 = *v53;
          __swift_storeEnumTagSinglePayload(v43, 0, 1, v21);
        }

        *&v10[*(v64 + 28)] = *&v11[*(v64 + 28)];
        goto LABEL_27;
      case 9u:
        v25 = sub_1DD0DD08C();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }

    *&a1[v8[6]] = *&a2[v8[6]];
    v54 = v8[7];
    v55 = &a1[v54];
    v56 = &a2[v54];
    v57 = *(v56 + 1);
    *v55 = *v56;
    *(v55 + 1) = v57;
    *(v55 + 4) = *(v56 + 4);
    a1[v8[8]] = a2[v8[8]];
    v59 = *(a3 + 16);
    v58 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
    *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}

void sub_1DCFBFB14(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCFBFB8C()
{
  v1 = *v0;
  sub_1DCFB5BF4();
  return v2 & 1;
}

uint64_t sub_1DCFBFBD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCFB613C(a1);
}

uint64_t sub_1DCFBFC98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1DCFBFCFC()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = *(type metadata accessor for Input(v2) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DCFB7080(v0, v1 + v4, v9, v10, v1 + v8, v11);
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCFBFEB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  return sub_1DCFB77A4();
}

uint64_t sub_1DCFBFF48()
{
  v1 = OUTLINED_FUNCTION_70();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DCFBFF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroy_68Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1DCFC0078()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCFBB228();
}

uint64_t objectdestroy_74Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  v4 = *(v1 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

void sub_1DCFC0170()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCFBB228();
}

uint64_t objectdestroy_56Tm_0(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[4];

  a1(v1[5]);
  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t objectdestroy_59Tm(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[3]);
  v4 = v1[5];

  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t sub_1DCFC0268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = type metadata accessor for Parse(319);
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_1DD0DD2DC();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

unint64_t *sub_1DCFC036C(unint64_t *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v13 = sub_1DD0DD2DC();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
LABEL_74:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          goto LABEL_44;
        case 1u:
          v44 = sub_1DD0DC76C();
          (*(*(v44 - 8) + 16))(a1, a2, v44);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v45 + 48)) = *(a2 + *(v45 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v38 = a2[1];
          *a1 = *a2;
          a1[1] = v38;
          a1[2] = a2[2];

          goto LABEL_44;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_44;
        case 4u:
          v36 = sub_1DD0DB1EC();
          (*(*(v36 - 8) + 16))(a1, a2, v36);
          goto LABEL_44;
        case 5u:
          v46 = *a2;
          *a1 = *a2;
          v47 = v46;
          goto LABEL_44;
        case 6u:
          v48 = sub_1DD0DB4BC();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          v49 = type metadata accessor for USOParse();
          v50 = v49[5];
          v51 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v50, 1, v51))
          {
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v50, a2 + v50, *(*(v52 - 8) + 64));
          }

          else
          {
            (*(*(v51 - 8) + 16))(a1 + v50, a2 + v50, v51);
            __swift_storeEnumTagSinglePayload(a1 + v50, 0, 1, v51);
          }

          v84 = v49[6];
          v85 = (a1 + v84);
          v86 = (a2 + v84);
          v87 = v86[1];
          *v85 = *v86;
          v85[1] = v87;
          v88 = v49[7];
          v89 = a1 + v88;
          v90 = a2 + v88;
          v89[4] = v90[4];
          *v89 = *v90;

          goto LABEL_44;
        case 7u:
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 16))(a1, a2, v39);
          v40 = type metadata accessor for USOParse();
          v41 = v40[5];
          v42 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v41, 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v41, a2 + v41, *(*(v43 - 8) + 64));
          }

          else
          {
            (*(*(v42 - 8) + 16))(a1 + v41, a2 + v41, v42);
            __swift_storeEnumTagSinglePayload(a1 + v41, 0, 1, v42);
          }

          v64 = v40[6];
          v65 = (a1 + v64);
          v66 = (a2 + v64);
          v67 = v66[1];
          *v65 = *v66;
          v65[1] = v67;
          v68 = v40[7];
          v69 = a1 + v68;
          v70 = a2 + v68;
          v69[4] = v70[4];
          *v69 = *v70;
          v71 = type metadata accessor for LinkParse();
          v72 = v71[5];
          v73 = (a1 + v72);
          v74 = (a2 + v72);
          v75 = v74[1];
          *v73 = *v74;
          v73[1] = v75;
          v76 = v71[6];
          v77 = (a1 + v76);
          v78 = (a2 + v76);
          v79 = v78[1];
          *v77 = *v78;
          v77[1] = v79;
          v80 = v71[7];
          v81 = (a1 + v80);
          v82 = (a2 + v80);
          v83 = v82[1];
          *v81 = *v82;
          v81[1] = v83;

          goto LABEL_44;
        case 8u:
          v53 = sub_1DD0DD12C();
          (*(*(v53 - 8) + 16))(a1, a2, v53);
          v54 = type metadata accessor for NLRouterParse();
          v55 = v54[5];
          v56 = (a1 + v55);
          v57 = (a2 + v55);
          v58 = v57[1];
          *v56 = *v57;
          v56[1] = v58;
          v59 = v54[6];
          v60 = a1 + v59;
          v61 = a2 + v59;
          v62 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v61, 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v60, v61, *(*(v63 - 8) + 64));
          }

          else
          {
            v91 = sub_1DD0DB4BC();
            (*(*(v91 - 8) + 16))(v60, v61, v91);
            v92 = v62[5];
            v93 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v61[v92], 1, v93))
            {
              v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v60[v92], &v61[v92], *(*(v94 - 8) + 64));
            }

            else
            {
              (*(*(v93 - 8) + 16))(&v60[v92], &v61[v92], v93);
              __swift_storeEnumTagSinglePayload(&v60[v92], 0, 1, v93);
            }

            v95 = v62[6];
            v96 = &v60[v95];
            v97 = &v61[v95];
            v98 = *(v97 + 1);
            *v96 = *v97;
            *(v96 + 1) = v98;
            v99 = v62[7];
            v100 = &v60[v99];
            v101 = &v61[v99];
            v100[4] = v101[4];
            *v100 = *v101;

            __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
          }

          v102 = v54[7];
          v103 = *(a2 + v102);
          *(a1 + v102) = v103;
          v104 = v103;
          goto LABEL_44;
        case 9u:
          v37 = sub_1DD0DD08C();
          (*(*(v37 - 8) + 16))(a1, a2, v37);
LABEL_44:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v11 - 8) + 64));
          break;
      }

      goto LABEL_74;
    case 0:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
      v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 1u:
          v25 = sub_1DD0DB04C();
          (*(*(v25 - 8) + 16))(a1, a2, v25);
          v26 = type metadata accessor for Input(0);
          v27 = v26[5];
          v28 = a1 + v27;
          v29 = a2 + v27;
          v30 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v31 = sub_1DD0DC76C();
              (*(*(v31 - 8) + 16))(v28, v29, v31);
              goto LABEL_68;
            case 1u:
              v111 = sub_1DD0DC76C();
              (*(*(v111 - 8) + 16))(v28, v29, v111);
              v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v28[*(v112 + 48)] = *&v29[*(v112 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              v107 = *(v29 + 1);
              *v28 = *v29;
              *(v28 + 1) = v107;
              *(v28 + 2) = *(v29 + 2);

              goto LABEL_68;
            case 3u:
              *v28 = *v29;
              swift_unknownObjectRetain();
              goto LABEL_68;
            case 4u:
              v105 = sub_1DD0DB1EC();
              (*(*(v105 - 8) + 16))(v28, v29, v105);
              goto LABEL_68;
            case 5u:
              v113 = *v29;
              *v28 = *v29;
              v114 = v113;
              goto LABEL_68;
            case 6u:
              v115 = sub_1DD0DB4BC();
              (*(*(v115 - 8) + 16))(v28, v29, v115);
              v186 = type metadata accessor for USOParse();
              v116 = v186[5];
              v182 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v29[v116], 1, v182))
              {
                v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v28[v116], &v29[v116], *(*(v117 - 8) + 64));
              }

              else
              {
                (*(*(v182 - 8) + 16))(&v28[v116], &v29[v116]);
                __swift_storeEnumTagSinglePayload(&v28[v116], 0, 1, v182);
              }

              v147 = v186[6];
              v148 = &v28[v147];
              v149 = &v29[v147];
              v150 = *(v149 + 1);
              *v148 = *v149;
              *(v148 + 1) = v150;
              v151 = v186[7];
              v152 = &v28[v151];
              v153 = &v29[v151];
              v152[4] = v153[4];
              *v152 = *v153;

              goto LABEL_68;
            case 7u:
              v108 = sub_1DD0DB4BC();
              (*(*(v108 - 8) + 16))(v28, v29, v108);
              v185 = type metadata accessor for USOParse();
              v109 = v185[5];
              v181 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v29[v109], 1, v181))
              {
                v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v28[v109], &v29[v109], *(*(v110 - 8) + 64));
              }

              else
              {
                (*(*(v181 - 8) + 16))(&v28[v109], &v29[v109]);
                __swift_storeEnumTagSinglePayload(&v28[v109], 0, 1, v181);
              }

              v129 = v185[6];
              v130 = &v28[v129];
              v131 = &v29[v129];
              v184 = *(v131 + 1);
              *v130 = *v131;
              *(v130 + 1) = v184;
              v132 = v185[7];
              v133 = &v28[v132];
              v134 = &v29[v132];
              v133[4] = v134[4];
              *v133 = *v134;
              v135 = type metadata accessor for LinkParse();
              v136 = v135[5];
              v137 = &v28[v136];
              v138 = &v29[v136];
              v188 = *(v138 + 1);
              *v137 = *v138;
              *(v137 + 1) = v188;
              v139 = v135[6];
              v140 = &v28[v139];
              v141 = &v29[v139];
              v142 = *(v141 + 1);
              *v140 = *v141;
              *(v140 + 1) = v142;
              v143 = v135[7];
              v144 = &v28[v143];
              v145 = &v29[v143];
              v146 = *(v145 + 1);
              *v144 = *v145;
              *(v144 + 1) = v146;

              goto LABEL_68;
            case 8u:
              v118 = sub_1DD0DD12C();
              (*(*(v118 - 8) + 16))(v28, v29, v118);
              v119 = type metadata accessor for NLRouterParse();
              v120 = *(v119 + 20);
              v121 = &v28[v120];
              v122 = &v29[v120];
              v123 = *(v122 + 1);
              *v121 = *v122;
              *(v121 + 1) = v123;
              v179 = v28;
              v180 = v119;
              v124 = *(v119 + 24);
              v187 = &v28[v124];
              v125 = &v29[v124];
              v126 = type metadata accessor for USOParse();

              v183 = v125;
              if (__swift_getEnumTagSinglePayload(v125, 1, v126))
              {
                v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(v187, v125, *(*(v127 - 8) + 64));
                v128 = v179;
              }

              else
              {
                v154 = sub_1DD0DB4BC();
                (*(*(v154 - 8) + 16))(v187, v125, v154);
                v178 = v126;
                v155 = *(v126 + 20);
                v156 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v183[v155], 1, v156))
                {
                  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v187[v155], &v183[v155], *(*(v157 - 8) + 64));
                }

                else
                {
                  (*(*(v156 - 8) + 16))(&v187[v155], &v183[v155], v156);
                  __swift_storeEnumTagSinglePayload(&v187[v155], 0, 1, v156);
                }

                v128 = v179;
                v158 = *(v178 + 24);
                v159 = &v187[v158];
                v160 = &v183[v158];
                v161 = *(v160 + 1);
                *v159 = *v160;
                *(v159 + 1) = v161;
                v162 = *(v178 + 28);
                v163 = &v187[v162];
                v164 = &v183[v162];
                v163[4] = v164[4];
                *v163 = *v164;

                __swift_storeEnumTagSinglePayload(v187, 0, 1, v178);
              }

              v165 = *(v180 + 28);
              v166 = *&v29[v165];
              *(v128 + v165) = v166;
              v167 = v166;
              goto LABEL_68;
            case 9u:
              v106 = sub_1DD0DD08C();
              (*(*(v106 - 8) + 16))(v28, v29, v106);
LABEL_68:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v28, v29, *(*(v30 - 8) + 64));
              break;
          }

          *(a1 + v26[6]) = *(a2 + v26[6]);
          v168 = v26[7];
          v169 = a1 + v168;
          v170 = a2 + v168;
          v171 = *(a2 + v168 + 24);

          if (v171)
          {
            v172 = *(v170 + 4);
            *(v169 + 3) = v171;
            *(v169 + 4) = v172;
            (**(v171 - 8))(v169, v170, v171);
          }

          else
          {
            v173 = *(v170 + 1);
            *v169 = *v170;
            *(v169 + 1) = v173;
            *(v169 + 4) = *(v170 + 4);
          }

          *(a1 + v26[8]) = *(a2 + v26[8]);
          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v175 = *(TupleTypeMetadata3 + 48);
          v176 = *(a2 + v175);
          *(a1 + v175) = v176;
          *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
          v177 = v176;
          sub_1DD0DCF8C();
        case 2u:
          v19 = *(a2 + 3);
          *(a1 + 3) = v19;
          (**(v19 - 8))(a1, a2);
          v20 = a2[5];
          v21 = a2[6];
          a1[5] = v20;
          a1[6] = v21;
          v22 = v20;
          sub_1DD0DCF8C();
        case 3u:
          v23 = *a2;
          *a1 = *a2;
          v24 = v23;
          goto LABEL_73;
        case 4u:
          v16 = a2[1];
          *a1 = *a2;
          a1[1] = v16;
          v17 = *(a2 + 5);
          *(a1 + 5) = v17;
          v18 = **(v17 - 8);
          sub_1DD0DCF8C();
        case 5u:
          v33 = *a2;
          v32 = a2[1];
          sub_1DCBF4C98(v33);
          *a1 = v33;
          a1[1] = v32;
          goto LABEL_73;
        case 6u:
          v34 = *a2;
          v35 = *a2;
          *a1 = v34;
          *(a1 + 8) = *(a2 + 8);
LABEL_73:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          break;
      }

      goto LABEL_74;
  }

  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}

void sub_1DCFC162C(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8 = sub_1DD0DD2DC();
LABEL_9:
      v9 = *(*(v8 - 8) + 8);

      v9(a1, v8);
      break;
    case 1:
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v8 = sub_1DD0DC76C();
          goto LABEL_9;
        case 1u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 8))(a1, v31);
          v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48);
LABEL_73:
          v79 = *(a1 + v32);
LABEL_74:

          return;
        case 2u:
          v19 = *(a1 + 8);

          v20 = *(a1 + 16);
          goto LABEL_38;
        case 3u:
          v21 = *a1;

          swift_unknownObjectRelease();
          return;
        case 4u:
          v8 = sub_1DD0DB1EC();
          goto LABEL_9;
        case 5u:
LABEL_12:
          v10 = *a1;
          goto LABEL_46;
        case 6u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 8))(a1, v33);
          v34 = type metadata accessor for USOParse();
          v35 = *(v34 + 20);
          v36 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v35, 1, v36))
          {
            (*(*(v36 - 8) + 8))(a1 + v35, v36);
          }

          v30 = *(v34 + 24);
          goto LABEL_37;
        case 7u:
          v22 = sub_1DD0DB4BC();
          (*(*(v22 - 8) + 8))(a1, v22);
          v23 = type metadata accessor for USOParse();
          v24 = *(v23 + 20);
          v25 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v24, 1, v25))
          {
            (*(*(v25 - 8) + 8))(a1 + v24, v25);
          }

          v26 = *(a1 + *(v23 + 24) + 8);

          v27 = type metadata accessor for LinkParse();
          v28 = *(a1 + v27[5] + 8);

          v29 = *(a1 + v27[6] + 8);

          v30 = v27[7];
LABEL_37:
          v37 = *(a1 + v30 + 8);
LABEL_38:

          break;
        case 8u:
          v38 = sub_1DD0DD12C();
          (*(*(v38 - 8) + 8))(a1, v38);
          v39 = type metadata accessor for NLRouterParse();
          v40 = *(a1 + v39[5] + 8);

          v41 = a1 + v39[6];
          v42 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = sub_1DD0DB4BC();
            (*(*(v43 - 8) + 8))(v41, v43);
            v44 = *(v42 + 20);
            v45 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v41 + v44, 1, v45))
            {
              (*(*(v45 - 8) + 8))(v41 + v44, v45);
            }

            v46 = *(v41 + *(v42 + 24) + 8);
          }

          v10 = *(a1 + v39[7]);
LABEL_46:

LABEL_23:

          break;
        case 9u:
          v8 = sub_1DD0DD08C();
          goto LABEL_9;
        default:
          return;
      }

      break;
    case 0:
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v7 = *a1;
          goto LABEL_74;
        case 1u:
          v12 = sub_1DD0DB04C();
          (*(*(v12 - 8) + 8))(a1, v12);
          v13 = type metadata accessor for Input(0);
          v14 = (a1 + v13[5]);
          type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v15 = sub_1DD0DC76C();
              goto LABEL_51;
            case 1u:
              v59 = sub_1DD0DC76C();
              (*(*(v59 - 8) + 8))(v14, v59);
              v60 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

              break;
            case 2u:
              v47 = *(v14 + 1);

              v48 = *(v14 + 2);
              goto LABEL_63;
            case 3u:
              v49 = *v14;
              swift_unknownObjectRelease();
              break;
            case 4u:
              v15 = sub_1DD0DB1EC();
              goto LABEL_51;
            case 5u:
              v61 = *v14;
              goto LABEL_69;
            case 6u:
              v62 = sub_1DD0DB4BC();
              (*(*(v62 - 8) + 8))(v14, v62);
              v63 = type metadata accessor for USOParse();
              v64 = *(v63 + 20);
              v65 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(&v14[v64], 1, v65))
              {
                (*(*(v65 - 8) + 8))(&v14[v64], v65);
              }

              v58 = *(v63 + 24);
              goto LABEL_62;
            case 7u:
              v50 = sub_1DD0DB4BC();
              (*(*(v50 - 8) + 8))(v14, v50);
              v51 = type metadata accessor for USOParse();
              v52 = *(v51 + 20);
              v53 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(&v14[v52], 1, v53))
              {
                (*(*(v53 - 8) + 8))(&v14[v52], v53);
              }

              v54 = *&v14[*(v51 + 24) + 8];

              v55 = type metadata accessor for LinkParse();
              v56 = *&v14[v55[5] + 8];

              v57 = *&v14[v55[6] + 8];

              v58 = v55[7];
LABEL_62:
              v66 = *&v14[v58 + 8];
LABEL_63:

              break;
            case 8u:
              v67 = sub_1DD0DD12C();
              (*(*(v67 - 8) + 8))(v14, v67);
              v68 = type metadata accessor for NLRouterParse();
              v69 = *&v14[v68[5] + 8];

              v70 = &v14[v68[6]];
              v71 = type metadata accessor for USOParse();
              if (!__swift_getEnumTagSinglePayload(v70, 1, v71))
              {
                v72 = sub_1DD0DB4BC();
                (*(*(v72 - 8) + 8))(v70, v72);
                v73 = *(v71 + 20);
                v74 = sub_1DD0DB3EC();
                if (!__swift_getEnumTagSinglePayload(v70 + v73, 1, v74))
                {
                  (*(*(v74 - 8) + 8))(v70 + v73, v74);
                }

                v75 = *(v70 + *(v71 + 24) + 8);
              }

              v61 = *&v14[v68[7]];
LABEL_69:

              break;
            case 9u:
              v15 = sub_1DD0DD08C();
LABEL_51:
              (*(*(v15 - 8) + 8))(v14, v15);
              break;
            default:
              break;
          }

          v76 = *(a1 + v13[6]);

          v77 = (a1 + v13[7]);
          if (v77[3])
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v77);
          }

          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();

          v32 = *(TupleTypeMetadata3 + 64);
          goto LABEL_73;
        case 2u:
          __swift_destroy_boxed_opaque_existential_1Tm(a1);

          v16 = *(a1 + 48);
          goto LABEL_74;
        case 3u:
          goto LABEL_12;
        case 4u:
          v11 = *a1;

          __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
          break;
        case 5u:
          v17 = *a1;
          v18 = *(a1 + 8);

          sub_1DCC2315C(v17, v18);
          break;
        case 6u:
          v10 = *a1;

          goto LABEL_23;
        default:
          return;
      }

      break;
  }
}

unint64_t *sub_1DCFC208C(unint64_t *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v12 = sub_1DD0DD2DC();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
LABEL_72:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v10 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v11 = sub_1DD0DC76C();
          (*(*(v11 - 8) + 16))(a1, a2, v11);
          goto LABEL_42;
        case 1u:
          v43 = sub_1DD0DC76C();
          (*(*(v43 - 8) + 16))(a1, a2, v43);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v44 + 48)) = *(a2 + *(v44 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v37 = a2[1];
          *a1 = *a2;
          a1[1] = v37;
          a1[2] = a2[2];

          goto LABEL_42;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_42;
        case 4u:
          v35 = sub_1DD0DB1EC();
          (*(*(v35 - 8) + 16))(a1, a2, v35);
          goto LABEL_42;
        case 5u:
          v45 = *a2;
          *a1 = *a2;
          v46 = v45;
          goto LABEL_42;
        case 6u:
          v47 = sub_1DD0DB4BC();
          (*(*(v47 - 8) + 16))(a1, a2, v47);
          v48 = type metadata accessor for USOParse();
          v49 = v48[5];
          v50 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v49, a2 + v49, *(*(v51 - 8) + 64));
          }

          else
          {
            (*(*(v50 - 8) + 16))(a1 + v49, a2 + v49, v50);
            __swift_storeEnumTagSinglePayload(a1 + v49, 0, 1, v50);
          }

          v83 = v48[6];
          v84 = (a1 + v83);
          v85 = (a2 + v83);
          v86 = v85[1];
          *v84 = *v85;
          v84[1] = v86;
          v87 = v48[7];
          v88 = a1 + v87;
          v89 = a2 + v87;
          v88[4] = v89[4];
          *v88 = *v89;

          goto LABEL_42;
        case 7u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(a1, a2, v38);
          v39 = type metadata accessor for USOParse();
          v40 = v39[5];
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v40, 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v40, a2 + v40, *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 16))(a1 + v40, a2 + v40, v41);
            __swift_storeEnumTagSinglePayload(a1 + v40, 0, 1, v41);
          }

          v63 = v39[6];
          v64 = (a1 + v63);
          v65 = (a2 + v63);
          v66 = v65[1];
          *v64 = *v65;
          v64[1] = v66;
          v67 = v39[7];
          v68 = a1 + v67;
          v69 = a2 + v67;
          v68[4] = v69[4];
          *v68 = *v69;
          v70 = type metadata accessor for LinkParse();
          v71 = v70[5];
          v72 = (a1 + v71);
          v73 = (a2 + v71);
          v74 = v73[1];
          *v72 = *v73;
          v72[1] = v74;
          v75 = v70[6];
          v76 = (a1 + v75);
          v77 = (a2 + v75);
          v78 = v77[1];
          *v76 = *v77;
          v76[1] = v78;
          v79 = v70[7];
          v80 = (a1 + v79);
          v81 = (a2 + v79);
          v82 = v81[1];
          *v80 = *v81;
          v80[1] = v82;

          goto LABEL_42;
        case 8u:
          v52 = sub_1DD0DD12C();
          (*(*(v52 - 8) + 16))(a1, a2, v52);
          v53 = type metadata accessor for NLRouterParse();
          v54 = v53[5];
          v55 = (a1 + v54);
          v56 = (a2 + v54);
          v57 = v56[1];
          *v55 = *v56;
          v55[1] = v57;
          v58 = v53[6];
          v59 = a1 + v58;
          v60 = a2 + v58;
          v61 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v60, 1, v61))
          {
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v59, v60, *(*(v62 - 8) + 64));
          }

          else
          {
            v90 = sub_1DD0DB4BC();
            (*(*(v90 - 8) + 16))(v59, v60, v90);
            v91 = v61[5];
            v92 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v60[v91], 1, v92))
            {
              v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v59[v91], &v60[v91], *(*(v93 - 8) + 64));
            }

            else
            {
              (*(*(v92 - 8) + 16))(&v59[v91], &v60[v91], v92);
              __swift_storeEnumTagSinglePayload(&v59[v91], 0, 1, v92);
            }

            v94 = v61[6];
            v95 = &v59[v94];
            v96 = &v60[v94];
            v97 = *(v96 + 1);
            *v95 = *v96;
            *(v95 + 1) = v97;
            v98 = v61[7];
            v99 = &v59[v98];
            v100 = &v60[v98];
            v99[4] = v100[4];
            *v99 = *v100;

            __swift_storeEnumTagSinglePayload(v59, 0, 1, v61);
          }

          v101 = v53[7];
          v102 = *(a2 + v101);
          *(a1 + v101) = v102;
          v103 = v102;
          goto LABEL_42;
        case 9u:
          v36 = sub_1DD0DD08C();
          (*(*(v36 - 8) + 16))(a1, a2, v36);
LABEL_42:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          break;
      }

      goto LABEL_72;
    case 0:
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
      v9 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 1u:
          v24 = sub_1DD0DB04C();
          (*(*(v24 - 8) + 16))(a1, a2, v24);
          v25 = type metadata accessor for Input(0);
          v26 = v25[5];
          v27 = a1 + v26;
          v28 = a2 + v26;
          v29 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v30 = sub_1DD0DC76C();
              (*(*(v30 - 8) + 16))(v27, v28, v30);
              goto LABEL_66;
            case 1u:
              v110 = sub_1DD0DC76C();
              (*(*(v110 - 8) + 16))(v27, v28, v110);
              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v27[*(v111 + 48)] = *&v28[*(v111 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              v106 = *(v28 + 1);
              *v27 = *v28;
              *(v27 + 1) = v106;
              *(v27 + 2) = *(v28 + 2);

              goto LABEL_66;
            case 3u:
              *v27 = *v28;
              swift_unknownObjectRetain();
              goto LABEL_66;
            case 4u:
              v104 = sub_1DD0DB1EC();
              (*(*(v104 - 8) + 16))(v27, v28, v104);
              goto LABEL_66;
            case 5u:
              v112 = *v28;
              *v27 = *v28;
              v113 = v112;
              goto LABEL_66;
            case 6u:
              v114 = sub_1DD0DB4BC();
              (*(*(v114 - 8) + 16))(v27, v28, v114);
              v185 = type metadata accessor for USOParse();
              v115 = v185[5];
              v181 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v28[v115], 1, v181))
              {
                v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v27[v115], &v28[v115], *(*(v116 - 8) + 64));
              }

              else
              {
                (*(*(v181 - 8) + 16))(&v27[v115], &v28[v115]);
                __swift_storeEnumTagSinglePayload(&v27[v115], 0, 1, v181);
              }

              v146 = v185[6];
              v147 = &v27[v146];
              v148 = &v28[v146];
              v149 = *(v148 + 1);
              *v147 = *v148;
              *(v147 + 1) = v149;
              v150 = v185[7];
              v151 = &v27[v150];
              v152 = &v28[v150];
              v151[4] = v152[4];
              *v151 = *v152;

              goto LABEL_66;
            case 7u:
              v107 = sub_1DD0DB4BC();
              (*(*(v107 - 8) + 16))(v27, v28, v107);
              v184 = type metadata accessor for USOParse();
              v108 = v184[5];
              v180 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v28[v108], 1, v180))
              {
                v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v27[v108], &v28[v108], *(*(v109 - 8) + 64));
              }

              else
              {
                (*(*(v180 - 8) + 16))(&v27[v108], &v28[v108]);
                __swift_storeEnumTagSinglePayload(&v27[v108], 0, 1, v180);
              }

              v128 = v184[6];
              v129 = &v27[v128];
              v130 = &v28[v128];
              v183 = *(v130 + 1);
              *v129 = *v130;
              *(v129 + 1) = v183;
              v131 = v184[7];
              v132 = &v27[v131];
              v133 = &v28[v131];
              v132[4] = v133[4];
              *v132 = *v133;
              v134 = type metadata accessor for LinkParse();
              v135 = v134[5];
              v136 = &v27[v135];
              v137 = &v28[v135];
              v187 = *(v137 + 1);
              *v136 = *v137;
              *(v136 + 1) = v187;
              v138 = v134[6];
              v139 = &v27[v138];
              v140 = &v28[v138];
              v141 = *(v140 + 1);
              *v139 = *v140;
              *(v139 + 1) = v141;
              v142 = v134[7];
              v143 = &v27[v142];
              v144 = &v28[v142];
              v145 = *(v144 + 1);
              *v143 = *v144;
              *(v143 + 1) = v145;

              goto LABEL_66;
            case 8u:
              v117 = sub_1DD0DD12C();
              (*(*(v117 - 8) + 16))(v27, v28, v117);
              v118 = type metadata accessor for NLRouterParse();
              v119 = *(v118 + 20);
              v120 = &v27[v119];
              v121 = &v28[v119];
              v122 = *(v121 + 1);
              *v120 = *v121;
              *(v120 + 1) = v122;
              v178 = v27;
              v179 = v118;
              v123 = *(v118 + 24);
              v186 = &v27[v123];
              v124 = &v28[v123];
              v125 = type metadata accessor for USOParse();

              v182 = v124;
              if (__swift_getEnumTagSinglePayload(v124, 1, v125))
              {
                v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(v186, v124, *(*(v126 - 8) + 64));
                v127 = v178;
              }

              else
              {
                v153 = sub_1DD0DB4BC();
                (*(*(v153 - 8) + 16))(v186, v124, v153);
                v177 = v125;
                v154 = *(v125 + 20);
                v155 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v182[v154], 1, v155))
                {
                  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v186[v154], &v182[v154], *(*(v156 - 8) + 64));
                }

                else
                {
                  (*(*(v155 - 8) + 16))(&v186[v154], &v182[v154], v155);
                  __swift_storeEnumTagSinglePayload(&v186[v154], 0, 1, v155);
                }

                v127 = v178;
                v157 = *(v177 + 24);
                v158 = &v186[v157];
                v159 = &v182[v157];
                v160 = *(v159 + 1);
                *v158 = *v159;
                *(v158 + 1) = v160;
                v161 = *(v177 + 28);
                v162 = &v186[v161];
                v163 = &v182[v161];
                v162[4] = v163[4];
                *v162 = *v163;

                __swift_storeEnumTagSinglePayload(v186, 0, 1, v177);
              }

              v164 = *(v179 + 28);
              v165 = *&v28[v164];
              *(v127 + v164) = v165;
              v166 = v165;
              goto LABEL_66;
            case 9u:
              v105 = sub_1DD0DD08C();
              (*(*(v105 - 8) + 16))(v27, v28, v105);
LABEL_66:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v27, v28, *(*(v29 - 8) + 64));
              break;
          }

          *(a1 + v25[6]) = *(a2 + v25[6]);
          v167 = v25[7];
          v168 = a1 + v167;
          v169 = a2 + v167;
          v170 = *(a2 + v167 + 24);

          if (v170)
          {
            v171 = *(v169 + 4);
            *(v168 + 3) = v170;
            *(v168 + 4) = v171;
            (**(v170 - 8))(v168, v169, v170);
          }

          else
          {
            v172 = *(v169 + 1);
            *v168 = *v169;
            *(v168 + 1) = v172;
            *(v168 + 4) = *(v169 + 4);
          }

          *(a1 + v25[8]) = *(a2 + v25[8]);
          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v174 = *(TupleTypeMetadata3 + 48);
          v175 = *(a2 + v174);
          *(a1 + v174) = v175;
          *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
          v176 = v175;
          sub_1DD0DCF8C();
        case 2u:
          v18 = *(a2 + 3);
          *(a1 + 3) = v18;
          (**(v18 - 8))(a1, a2);
          v19 = a2[5];
          v20 = a2[6];
          a1[5] = v19;
          a1[6] = v20;
          v21 = v19;
          sub_1DD0DCF8C();
        case 3u:
          v22 = *a2;
          *a1 = *a2;
          v23 = v22;
          goto LABEL_71;
        case 4u:
          v15 = a2[1];
          *a1 = *a2;
          a1[1] = v15;
          v16 = *(a2 + 5);
          *(a1 + 5) = v16;
          v17 = **(v16 - 8);
          sub_1DD0DCF8C();
        case 5u:
          v32 = *a2;
          v31 = a2[1];
          sub_1DCBF4C98(v32);
          *a1 = v32;
          a1[1] = v31;
          goto LABEL_71;
        case 6u:
          v33 = *a2;
          v34 = *a2;
          *a1 = v33;
          *(a1 + 8) = *(a2 + 8);
LABEL_71:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          break;
      }

      goto LABEL_72;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

unint64_t *sub_1DCFC330C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v13 = sub_1DD0DD2DC();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
LABEL_73:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          goto LABEL_43;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(a1, a2, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v42 + 48)) = *(a2 + *(v42 + 48));
          sub_1DD0DCF8C();
        case 2u:
          *a1 = *a2;
          a1[1] = a2[1];
          a1[2] = a2[2];

          goto LABEL_43;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_43;
        case 4u:
          v34 = sub_1DD0DB1EC();
          (*(*(v34 - 8) + 16))(a1, a2, v34);
          goto LABEL_43;
        case 5u:
          v43 = *a2;
          *a1 = *a2;
          v44 = v43;
          goto LABEL_43;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(a1, a2, v45);
          v46 = type metadata accessor for USOParse();
          v47 = v46[5];
          v48 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v47, 1, v48))
          {
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v47, a2 + v47, *(*(v49 - 8) + 64));
          }

          else
          {
            (*(*(v48 - 8) + 16))(a1 + v47, a2 + v47, v48);
            __swift_storeEnumTagSinglePayload(a1 + v47, 0, 1, v48);
          }

          v77 = v46[6];
          v78 = (a1 + v77);
          v79 = (a2 + v77);
          *v78 = *v79;
          v78[1] = v79[1];
          v80 = v46[7];
          v81 = a1 + v80;
          v82 = a2 + v80;
          v83 = *v82;
          v81[4] = v82[4];
          *v81 = v83;

          goto LABEL_43;
        case 7u:
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 16))(a1, a2, v36);
          v37 = type metadata accessor for USOParse();
          v38 = v37[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v38, 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v38, a2 + v38, *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
            __swift_storeEnumTagSinglePayload(a1 + v38, 0, 1, v39);
          }

          v60 = v37[6];
          v61 = (a1 + v60);
          v62 = (a2 + v60);
          *v61 = *v62;
          v61[1] = v62[1];
          v63 = v37[7];
          v64 = a1 + v63;
          v65 = a2 + v63;
          v66 = *v65;
          v64[4] = v65[4];
          *v64 = v66;
          v67 = type metadata accessor for LinkParse();
          v68 = v67[5];
          v69 = (a1 + v68);
          v70 = (a2 + v68);
          *v69 = *v70;
          v69[1] = v70[1];
          v71 = v67[6];
          v72 = (a1 + v71);
          v73 = (a2 + v71);
          *v72 = *v73;
          v72[1] = v73[1];
          v74 = v67[7];
          v75 = (a1 + v74);
          v76 = (a2 + v74);
          *v75 = *v76;
          v75[1] = v76[1];

          goto LABEL_43;
        case 8u:
          v50 = sub_1DD0DD12C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          v51 = type metadata accessor for NLRouterParse();
          v52 = v51[5];
          v53 = (a1 + v52);
          v54 = (a2 + v52);
          *v53 = *v54;
          v53[1] = v54[1];
          v55 = v51[6];
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v57, 1, v58))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v56, v57, *(*(v59 - 8) + 64));
          }

          else
          {
            v84 = sub_1DD0DB4BC();
            (*(*(v84 - 8) + 16))(v56, v57, v84);
            v85 = v58[5];
            v86 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v57[v85], 1, v86))
            {
              v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v56[v85], &v57[v85], *(*(v87 - 8) + 64));
            }

            else
            {
              (*(*(v86 - 8) + 16))(&v56[v85], &v57[v85], v86);
              __swift_storeEnumTagSinglePayload(&v56[v85], 0, 1, v86);
            }

            v88 = v58[6];
            v89 = &v56[v88];
            v90 = &v57[v88];
            *v89 = *v90;
            *(v89 + 1) = *(v90 + 1);
            v91 = v58[7];
            v92 = &v56[v91];
            v93 = &v57[v91];
            v94 = *v93;
            v92[4] = v93[4];
            *v92 = v94;

            __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
          }

          v95 = v51[7];
          v96 = *(a2 + v95);
          *(a1 + v95) = v96;
          v97 = v96;
          goto LABEL_43;
        case 9u:
          v35 = sub_1DD0DD08C();
          (*(*(v35 - 8) + 16))(a1, a2, v35);
LABEL_43:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v11 - 8) + 64));
          break;
      }

      goto LABEL_73;
    case 0:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
      v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 1u:
          v23 = sub_1DD0DB04C();
          (*(*(v23 - 8) + 16))(a1, a2, v23);
          v24 = type metadata accessor for Input(0);
          v25 = v24[5];
          v26 = a1 + v25;
          v27 = a2 + v25;
          v28 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v29 = sub_1DD0DC76C();
              (*(*(v29 - 8) + 16))(v26, v27, v29);
              goto LABEL_67;
            case 1u:
              v103 = sub_1DD0DC76C();
              (*(*(v103 - 8) + 16))(v26, v27, v103);
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v26[*(v104 + 48)] = *&v27[*(v104 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v26 = *v27;
              *(v26 + 1) = *(v27 + 1);
              *(v26 + 2) = *(v27 + 2);

              goto LABEL_67;
            case 3u:
              *v26 = *v27;
              swift_unknownObjectRetain();
              goto LABEL_67;
            case 4u:
              v98 = sub_1DD0DB1EC();
              (*(*(v98 - 8) + 16))(v26, v27, v98);
              goto LABEL_67;
            case 5u:
              v105 = *v27;
              *v26 = *v27;
              v106 = v105;
              goto LABEL_67;
            case 6u:
              v107 = sub_1DD0DB4BC();
              (*(*(v107 - 8) + 16))(v26, v27, v107);
              v175 = type metadata accessor for USOParse();
              v108 = v175[5];
              v172 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v27[v108], 1, v172))
              {
                v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v26[v108], &v27[v108], *(*(v109 - 8) + 64));
              }

              else
              {
                (*(*(v172 - 8) + 16))(&v26[v108], &v27[v108]);
                __swift_storeEnumTagSinglePayload(&v26[v108], 0, 1, v172);
              }

              v137 = v175[6];
              v138 = &v26[v137];
              v139 = &v27[v137];
              *v138 = *v139;
              *(v138 + 1) = *(v139 + 1);
              v140 = v175[7];
              v141 = &v26[v140];
              v142 = &v27[v140];
              v143 = *v142;
              v141[4] = v142[4];
              *v141 = v143;

              goto LABEL_67;
            case 7u:
              v100 = sub_1DD0DB4BC();
              (*(*(v100 - 8) + 16))(v26, v27, v100);
              v174 = type metadata accessor for USOParse();
              v101 = v174[5];
              v171 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v27[v101], 1, v171))
              {
                v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v26[v101], &v27[v101], *(*(v102 - 8) + 64));
              }

              else
              {
                (*(*(v171 - 8) + 16))(&v26[v101], &v27[v101]);
                __swift_storeEnumTagSinglePayload(&v26[v101], 0, 1, v171);
              }

              v120 = v174[6];
              v121 = &v26[v120];
              v122 = &v27[v120];
              *v121 = *v122;
              *(v121 + 1) = *(v122 + 1);
              v123 = v174[7];
              v124 = &v26[v123];
              v125 = &v27[v123];
              v126 = *v125;
              v124[4] = v125[4];
              *v124 = v126;
              v127 = type metadata accessor for LinkParse();
              v128 = v127[5];
              v129 = &v26[v128];
              v130 = &v27[v128];
              *v129 = *v130;
              *(v129 + 1) = *(v130 + 1);
              v131 = v127[6];
              v132 = &v26[v131];
              v133 = &v27[v131];
              *v132 = *v133;
              *(v132 + 1) = *(v133 + 1);
              v134 = v127[7];
              v135 = &v26[v134];
              v136 = &v27[v134];
              *v135 = *v136;
              *(v135 + 1) = *(v136 + 1);

              goto LABEL_67;
            case 8u:
              v110 = sub_1DD0DD12C();
              (*(*(v110 - 8) + 16))(v26, v27, v110);
              v111 = type metadata accessor for NLRouterParse();
              v112 = *(v111 + 20);
              v113 = &v26[v112];
              v114 = &v27[v112];
              *v113 = *v114;
              *(v113 + 1) = *(v114 + 1);
              v169 = v26;
              v170 = v111;
              v115 = *(v111 + 24);
              v176 = &v26[v115];
              v116 = &v27[v115];
              v117 = type metadata accessor for USOParse();

              v173 = v116;
              if (__swift_getEnumTagSinglePayload(v116, 1, v117))
              {
                v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(v176, v116, *(*(v118 - 8) + 64));
                v119 = v169;
              }

              else
              {
                v144 = sub_1DD0DB4BC();
                (*(*(v144 - 8) + 16))(v176, v116, v144);
                v168 = v117;
                v145 = *(v117 + 20);
                v146 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v173[v145], 1, v146))
                {
                  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v176[v145], &v173[v145], *(*(v147 - 8) + 64));
                }

                else
                {
                  (*(*(v146 - 8) + 16))(&v176[v145], &v173[v145], v146);
                  __swift_storeEnumTagSinglePayload(&v176[v145], 0, 1, v146);
                }

                v119 = v169;
                v148 = *(v168 + 24);
                v149 = &v176[v148];
                v150 = &v173[v148];
                *v149 = *v150;
                *(v149 + 1) = *(v150 + 1);
                v151 = *(v168 + 28);
                v152 = &v176[v151];
                v153 = &v173[v151];
                v154 = *v153;
                v152[4] = v153[4];
                *v152 = v154;

                __swift_storeEnumTagSinglePayload(v176, 0, 1, v168);
              }

              v155 = *(v170 + 28);
              v156 = *&v27[v155];
              *(v119 + v155) = v156;
              v157 = v156;
              goto LABEL_67;
            case 9u:
              v99 = sub_1DD0DD08C();
              (*(*(v99 - 8) + 16))(v26, v27, v99);
LABEL_67:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v26, v27, *(*(v28 - 8) + 64));
              break;
          }

          *(a1 + v24[6]) = *(a2 + v24[6]);
          v158 = v24[7];
          v159 = a1 + v158;
          v160 = a2 + v158;
          v161 = *(a2 + v158 + 24);

          if (v161)
          {
            *(v159 + 3) = v161;
            *(v159 + 4) = *(v160 + 4);
            (**(v161 - 8))(v159, v160, v161);
          }

          else
          {
            v162 = *v160;
            v163 = *(v160 + 1);
            *(v159 + 4) = *(v160 + 4);
            *v159 = v162;
            *(v159 + 1) = v163;
          }

          *(a1 + v24[8]) = *(a2 + v24[8]);
          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v165 = *(TupleTypeMetadata3 + 48);
          v166 = *(a2 + v165);
          *(a1 + v165) = v166;
          *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
          v167 = v166;
          sub_1DD0DCF8C();
        case 2u:
          v18 = a2[3];
          a1[3] = v18;
          a1[4] = a2[4];
          (**(v18 - 8))(a1, a2);
          v19 = a2[5];
          a1[5] = v19;
          a1[6] = a2[6];
          v20 = v19;
          sub_1DD0DCF8C();
        case 3u:
          v21 = *a2;
          *a1 = *a2;
          v22 = v21;
          goto LABEL_72;
        case 4u:
          *a1 = *a2;
          a1[1] = a2[1];
          v16 = a2[5];
          a1[5] = v16;
          a1[6] = a2[6];
          v17 = **(v16 - 8);
          sub_1DD0DCF8C();
        case 5u:
          v31 = *a2;
          v30 = a2[1];
          sub_1DCBF4C98(v31);
          *a1 = v31;
          a1[1] = v30;
          goto LABEL_72;
        case 6u:
          v32 = *a2;
          v33 = *a2;
          *a1 = v32;
          *(a1 + 8) = *(a2 + 8);
LABEL_72:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          break;
      }

      goto LABEL_73;
  }

  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}

char *sub_1DCFC467C(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v19 = sub_1DD0DD2DC();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
LABEL_56:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v17 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v18 = sub_1DD0DC76C();
          (*(*(v18 - 8) + 32))(a1, a2, v18);
          goto LABEL_49;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 32))(a1, a2, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&a1[*(v30 + 48)] = *&a2[*(v30 + 48)];
          goto LABEL_49;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 32))(a1, a2, v32);
          goto LABEL_49;
        case 6u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(a1, a2, v33);
          v34 = type metadata accessor for USOParse();
          v35 = v34[5];
          v36 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v35], 1, v36))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v35], &a2[v35], *(*(v37 - 8) + 64));
          }

          else
          {
            (*(*(v36 - 8) + 32))(&a1[v35], &a2[v35], v36);
            __swift_storeEnumTagSinglePayload(&a1[v35], 0, 1, v36);
          }

          *&a1[v34[6]] = *&a2[v34[6]];
          v65 = v34[7];
          v66 = &a1[v65];
          v67 = &a2[v65];
          v66[4] = v67[4];
          *v66 = *v67;
          goto LABEL_49;
        case 7u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 32))(a1, a2, v38);
          v39 = type metadata accessor for USOParse();
          v40 = v39[5];
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v40], &a2[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&a1[v40], &a2[v40], v41);
            __swift_storeEnumTagSinglePayload(&a1[v40], 0, 1, v41);
          }

          *&a1[v39[6]] = *&a2[v39[6]];
          v68 = v39[7];
          v69 = &a1[v68];
          v70 = &a2[v68];
          v69[4] = v70[4];
          *v69 = *v70;
          v71 = type metadata accessor for LinkParse();
          *&a1[v71[5]] = *&a2[v71[5]];
          *&a1[v71[6]] = *&a2[v71[6]];
          *&a1[v71[7]] = *&a2[v71[7]];
          goto LABEL_49;
        case 8u:
          v22 = sub_1DD0DD12C();
          (*(*(v22 - 8) + 32))(a1, a2, v22);
          v23 = type metadata accessor for NLRouterParse();
          *&a1[v23[5]] = *&a2[v23[5]];
          v24 = v23[6];
          v25 = &a1[v24];
          v26 = &a2[v24];
          v27 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v26, 1, v27))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v25, v26, *(*(v28 - 8) + 64));
          }

          else
          {
            v61 = sub_1DD0DB4BC();
            (*(*(v61 - 8) + 32))(v25, v26, v61);
            v62 = v27[5];
            v63 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v62], 1, v63))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v62], &v26[v62], *(*(v64 - 8) + 64));
            }

            else
            {
              (*(*(v63 - 8) + 32))(&v25[v62], &v26[v62], v63);
              __swift_storeEnumTagSinglePayload(&v25[v62], 0, 1, v63);
            }

            *&v25[v27[6]] = *&v26[v27[6]];
            v83 = v27[7];
            v84 = &v25[v83];
            v85 = &v26[v83];
            v84[4] = v85[4];
            *v84 = *v85;
            __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
          }

          *&a1[v23[7]] = *&a2[v23[7]];
          goto LABEL_49;
        case 9u:
          v31 = sub_1DD0DD08C();
          (*(*(v31 - 8) + 32))(a1, a2, v31);
LABEL_49:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
          break;
      }

      goto LABEL_56;
    case 0:
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
      v9 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_1DD0DB04C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for Input(0);
        v12 = v11[5];
        v13 = &a1[v12];
        v14 = &a2[v12];
        v15 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v16 = sub_1DD0DC76C();
            (*(*(v16 - 8) + 32))(v13, v14, v16);
            goto LABEL_54;
          case 1u:
            v51 = sub_1DD0DC76C();
            (*(*(v51 - 8) + 32))(v13, v14, v51);
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v13[*(v52 + 48)] = *&v14[*(v52 + 48)];
            goto LABEL_54;
          case 4u:
            v54 = sub_1DD0DB1EC();
            (*(*(v54 - 8) + 32))(v13, v14, v54);
            goto LABEL_54;
          case 6u:
            v55 = sub_1DD0DB4BC();
            (*(*(v55 - 8) + 32))(v13, v14, v55);
            v100 = type metadata accessor for USOParse();
            v56 = v100[5];
            v97 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v56], 1, v97))
            {
              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v56], &v14[v56], *(*(v57 - 8) + 64));
            }

            else
            {
              (*(*(v97 - 8) + 32))(&v13[v56], &v14[v56]);
              __swift_storeEnumTagSinglePayload(&v13[v56], 0, 1, v97);
            }

            *&v13[v100[6]] = *&v14[v100[6]];
            v76 = v100[7];
            v77 = &v13[v76];
            v78 = &v14[v76];
            v77[4] = v78[4];
            *v77 = *v78;
            goto LABEL_54;
          case 7u:
            v58 = sub_1DD0DB4BC();
            (*(*(v58 - 8) + 32))(v13, v14, v58);
            v101 = type metadata accessor for USOParse();
            v59 = v101[5];
            v98 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v59], 1, v98))
            {
              v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v59], &v14[v59], *(*(v60 - 8) + 64));
            }

            else
            {
              (*(*(v98 - 8) + 32))(&v13[v59], &v14[v59]);
              __swift_storeEnumTagSinglePayload(&v13[v59], 0, 1, v98);
            }

            *&v13[v101[6]] = *&v14[v101[6]];
            v79 = v101[7];
            v80 = &v13[v79];
            v81 = &v14[v79];
            v80[4] = v81[4];
            *v80 = *v81;
            v82 = type metadata accessor for LinkParse();
            *&v13[v82[5]] = *&v14[v82[5]];
            *&v13[v82[6]] = *&v14[v82[6]];
            *&v13[v82[7]] = *&v14[v82[7]];
            goto LABEL_54;
          case 8u:
            v43 = sub_1DD0DD12C();
            (*(*(v43 - 8) + 32))(v13, v14, v43);
            v44 = type metadata accessor for NLRouterParse();
            *&v13[*(v44 + 20)] = *&v14[*(v44 + 20)];
            v95 = v44;
            v45 = *(v44 + 24);
            v99 = &v13[v45];
            v46 = &v14[v45];
            v47 = type metadata accessor for USOParse();
            v96 = v46;
            v48 = v46;
            v49 = v47;
            if (__swift_getEnumTagSinglePayload(v48, 1, v47))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v99, v96, *(*(v50 - 8) + 64));
            }

            else
            {
              v72 = sub_1DD0DB4BC();
              (*(*(v72 - 8) + 32))(v99, v96, v72);
              v94 = v49;
              v73 = *(v49 + 20);
              v74 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v96[v73], 1, v74))
              {
                v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v99[v73], &v96[v73], *(*(v75 - 8) + 64));
              }

              else
              {
                (*(*(v74 - 8) + 32))(&v99[v73], &v96[v73], v74);
                __swift_storeEnumTagSinglePayload(&v99[v73], 0, 1, v74);
              }

              *&v99[*(v94 + 24)] = *&v96[*(v94 + 24)];
              v86 = *(v94 + 28);
              v87 = &v99[v86];
              v88 = &v96[v86];
              v87[4] = v88[4];
              *v87 = *v88;
              __swift_storeEnumTagSinglePayload(v99, 0, 1, v94);
            }

            *&v13[*(v95 + 28)] = *&v14[*(v95 + 28)];
            goto LABEL_54;
          case 9u:
            v53 = sub_1DD0DD08C();
            (*(*(v53 - 8) + 32))(v13, v14, v53);
LABEL_54:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v13, v14, *(*(v15 - 8) + 64));
            break;
        }

        *&a1[v11[6]] = *&a2[v11[6]];
        v89 = v11[7];
        v90 = &a1[v89];
        v91 = &a2[v89];
        v92 = *(v91 + 1);
        *v90 = *v91;
        *(v90 + 1) = v92;
        *(v90 + 4) = *(v91 + 4);
        a1[v11[8]] = a2[v11[8]];
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
        *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v9 - 8) + 64));
      }

      goto LABEL_56;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

char *sub_1DCFC5578(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v20 = sub_1DD0DD2DC();
      (*(*(v20 - 8) + 32))(a1, a2, v20);
LABEL_57:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v18 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v19 = sub_1DD0DC76C();
          (*(*(v19 - 8) + 32))(a1, a2, v19);
          goto LABEL_50;
        case 1u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 32))(a1, a2, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&a1[*(v31 + 48)] = *&a2[*(v31 + 48)];
          goto LABEL_50;
        case 4u:
          v33 = sub_1DD0DB1EC();
          (*(*(v33 - 8) + 32))(a1, a2, v33);
          goto LABEL_50;
        case 6u:
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 32))(a1, a2, v34);
          v35 = type metadata accessor for USOParse();
          v36 = v35[5];
          v37 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v36], 1, v37))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v36], &a2[v36], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
            __swift_storeEnumTagSinglePayload(&a1[v36], 0, 1, v37);
          }

          *&a1[v35[6]] = *&a2[v35[6]];
          v66 = v35[7];
          v67 = &a1[v66];
          v68 = &a2[v66];
          v67[4] = v68[4];
          *v67 = *v68;
          goto LABEL_50;
        case 7u:
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(a1, a2, v39);
          v40 = type metadata accessor for USOParse();
          v41 = v40[5];
          v42 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v41], 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v41], &a2[v41], *(*(v43 - 8) + 64));
          }

          else
          {
            (*(*(v42 - 8) + 32))(&a1[v41], &a2[v41], v42);
            __swift_storeEnumTagSinglePayload(&a1[v41], 0, 1, v42);
          }

          *&a1[v40[6]] = *&a2[v40[6]];
          v69 = v40[7];
          v70 = &a1[v69];
          v71 = &a2[v69];
          v70[4] = v71[4];
          *v70 = *v71;
          v72 = type metadata accessor for LinkParse();
          *&a1[v72[5]] = *&a2[v72[5]];
          *&a1[v72[6]] = *&a2[v72[6]];
          *&a1[v72[7]] = *&a2[v72[7]];
          goto LABEL_50;
        case 8u:
          v23 = sub_1DD0DD12C();
          (*(*(v23 - 8) + 32))(a1, a2, v23);
          v24 = type metadata accessor for NLRouterParse();
          *&a1[v24[5]] = *&a2[v24[5]];
          v25 = v24[6];
          v26 = &a1[v25];
          v27 = &a2[v25];
          v28 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v27, 1, v28))
          {
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v26, v27, *(*(v29 - 8) + 64));
          }

          else
          {
            v62 = sub_1DD0DB4BC();
            (*(*(v62 - 8) + 32))(v26, v27, v62);
            v63 = v28[5];
            v64 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v27[v63], 1, v64))
            {
              v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v26[v63], &v27[v63], *(*(v65 - 8) + 64));
            }

            else
            {
              (*(*(v64 - 8) + 32))(&v26[v63], &v27[v63], v64);
              __swift_storeEnumTagSinglePayload(&v26[v63], 0, 1, v64);
            }

            *&v26[v28[6]] = *&v27[v28[6]];
            v84 = v28[7];
            v85 = &v26[v84];
            v86 = &v27[v84];
            v85[4] = v86[4];
            *v85 = *v86;
            __swift_storeEnumTagSinglePayload(v26, 0, 1, v28);
          }

          *&a1[v24[7]] = *&a2[v24[7]];
          goto LABEL_50;
        case 9u:
          v32 = sub_1DD0DD08C();
          (*(*(v32 - 8) + 32))(a1, a2, v32);
LABEL_50:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v18 - 8) + 64));
          break;
      }

      goto LABEL_57;
    case 0:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
      v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 32))(a1, a2, v11);
        v12 = type metadata accessor for Input(0);
        v13 = v12[5];
        v14 = &a1[v13];
        v15 = &a2[v13];
        v16 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v17 = sub_1DD0DC76C();
            (*(*(v17 - 8) + 32))(v14, v15, v17);
            goto LABEL_55;
          case 1u:
            v52 = sub_1DD0DC76C();
            (*(*(v52 - 8) + 32))(v14, v15, v52);
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v14[*(v53 + 48)] = *&v15[*(v53 + 48)];
            goto LABEL_55;
          case 4u:
            v55 = sub_1DD0DB1EC();
            (*(*(v55 - 8) + 32))(v14, v15, v55);
            goto LABEL_55;
          case 6u:
            v56 = sub_1DD0DB4BC();
            (*(*(v56 - 8) + 32))(v14, v15, v56);
            v101 = type metadata accessor for USOParse();
            v57 = v101[5];
            v98 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v57], 1, v98))
            {
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v57], &v15[v57], *(*(v58 - 8) + 64));
            }

            else
            {
              (*(*(v98 - 8) + 32))(&v14[v57], &v15[v57]);
              __swift_storeEnumTagSinglePayload(&v14[v57], 0, 1, v98);
            }

            *&v14[v101[6]] = *&v15[v101[6]];
            v77 = v101[7];
            v78 = &v14[v77];
            v79 = &v15[v77];
            v78[4] = v79[4];
            *v78 = *v79;
            goto LABEL_55;
          case 7u:
            v59 = sub_1DD0DB4BC();
            (*(*(v59 - 8) + 32))(v14, v15, v59);
            v102 = type metadata accessor for USOParse();
            v60 = v102[5];
            v99 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v60], 1, v99))
            {
              v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v60], &v15[v60], *(*(v61 - 8) + 64));
            }

            else
            {
              (*(*(v99 - 8) + 32))(&v14[v60], &v15[v60]);
              __swift_storeEnumTagSinglePayload(&v14[v60], 0, 1, v99);
            }

            *&v14[v102[6]] = *&v15[v102[6]];
            v80 = v102[7];
            v81 = &v14[v80];
            v82 = &v15[v80];
            v81[4] = v82[4];
            *v81 = *v82;
            v83 = type metadata accessor for LinkParse();
            *&v14[v83[5]] = *&v15[v83[5]];
            *&v14[v83[6]] = *&v15[v83[6]];
            *&v14[v83[7]] = *&v15[v83[7]];
            goto LABEL_55;
          case 8u:
            v44 = sub_1DD0DD12C();
            (*(*(v44 - 8) + 32))(v14, v15, v44);
            v45 = type metadata accessor for NLRouterParse();
            *&v14[*(v45 + 20)] = *&v15[*(v45 + 20)];
            v96 = v45;
            v46 = *(v45 + 24);
            v100 = &v14[v46];
            v47 = &v15[v46];
            v48 = type metadata accessor for USOParse();
            v97 = v47;
            v49 = v47;
            v50 = v48;
            if (__swift_getEnumTagSinglePayload(v49, 1, v48))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v100, v97, *(*(v51 - 8) + 64));
            }

            else
            {
              v73 = sub_1DD0DB4BC();
              (*(*(v73 - 8) + 32))(v100, v97, v73);
              v95 = v50;
              v74 = *(v50 + 20);
              v75 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v97[v74], 1, v75))
              {
                v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v100[v74], &v97[v74], *(*(v76 - 8) + 64));
              }

              else
              {
                (*(*(v75 - 8) + 32))(&v100[v74], &v97[v74], v75);
                __swift_storeEnumTagSinglePayload(&v100[v74], 0, 1, v75);
              }

              *&v100[*(v95 + 24)] = *&v97[*(v95 + 24)];
              v87 = *(v95 + 28);
              v88 = &v100[v87];
              v89 = &v97[v87];
              v88[4] = v89[4];
              *v88 = *v89;
              __swift_storeEnumTagSinglePayload(v100, 0, 1, v95);
            }

            *&v14[*(v96 + 28)] = *&v15[*(v96 + 28)];
            goto LABEL_55;
          case 9u:
            v54 = sub_1DD0DD08C();
            (*(*(v54 - 8) + 32))(v14, v15, v54);
LABEL_55:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v14, v15, *(*(v16 - 8) + 64));
            break;
        }

        *&a1[v12[6]] = *&a2[v12[6]];
        v90 = v12[7];
        v91 = &a1[v90];
        v92 = &a2[v90];
        v93 = *(v92 + 1);
        *v91 = *v92;
        *(v91 + 1) = v93;
        *(v91 + 4) = *(v92 + 4);
        a1[v12[8]] = a2[v12[8]];
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
        *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v10 - 8) + 64));
      }

      goto LABEL_57;
  }

  v21 = *(v6 + 64);

  return memcpy(a1, a2, v21);
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.init(label:punchOutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);

  return sub_1DCFC6540(a3, v5);
}

uint64_t sub_1DCFC6540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SiriKitSnippets.AppLaunchSnippetModel.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitSnippets.AppLaunchSnippetModel.appIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFC6628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449707061 && a2 == 0xED00007265696669)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFC66F4(char a1)
{
  if (a1)
  {
    return 0x746E656449707061;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1DCFC673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC6628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC6764(uint64_t a1)
{
  v2 = sub_1DCFC6904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC67A0(uint64_t a1)
{
  v2 = sub_1DCFC6904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitSnippets.AppLaunchSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB8F0, &qword_1DD1076B8);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = *v0;
  v10 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCFC6904();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_6_77();
  sub_1DD0DEFBC();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_6_77();
    sub_1DD0DEF8C();
  }

  v12 = OUTLINED_FUNCTION_24_38();
  v13(v12);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFC6904()
{
  result = qword_1ECCAB8F8;
  if (!qword_1ECCAB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB8F8);
  }

  return result;
}

void SiriKitSnippets.AppLaunchSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB900, &qword_1DD1076C0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_15_3();
  v11 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCFC6904();
  OUTLINED_FUNCTION_61_2();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_7_75();
    v12 = sub_1DD0DEF0C();
    v14 = v13;
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_7_75();
    v15 = sub_1DD0DEEDC();
    v16 = OUTLINED_FUNCTION_19_48(v15);
    v17(v16);
    *v5 = v12;
    v5[1] = v14;
    v5[2] = v18;
    v5[3] = v0;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.punchOutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);

  return sub_1DCFC6B84(v3, a1);
}

uint64_t sub_1DCFC6B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFC6BF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFC6CBC(char a1)
{
  if (a1)
  {
    return 0x74754F68636E7570;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1DCFC6D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC6BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC6D28(uint64_t a1)
{
  v2 = sub_1DCFC6F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC6D64(uint64_t a1)
{
  v2 = sub_1DCFC6F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB908, &qword_1DD1076C8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21[-v12];
  v14 = a1[4];
  OUTLINED_FUNCTION_57_1(a1, a1[3]);
  sub_1DCFC6F30();
  sub_1DD0DF24C();
  v15 = *v3;
  v16 = v3[1];
  v21[15] = 0;
  sub_1DD0DEFBC();
  if (!v2)
  {
    v17 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    OUTLINED_FUNCTION_10_78();
    sub_1DD0DAECC();
    OUTLINED_FUNCTION_4_112();
    sub_1DCFC7220(v18, v19);
    sub_1DD0DEFAC();
  }

  return (*(v7 + 8))(v13, v5);
}

unint64_t sub_1DCFC6F30()
{
  result = qword_1ECCAB910;
  if (!qword_1ECCAB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB910);
  }

  return result;
}

void SiriKitSnippets.PunchOutSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v30[1] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB920, &qword_1DD1076D0);
  v10 = OUTLINED_FUNCTION_9(v9);
  v30[2] = v11;
  v30[3] = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  OUTLINED_FUNCTION_16();
  v23 = (v22 - v21);
  v24 = v2[4];
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCFC6F30();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v30[0] = v16;
    *v23 = sub_1DD0DEF0C();
    v23[1] = v25;
    sub_1DD0DAECC();
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_4_112();
    sub_1DCFC7220(v26, v27);
    sub_1DD0DEEFC();
    v28 = OUTLINED_FUNCTION_16_57();
    v29(v28);
    sub_1DCFC6540(v8, v23 + *(v30[0] + 20));
    sub_1DCFC8174();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_1DCFC9320(v23, type metadata accessor for SiriKitSnippets.PunchOutSnippetModel);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCFC7220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriKitSnippets.ConfirmationSnippetModel.noLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t static SiriKitSnippets.ConfirmationSnippetModel.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DD0DF0AC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_33_1();

      return sub_1DD0DF0AC();
    }
  }

  return result;
}

uint64_t sub_1DCFC7364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFC742C(char a1)
{
  if (a1)
  {
    return 0x6C6562614C6F6ELL;
  }

  else
  {
    return 0x6C6562614C736579;
  }
}

uint64_t sub_1DCFC746C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC7364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC7494(uint64_t a1)
{
  v2 = sub_1DCFC7634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC74D0(uint64_t a1)
{
  v2 = sub_1DCFC7634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitSnippets.ConfirmationSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB930, &qword_1DD1076D8);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = *v0;
  v10 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCFC7634();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_6_77();
  sub_1DD0DEFBC();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_6_77();
    sub_1DD0DEFBC();
  }

  v12 = OUTLINED_FUNCTION_24_38();
  v13(v12);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFC7634()
{
  result = qword_1ECCAB938;
  if (!qword_1ECCAB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB938);
  }

  return result;
}

void SiriKitSnippets.ConfirmationSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB940, &qword_1DD1076E0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_15_3();
  v11 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCFC7634();
  OUTLINED_FUNCTION_61_2();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_7_75();
    v12 = sub_1DD0DEF0C();
    v14 = v13;
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_7_75();
    v15 = sub_1DD0DEF0C();
    v16 = OUTLINED_FUNCTION_19_48(v15);
    v17(v16);
    *v5 = v12;
    v5[1] = v14;
    v5[2] = v18;
    v5[3] = v0;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCFC7814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xEF6E6F7474754268;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74754F68636E7570 && a2 == 0xEE006E6F74747542;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001DD128E20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFC793C(char a1)
{
  if (!a1)
  {
    return 0x636E75614C707061;
  }

  if (a1 == 1)
  {
    return 0x74754F68636E7570;
  }

  return 0xD000000000000013;
}

uint64_t sub_1DCFC79E4(uint64_t a1)
{
  v2 = sub_1DCFC82C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7A20(uint64_t a1)
{
  v2 = sub_1DCFC82C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFC7A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC7814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC7A8C(uint64_t a1)
{
  v2 = sub_1DCFC8120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7AC8(uint64_t a1)
{
  v2 = sub_1DCFC8120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFC7B04(uint64_t a1)
{
  v2 = sub_1DCFC81CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7B40(uint64_t a1)
{
  v2 = sub_1DCFC81CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFC7B7C(uint64_t a1)
{
  v2 = sub_1DCFC8274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7BB8(uint64_t a1)
{
  v2 = sub_1DCFC8274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitSnippets.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v78 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB948, &qword_1DD1076E8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v76 = v6;
  v77 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_34_0();
  v74 = v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB950, &qword_1DD1076F0);
  OUTLINED_FUNCTION_9(v75);
  v73 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_34_0();
  v72 = v17;
  v71 = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
  v18 = OUTLINED_FUNCTION_2(v71);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB958, &qword_1DD1076F8);
  OUTLINED_FUNCTION_9(v25);
  v70 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_15_3();
  v31 = type metadata accessor for SiriKitSnippets(0);
  v32 = OUTLINED_FUNCTION_2(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  OUTLINED_FUNCTION_16();
  v38 = (v37 - v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB960, &qword_1DD107700);
  v40 = OUTLINED_FUNCTION_9(v39);
  v79 = v41;
  v80 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v69 - v46;
  v48 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCFC8120();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_0_123();
  sub_1DCFC8174();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v56 = *v38;
    v57 = v38[1];
    v59 = v38[2];
    v58 = v38[3];
    LOBYTE(v81) = 0;
    sub_1DCFC82C8();
    v60 = v80;
    OUTLINED_FUNCTION_26_36();
    sub_1DD0DEF7C();
    v81 = v56;
    v82 = v57;
    v83 = v59;
    v84 = v58;
    sub_1DCFC831C();
    sub_1DD0DEFFC();
    (*(v70 + 8))(v1, v25);
    (*(v79 + 8))(v47, v60);

LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v62 = *v38;
    v61 = v38[1];
    v64 = v38[2];
    v63 = v38[3];
    LOBYTE(v81) = 2;
    sub_1DCFC81CC();
    v65 = v74;
    v66 = v80;
    OUTLINED_FUNCTION_26_36();
    sub_1DD0DEF7C();
    v81 = v62;
    v82 = v61;
    v83 = v64;
    v84 = v63;
    sub_1DCFC8220();
    v67 = v77;
    sub_1DD0DEFFC();
    OUTLINED_FUNCTION_11_68();
    v68(v65, v67);
    (*(v79 + 8))(v47, v66);

    goto LABEL_6;
  }

  sub_1DCFC8BCC();
  LOBYTE(v81) = 1;
  sub_1DCFC8274();
  v50 = v72;
  OUTLINED_FUNCTION_26_36();
  sub_1DD0DEF7C();
  OUTLINED_FUNCTION_5_110();
  sub_1DCFC7220(v51, v52);
  v53 = v75;
  sub_1DD0DEFFC();
  (*(v73 + 8))(v50, v53);
  sub_1DCFC9320(v24, type metadata accessor for SiriKitSnippets.PunchOutSnippetModel);
  v54 = OUTLINED_FUNCTION_17_49();
  v55(v54);
LABEL_7:
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFC8120()
{
  result = qword_1ECCAB968;
  if (!qword_1ECCAB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB968);
  }

  return result;
}

uint64_t sub_1DCFC8174()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

unint64_t sub_1DCFC81CC()
{
  result = qword_1ECCAB970;
  if (!qword_1ECCAB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB970);
  }

  return result;
}

unint64_t sub_1DCFC8220()
{
  result = qword_1ECCAB978;
  if (!qword_1ECCAB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB978);
  }

  return result;
}

unint64_t sub_1DCFC8274()
{
  result = qword_1ECCAB980;
  if (!qword_1ECCAB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB980);
  }

  return result;
}

unint64_t sub_1DCFC82C8()
{
  result = qword_1ECCAB990;
  if (!qword_1ECCAB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB990);
  }

  return result;
}

unint64_t sub_1DCFC831C()
{
  result = qword_1ECCAB998;
  if (!qword_1ECCAB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB998);
  }

  return result;
}

void SiriKitSnippets.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v101 = v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9A0, &qword_1DD107708);
  OUTLINED_FUNCTION_9(v95);
  v102 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_34_0();
  v100 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9A8, &qword_1DD107710);
  v11 = OUTLINED_FUNCTION_9(v10);
  v96 = v12;
  v97 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_34_0();
  v99 = v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9B0, &qword_1DD107718);
  OUTLINED_FUNCTION_9(v105);
  v94 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_34_0();
  v98 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9B8, &unk_1DD107720);
  v25 = OUTLINED_FUNCTION_9(v24);
  v103 = v26;
  v104 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v90 - v31;
  v33 = type metadata accessor for SiriKitSnippets(0);
  v34 = OUTLINED_FUNCTION_2(v33);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v44 = &v90 - v43;
  v46 = MEMORY[0x1EEE9AC00](v42, v45);
  v48 = &v90 - v47;
  MEMORY[0x1EEE9AC00](v46, v49);
  v51 = &v90 - v50;
  v53 = v2[3];
  v52 = v2[4];
  v106 = v2;
  OUTLINED_FUNCTION_57_1(v2, v53);
  sub_1DCFC8120();
  sub_1DD0DF23C();
  if (v0)
  {
    goto LABEL_10;
  }

  v90 = v48;
  v91 = v40;
  v92 = v44;
  v93 = v51;
  v54 = v104;
  v109 = v33;
  v55 = sub_1DD0DEF5C();
  sub_1DCB547F8(v55, 0);
  if (v57 == v58 >> 1)
  {
LABEL_9:
    v70 = sub_1DD0DECAC();
    swift_allocError();
    v72 = v71;
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v72 = v109;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_11_68();
    v74(v32, v54);
LABEL_10:
    v75 = v106;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_19_19();
    return;
  }

  if (v57 < (v58 >> 1))
  {
    v59 = v32;
    v60 = *(v56 + v57);
    sub_1DCB54800(v57 + 1);
    v62 = v61;
    v64 = v63;
    swift_unknownObjectRelease();
    v65 = v62 == v64 >> 1;
    v66 = v102;
    if (!v65)
    {
      v32 = v59;
      goto LABEL_9;
    }

    v67 = v59;
    if (v60)
    {
      if (v60 != 1)
      {
        LOBYTE(v107) = 2;
        sub_1DCFC81CC();
        v77 = v100;
        OUTLINED_FUNCTION_21_50();
        sub_1DCFC8B78();
        v78 = v95;
        OUTLINED_FUNCTION_26_36();
        sub_1DD0DEF4C();
        swift_unknownObjectRelease();
        (*(v66 + 8))(v77, v78);
        OUTLINED_FUNCTION_11_68();
        v86(v67, v54);
        v87 = v108;
        v88 = v91;
        *v91 = v107;
        v88[1] = v87;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_123();
        sub_1DCFC8BCC();
        v89 = v106;
LABEL_15:
        OUTLINED_FUNCTION_0_123();
        sub_1DCFC8BCC();
        v75 = v89;
        goto LABEL_11;
      }

      LOBYTE(v107) = 1;
      sub_1DCFC8274();
      OUTLINED_FUNCTION_21_50();
      type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
      OUTLINED_FUNCTION_5_110();
      sub_1DCFC7220(v68, v69);
      sub_1DD0DEF4C();
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_17_49();
      v80(v79);
      OUTLINED_FUNCTION_11_68();
      v81(v59, v54);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_123();
    }

    else
    {
      LOBYTE(v107) = 0;
      sub_1DCFC82C8();
      OUTLINED_FUNCTION_21_50();
      sub_1DCFC8C24();
      sub_1DD0DEF4C();
      v76 = v103;
      swift_unknownObjectRelease();
      v82 = OUTLINED_FUNCTION_25_33();
      v83(v82);
      (*(v76 + 8))(v59, v54);
      v84 = *(&v107 + 1);
      v85 = v90;
      *v90 = v107;
      v85[1] = v84;
      *(v85 + 1) = v108;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_123();
    }

    sub_1DCFC8BCC();
    v89 = v106;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_1DCFC8B78()
{
  result = qword_1ECCAB9C0;
  if (!qword_1ECCAB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB9C0);
  }

  return result;
}

uint64_t sub_1DCFC8BCC()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

unint64_t sub_1DCFC8C24()
{
  result = qword_1ECCAB9D0;
  if (!qword_1ECCAB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB9D0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v8 = sub_1DD0DAECC();

    if (__swift_getEnumTagSinglePayload(&a2[v7], 1, v8))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v7], &a2[v7], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
      __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
    }
  }

  else
  {
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    *(a1 + 2) = v10;
    *(a1 + 3) = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for SiriKitSnippets(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
LABEL_4:
    v3 = *(a1 + 8);

    v4 = *(a1 + 24);
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v5 = *(a1 + 8);

  v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
  v7 = sub_1DD0DAECC();
  result = __swift_getEnumTagSinglePayload(a1 + v6, 1, v7);
  if (!result)
  {
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v6, v7);
  }

  return result;
}

char *initializeWithCopy for SiriKitSnippets(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v7 = sub_1DD0DAECC();

    if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
      __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
    }
  }

  else
  {
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    *(a1 + 2) = v9;
    *(a1 + 3) = v10;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for SiriKitSnippets(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_1DCFC9320(a1, type metadata accessor for SiriKitSnippets);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
      v6 = sub_1DD0DAECC();

      if (__swift_getEnumTagSinglePayload(&a2[v5], 1, v6))
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
        memcpy(&a1[v5], &a2[v5], *(*(v7 - 8) + 64));
      }

      else
      {
        (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
        __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCFC9320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

char *initializeWithTake for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v7 = sub_1DD0DAECC();
    if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

char *assignWithTake for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCFC9320(a1, type metadata accessor for SiriKitSnippets);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v7 = sub_1DD0DAECC();
    if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1DCFC9644()
{
  result = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_1DD0DAECC();

  if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  }

  return a1;
}

uint64_t destroy for SiriKitSnippets.PunchOutSnippetModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 20);
  v6 = sub_1DD0DAECC();
  result = __swift_getEnumTagSinglePayload(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(*(v6 - 8) + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

char *initializeWithCopy for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_1DD0DAECC();

  if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a3 + 20);
  v8 = sub_1DD0DAECC();
  LODWORD(v6) = __swift_getEnumTagSinglePayload(&a1[v7], 1, v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a2[v7], 1, v8);
  if (!v6)
  {
    v10 = *(v8 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v10 + 24))(&a1[v7], &a2[v7], v8);
      return a1;
    }

    (*(v10 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (EnumTagSinglePayload)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
  return a1;
}

char *initializeWithTake for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1DD0DAECC();
  if (__swift_getEnumTagSinglePayload(&a2[v5], 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v5], &a2[v5], *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
    __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a3 + 20);
  v9 = sub_1DD0DAECC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v8], 1, v9);
  v11 = __swift_getEnumTagSinglePayload(&a2[v8], 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 40))(&a1[v8], &a2[v8], v9);
      return a1;
    }

    (*(v12 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  __swift_storeEnumTagSinglePayload(&a1[v8], 0, 1, v9);
  return a1;
}

void sub_1DCFC9D9C()
{
  sub_1DCFC9E34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCFC9E34()
{
  if (!qword_1ECCABA08)
  {
    sub_1DD0DAECC();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCABA08);
    }
  }
}

void *sub_1DCFC9E8C()
{
  OUTLINED_FUNCTION_21();
  *v3 = *v2;
  v4 = v1[1];
  v1[1] = v2[1];

  v1[2] = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = v1[3];
  v1[3] = v5;

  return v1;
}

void *sub_1DCFC9EF8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2[1];
  v5 = *(v4 + 8);
  *v1 = *v2;
  v1[1] = v3;

  v6 = *(v0 + 24);
  v7 = v1[3];
  v1[2] = *(v0 + 16);
  v1[3] = v6;

  return v1;
}

_BYTE *storeEnumTagSinglePayload for SiriKitSnippets.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCFCA048(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DCFCA114(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFCA1F4()
{
  result = qword_1ECCABA10;
  if (!qword_1ECCABA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA10);
  }

  return result;
}

unint64_t sub_1DCFCA24C()
{
  result = qword_1ECCABA18;
  if (!qword_1ECCABA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA18);
  }

  return result;
}

unint64_t sub_1DCFCA2A4()
{
  result = qword_1ECCABA20;
  if (!qword_1ECCABA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA20);
  }

  return result;
}

unint64_t sub_1DCFCA2FC()
{
  result = qword_1ECCABA28;
  if (!qword_1ECCABA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA28);
  }

  return result;
}

unint64_t sub_1DCFCA354()
{
  result = qword_1ECCABA30;
  if (!qword_1ECCABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA30);
  }

  return result;
}

unint64_t sub_1DCFCA3AC()
{
  result = qword_1ECCABA38;
  if (!qword_1ECCABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA38);
  }

  return result;
}

unint64_t sub_1DCFCA404()
{
  result = qword_1ECCABA40;
  if (!qword_1ECCABA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA40);
  }

  return result;
}

unint64_t sub_1DCFCA45C()
{
  result = qword_1ECCABA48;
  if (!qword_1ECCABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA48);
  }

  return result;
}

unint64_t sub_1DCFCA4B4()
{
  result = qword_1ECCABA50;
  if (!qword_1ECCABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA50);
  }

  return result;
}

unint64_t sub_1DCFCA50C()
{
  result = qword_1ECCABA58;
  if (!qword_1ECCABA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA58);
  }

  return result;
}

unint64_t sub_1DCFCA564()
{
  result = qword_1ECCABA60;
  if (!qword_1ECCABA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA60);
  }

  return result;
}

unint64_t sub_1DCFCA5BC()
{
  result = qword_1ECCABA68;
  if (!qword_1ECCABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA68);
  }

  return result;
}

unint64_t sub_1DCFCA614()
{
  result = qword_1ECCABA70;
  if (!qword_1ECCABA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA70);
  }

  return result;
}

unint64_t sub_1DCFCA66C()
{
  result = qword_1ECCABA78;
  if (!qword_1ECCABA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA78);
  }

  return result;
}

unint64_t sub_1DCFCA6C4()
{
  result = qword_1ECCABA80;
  if (!qword_1ECCABA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA80);
  }

  return result;
}

unint64_t sub_1DCFCA71C()
{
  result = qword_1ECCABA88;
  if (!qword_1ECCABA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA88);
  }

  return result;
}

unint64_t sub_1DCFCA774()
{
  result = qword_1ECCABA90;
  if (!qword_1ECCABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA90);
  }

  return result;
}

unint64_t sub_1DCFCA7CC()
{
  result = qword_1ECCABA98;
  if (!qword_1ECCABA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA98);
  }

  return result;
}

unint64_t sub_1DCFCA824()
{
  result = qword_1ECCABAA0;
  if (!qword_1ECCABAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAA0);
  }

  return result;
}

unint64_t sub_1DCFCA87C()
{
  result = qword_1ECCABAA8;
  if (!qword_1ECCABAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAA8);
  }

  return result;
}

unint64_t sub_1DCFCA8D4()
{
  result = qword_1ECCABAB0;
  if (!qword_1ECCABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAB0);
  }

  return result;
}

uint64_t sub_1DCFCAA94()
{
  result = qword_1ECCABAB8;
  if (!qword_1ECCABAB8)
  {
    sub_1DD0DCB5C();
  }

  return result;
}

uint64_t sub_1DCFCAAEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DD128E40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFCABB8(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1DCFCABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCAAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCAC20(uint64_t a1)
{
  v2 = sub_1DCFCACCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCAC5C(uint64_t a1)
{
  v2 = sub_1DCFCACCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DCFCACCC()
{
  result = qword_1ECCABAC8;
  if (!qword_1ECCABAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAC8);
  }

  return result;
}

uint64_t SiriKitUIModel.LocationAccessCarPlayPromptModel.titlePrompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowOnce.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowWhileUsingApp.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DCB3E244(v2, v3);
}

uint64_t SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonDontAllow.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v1[10];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1DCFCAE50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7250656C746974 && a2 == 0xEB0000000074706DLL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C416E6F74747562 && a2 == 0xEF65636E4F776F6CLL;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001DD128E60 == a2;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F446E6F74747562 && a2 == 0xEF776F6C6C41746ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

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

unint64_t sub_1DCFCAFC4(char a1)
{
  result = 0x6F7250656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6C416E6F74747562;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6F446E6F74747562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCFCB074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCAE50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCB09C(uint64_t a1)
{
  v2 = sub_1DCFCB37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCB0D8(uint64_t a1)
{
  v2 = sub_1DCFCB37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitUIModel.LocationAccessCarPlayPromptModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABAD8, &qword_1DD108200);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  v12 = *v0;
  v13 = v0[1];
  v24 = v0[2];
  v25 = v0[3];
  v26 = v0[5];
  v22 = v0[6];
  v23 = v0[4];
  v20 = v0[9];
  v21 = v0[7];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[8];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DCFCB37C();
  sub_1DD0DF24C();
  sub_1DD0DEFBC();
  if (!v1)
  {
    sub_1DCFCB3D0();

    sub_1DD0DEFFC();

    sub_1DCB3E244(v22, v21);
    OUTLINED_FUNCTION_9_76();
    sub_1DD0DEFAC();
    sub_1DCCEA1B0(v22, v21);

    OUTLINED_FUNCTION_9_76();
    sub_1DD0DEFFC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCB37C()
{
  result = qword_1ECCABAE0;
  if (!qword_1ECCABAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAE0);
  }

  return result;
}

unint64_t sub_1DCFCB3D0()
{
  result = qword_1ECCABAE8;
  if (!qword_1ECCABAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAE8);
  }

  return result;
}

void SiriKitUIModel.LocationAccessCarPlayPromptModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABAF0, &qword_1DD108208);
  OUTLINED_FUNCTION_9(v27);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCFCB37C();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v30) = 0;
    v25 = sub_1DD0DEF0C();
    v26 = v10;
    LOBYTE(v29[0]) = 1;
    sub_1DCFCB768();
    OUTLINED_FUNCTION_1_130();
    sub_1DD0DEF4C();
    v21 = v30;
    v11 = v32;
    v23 = v33;
    v24 = v31;
    LOBYTE(v29[0]) = 2;
    OUTLINED_FUNCTION_1_130();
    sub_1DD0DEEFC();
    v19 = v30;
    v20 = v31;
    v17 = v11;
    v18 = v32;
    v12 = v33;
    OUTLINED_FUNCTION_1_130();
    sub_1DD0DEF4C();
    v13 = OUTLINED_FUNCTION_5_111();
    v14(v13);
    v22 = v45;
    v15 = v47;
    v16 = v46;
    v28 = v44;
    v29[0] = v25;
    v29[1] = v26;
    v29[2] = v21;
    v29[3] = v24;
    v29[4] = v17;
    v29[5] = v23;
    v29[6] = v19;
    v29[7] = v20;
    v29[8] = v18;
    v29[9] = v12;
    v29[10] = v44;
    v29[11] = v45;
    v29[12] = v46;
    v29[13] = v47;
    memcpy(v4, v29, 0x70uLL);
    sub_1DCFCB7BC(v29, &v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v30 = v25;
    v31 = v26;
    v32 = v21;
    v33 = v24;
    v34 = v17;
    v35 = v23;
    v36 = v19;
    v37 = v20;
    v38 = v18;
    v39 = v12;
    v40 = v28;
    v41 = v22;
    v42 = v16;
    v43 = v15;
    sub_1DCFCB7F4(&v30);
  }

  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCB768()
{
  result = qword_1ECCABAF8;
  if (!qword_1ECCABAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAF8);
  }

  return result;
}

uint64_t SiriKitUIModel.SiriNeedsLocationAccessErrorModel.titleError.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriKitUIModel.SiriNeedsLocationAccessErrorModel.buttonLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DCFCB8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727245656C746974 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFCB988(char a1)
{
  if (a1)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x727245656C746974;
  }
}

uint64_t sub_1DCFCB9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCB8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCB9FC(uint64_t a1)
{
  v2 = sub_1DCFCBBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCBA38(uint64_t a1)
{
  v2 = sub_1DCFCBBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DCFCBAA8()
{
  OUTLINED_FUNCTION_20_3();
  v19 = v3;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v20 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  v14 = *v0;
  v15 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v19();
  sub_1DD0DF24C();
  sub_1DD0DEFBC();
  if (!v1)
  {
    sub_1DD0DEFBC();
  }

  (*(v20 + 8))(v2, v8);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCBBFC()
{
  result = qword_1ECCABB08;
  if (!qword_1ECCABB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB08);
  }

  return result;
}

void sub_1DCFCBC84()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v26 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    v18 = v26;
    v17 = v27;
    v19 = sub_1DD0DEF0C();
    v21 = v20;
    v22 = sub_1DD0DEF0C();
    v24 = v23;
    v25 = *(v18 + 8);
    v26 = v22;
    v25(v15, v8);
    *v17 = v19;
    v17[1] = v21;
    v17[2] = v26;
    v17[3] = v24;

    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCFCBE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001DD128E80 == a2;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DD128EA0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

unint64_t sub_1DCFCBF3C(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1DCFCBFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCBE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCBFD0(uint64_t a1)
{
  v2 = sub_1DCFCC424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCC00C(uint64_t a1)
{
  v2 = sub_1DCFCC424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFCC048(uint64_t a1)
{
  v2 = sub_1DCFCC520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCC084(uint64_t a1)
{
  v2 = sub_1DCFCC520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFCC0C0(uint64_t a1)
{
  v2 = sub_1DCFCC478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCC0FC(uint64_t a1)
{
  v2 = sub_1DCFCC478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitUIModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB18, &qword_1DD108220);
  v5 = OUTLINED_FUNCTION_9(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB20, &qword_1DD108228);
  OUTLINED_FUNCTION_9(v35);
  v34 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB28, &qword_1DD108230);
  OUTLINED_FUNCTION_9(v42);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v34 - v26;
  v28 = v1[1];
  v38 = *v1;
  v39 = v28;
  v29 = v1[3];
  v40 = v1[2];
  v41 = v29;
  v30 = *(v1 + 112);
  v31 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCFCC424();
  sub_1DD0DF24C();
  if (v30)
  {
    v43 = 1;
    sub_1DCFCC478();
    OUTLINED_FUNCTION_16_58();
    OUTLINED_FUNCTION_15_63();
    sub_1DCFCC4CC();
    v32 = v37;
    sub_1DD0DEFFC();
    (*(v36 + 8))(v12, v32);
  }

  else
  {
    v43 = 0;
    sub_1DCFCC520();
    OUTLINED_FUNCTION_16_58();
    OUTLINED_FUNCTION_15_63();
    memcpy(v44, v1 + 4, sizeof(v44));
    sub_1DCFCC574();
    v33 = v35;
    sub_1DD0DEFFC();
    (*(v34 + 8))(v19, v33);
  }

  (*(v21 + 8))(v27, v30);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCC424()
{
  result = qword_1ECCABB30;
  if (!qword_1ECCABB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB30);
  }

  return result;
}

unint64_t sub_1DCFCC478()
{
  result = qword_1ECCABB38;
  if (!qword_1ECCABB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB38);
  }

  return result;
}

unint64_t sub_1DCFCC4CC()
{
  result = qword_1ECCABB40;
  if (!qword_1ECCABB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB40);
  }

  return result;
}

unint64_t sub_1DCFCC520()
{
  result = qword_1ECCABB48;
  if (!qword_1ECCABB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB48);
  }

  return result;
}

unint64_t sub_1DCFCC574()
{
  result = qword_1ECCABB50;
  if (!qword_1ECCABB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB50);
  }

  return result;
}

void SiriKitUIModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v60 = v0;
  v3 = v2;
  v58 = v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB58, &qword_1DD108238);
  OUTLINED_FUNCTION_9(v57);
  v56 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB60, &qword_1DD108240);
  OUTLINED_FUNCTION_9(v12);
  v55 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB68, &unk_1DD108248);
  OUTLINED_FUNCTION_9(v20);
  v59 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_4_1();
  v26 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCFCC424();
  v27 = v60;
  sub_1DD0DF23C();
  if (v27)
  {
    goto LABEL_9;
  }

  v53[0] = v19;
  v53[1] = v11;
  v28 = v59;
  v60 = v3;
  v54 = v1;
  v29 = sub_1DD0DEF5C();
  sub_1DCB547F8(v29, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v40 = sub_1DD0DECAC();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v42 = &type metadata for SiriKitUIModel;
    v44 = v54;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (v28[1])(v44, v20);
    v3 = v60;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
LABEL_10:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  if (v31 < (v32 >> 1))
  {
    v65 = *(v30 + v31);
    v33 = sub_1DCB54800(v31 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v65)
      {
        v61 = 1;
        sub_1DCFCC478();
        OUTLINED_FUNCTION_7_76(&v64);
        v38 = v58;
        v39 = v33;
        sub_1DCFCCC30();
        v45 = v37;
        v46 = v57;
        sub_1DD0DEF4C();
        v33 = (v56 + 8);
        ++v28;
        swift_unknownObjectRelease();
        (*v33)(v45, v46);
        v49 = *v28;
        v50 = OUTLINED_FUNCTION_14_2();
        v51(v50);
        OUTLINED_FUNCTION_6_78();
        v52 = 1;
      }

      else
      {
        v39 = v12;
        v61 = 0;
        sub_1DCFCC520();
        OUTLINED_FUNCTION_7_76(&v63[72]);
        sub_1DCFCCC84();
        sub_1DD0DEF4C();
        v47 = v37;
        v48 = (v55 + 8);
        v45 = v28 + 1;
        swift_unknownObjectRelease();
        (*v48)(v47, v12);
        (v28[1])(v12, v20);
        OUTLINED_FUNCTION_6_78();
        memcpy(v63, v62, sizeof(v63));
        v52 = 0;
        v38 = v58;
      }

      *v38 = v45;
      *(v38 + 8) = v33;
      *(v38 + 16) = v28;
      *(v38 + 24) = v39;
      memcpy((v38 + 32), v63, 0x50uLL);
      *(v38 + 112) = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1DCFCCC30()
{
  result = qword_1ECCABB70;
  if (!qword_1ECCABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB70);
  }

  return result;
}

unint64_t sub_1DCFCCC84()
{
  result = qword_1ECCABB78;
  if (!qword_1ECCABB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB78);
  }

  return result;
}

unint64_t sub_1DCFCCCEC()
{
  result = qword_1ECCABB80;
  if (!qword_1ECCABB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB80);
  }

  return result;
}

unint64_t sub_1DCFCCD44()
{
  result = qword_1ECCABB88;
  if (!qword_1ECCABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB88);
  }

  return result;
}

uint64_t sub_1DCFCCD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((a15 & 1) == 0)
  {

    sub_1DCB3E244(a7, a8);
  }
}

uint64_t sub_1DCFCCE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  if ((a15 & 1) == 0)
  {

    sub_1DCCEA1B0(a7, a8);
  }

  return result;
}

uint64_t initializeWithCopy for SiriKitUIModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  sub_1DCFCCD98(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  return a1;
}

uint64_t assignWithCopy for SiriKitUIModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = *(a2 + 80);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  sub_1DCFCCD98(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  v24 = *(a1 + 112);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  sub_1DCFCCE88(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24);
  return a1;
}

uint64_t assignWithTake for SiriKitUIModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v3;
  sub_1DCFCCE88(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitUIModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 113))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 112);
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

uint64_t storeEnumTagSinglePayload for SiriKitUIModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t destroy for SiriKitUIModel.LocationAccessCarPlayPromptModel(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  if (a1[7])
  {

    v5 = a1[9];
  }

  v6 = a1[11];

  v7 = a1[13];
}

void *initializeWithCopy for SiriKitUIModel.LocationAccessCarPlayPromptModel(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = a2[7];

  if (v7)
  {
    a1[6] = a2[6];
    a1[7] = v7;
    v8 = a2[9];
    a1[8] = a2[8];
    a1[9] = v8;
  }

  else
  {
    v9 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v9;
  }

  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  v11 = a2[12];
  v12 = a2[13];
  a1[12] = v11;
  a1[13] = v12;

  return a1;
}

void *assignWithCopy for SiriKitUIModel.LocationAccessCarPlayPromptModel(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  v7 = a2[7];
  if (a1[7])
  {
    if (v7)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];

      a1[8] = a2[8];
      v8 = a1[9];
      a1[9] = a2[9];
    }

    else
    {
      sub_1DCFCD534((a1 + 6));
      v9 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v9;
    }
  }

  else if (v7)
  {
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
  }

  else
  {
    v10 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v10;
  }

  a1[10] = a2[10];
  v11 = a1[11];
  a1[11] = a2[11];

  a1[12] = a2[12];
  v12 = a2[13];
  v13 = a1[13];
  a1[13] = v12;

  return a1;
}

uint64_t assignWithTake for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 56);
  if (!v10)
  {
    sub_1DCFCD534(a1 + 48);
LABEL_5:
    v13 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v13;
    goto LABEL_6;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v10;

  v11 = *(a2 + 72);
  v12 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;

LABEL_6:
  v14 = *(a2 + 88);
  v15 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v14;

  v16 = *(a2 + 104);
  v17 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v16;

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1DCFCD6F0(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SiriKitUIModel.LocationAccessCarPlayPromptModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCFCD888(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFCD968()
{
  result = qword_1ECCABB90;
  if (!qword_1ECCABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB90);
  }

  return result;
}

unint64_t sub_1DCFCD9C0()
{
  result = qword_1ECCABB98;
  if (!qword_1ECCABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB98);
  }

  return result;
}

unint64_t sub_1DCFCDA18()
{
  result = qword_1ECCABBA0;
  if (!qword_1ECCABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBA0);
  }

  return result;
}

unint64_t sub_1DCFCDA70()
{
  result = qword_1ECCABBA8;
  if (!qword_1ECCABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBA8);
  }

  return result;
}

unint64_t sub_1DCFCDAC8()
{
  result = qword_1ECCABBB0;
  if (!qword_1ECCABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBB0);
  }

  return result;
}

unint64_t sub_1DCFCDB20()
{
  result = qword_1ECCABBB8;
  if (!qword_1ECCABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBB8);
  }

  return result;
}

unint64_t sub_1DCFCDB78()
{
  result = qword_1ECCABBC0;
  if (!qword_1ECCABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBC0);
  }

  return result;
}

unint64_t sub_1DCFCDBD0()
{
  result = qword_1ECCABBC8;
  if (!qword_1ECCABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBC8);
  }

  return result;
}

unint64_t sub_1DCFCDC28()
{
  result = qword_1ECCABBD0;
  if (!qword_1ECCABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBD0);
  }

  return result;
}

unint64_t sub_1DCFCDC80()
{
  result = qword_1ECCABBD8;
  if (!qword_1ECCABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBD8);
  }

  return result;
}

unint64_t sub_1DCFCDCD8()
{
  result = qword_1ECCABBE0;
  if (!qword_1ECCABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBE0);
  }

  return result;
}

unint64_t sub_1DCFCDD30()
{
  result = qword_1ECCABBE8;
  if (!qword_1ECCABBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBE8);
  }

  return result;
}

unint64_t sub_1DCFCDD88()
{
  result = qword_1ECCABBF0;
  if (!qword_1ECCABBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBF0);
  }

  return result;
}

unint64_t sub_1DCFCDDE0()
{
  result = qword_1ECCABBF8;
  if (!qword_1ECCABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBF8);
  }

  return result;
}

unint64_t sub_1DCFCDE38()
{
  result = qword_1ECCABC00;
  if (!qword_1ECCABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABC00);
  }

  return result;
}

unint64_t sub_1DCFCDE90()
{
  result = qword_1ECCABC08;
  if (!qword_1ECCABC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABC08);
  }

  return result;
}

unint64_t sub_1DCFCDEE8()
{
  result = qword_1ECCABC10;
  if (!qword_1ECCABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABC10);
  }

  return result;
}

unint64_t sub_1DCFCDF40()
{
  result = qword_1ECCABC18[0];
  if (!qword_1ECCABC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCABC18);
  }

  return result;
}

uint64_t sub_1DCFCDFAC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for SiriKitWaitToContinueFlow.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1DCFCE09C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1DCFCE6E4(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_1DCFCE104@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v22 - v15;
  sub_1DCFCE538(&v22 - v15);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v19 = v16[8];
    *a1 = *v16;
    *(a1 + 8) = v19;
    v18 = 1;
    goto LABEL_5;
  }

  if (result == 5)
  {
    v18 = v16[16];
    *a1 = *v16;
LABEL_5:
    *(a1 + 16) = v18;
    return result;
  }

  type metadata accessor for SiriKitWaitToContinueFlow.WaitToContinueError();
  OUTLINED_FUNCTION_1_131();
  swift_getWitnessTable();
  v20 = swift_allocError();
  sub_1DCFCE538(v21);
  *a1 = v20;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return (*(v11 + 8))(v16, v8);
}

void sub_1DCFCE284()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFCE538@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  return (*(*(v10 - 8) + 16))(a1, &v1[v5], v10);
}

void sub_1DCFCE5EC(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  (*(*(v10 - 8) + 24))(&v1[v5], a1, v10);
  swift_endAccess();
  sub_1DCFCE284();
}

uint64_t *sub_1DCFCE6E4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 96), a1, *(*v4 + 80));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v4 + *(v10 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v4 + *(v11 + 112));
  OUTLINED_FUNCTION_66();
  v13 = v4 + *(v12 + 120);
  *v13 = *a2;
  *(v13 + 16) = v9;
  v14 = *(v8 + 88);
  type metadata accessor for SiriKitWaitToContinueFlow.State();
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t sub_1DCFCE814(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (v26 - v17);
  sub_1DCFCE538(v26 - v17);
  if (swift_getEnumCaseMultiPayload() - 1 > 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v20 = v18[1];
  v19 = v18[2];
  v21 = *v18;
  v22 = *(*v1 + 96);
  v27[0] = v21;
  v27[1] = v20;
  v27[2] = v19;
  (*(v7 + 24))(&v28, a1, v27, v5, v7);
  if (!v28)
  {
    *v15 = v21;
    v15[1] = v20;
    v15[2] = v19;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_1DCFCE5EC(v15);
  }

  if (v28 == 1)
  {
    v26[1] = type metadata accessor for Input(255);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord();
    v23 = (v15 + *(swift_getTupleTypeMetadata2() + 48));
    sub_1DCC174D4(a1, v15);
    *v23 = v21;
    v23[1] = v20;
    v23[2] = v19;
    goto LABEL_9;
  }

  return 0;
}