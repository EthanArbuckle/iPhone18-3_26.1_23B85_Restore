void sub_1DCFCEBA0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  type metadata accessor for SiriKitWaitToContinueFlow();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCFCEC3C()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  v1[21] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = *(v3 + 80);
  v1[24] = *(v3 + 88);
  v6 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  v1[25] = v6;
  v7 = *(v6 - 8);
  v1[26] = v7;
  v8 = *(v7 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFCED64()
{
  v73 = v0;
  v1 = v0[25];
  v2 = v0[20];
  sub_1DCFCE538(v0[28]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v64 = v0[20];
      v65 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      v30 = v0[19];
      (*(v0[26] + 8))(v0[28], v0[25]);
      static ExecuteResponse.ongoing(requireInput:)(1, v30);
      break;
    case 3u:
      v31 = v0[28];
      v33 = v0[23];
      v32 = v0[24];
      v35 = v0[21];
      v34 = v0[22];
      OUTLINED_FUNCTION_18_49();
      OUTLINED_FUNCTION_18_49();
      type metadata accessor for IntentResolutionRecord();
      v36 = (v31 + *(swift_getTupleTypeMetadata2() + 48));
      v37 = *v36;
      v0[29] = *v36;
      v38 = v36[1];
      v0[30] = v38;
      v39 = v36[2];
      v0[31] = v39;
      sub_1DCC333DC(v31, v34);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v40 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v40, qword_1EDE57E00);
      v41 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v42))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v43, v44, "SiriKitWaitToContinueFlow continuing with new input.");
        OUTLINED_FUNCTION_80();
      }

      v70 = v0[24];
      v45 = v0[20];

      v46 = *(*v45 + 96);
      v0[12] = v37;
      v0[13] = v38;
      v0[14] = v39;
      v47 = *(v70 + 32);
      v68 = v47 + *v47;
      v48 = v47[1];
      v49 = swift_task_alloc();
      v0[32] = v49;
      *v49 = v0;
      v49[1] = sub_1DCFCF5C8;
      v50 = v0[23];
      v51 = v0[24];
      v52 = v0[22];
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X5, X16 }

      return result;
    case 4u:
      v9 = v0[28];
      v10 = *v9;
      v0[34] = *v9;
      v11 = v9[1];
      v0[35] = v11;
      v12 = v9[2];
      v0[36] = v12;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v13 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v15))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v16, v17, "SiriKitWaitToContinueFlow was cancelled while waiting. Publishing ConfirmIntentFlowStrategy's cancel response and exiting.");
        OUTLINED_FUNCTION_80();
      }

      v18 = v0[20];

      v19 = (v18 + *(*v18 + 104));
      v20 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v21 = swift_task_alloc();
      v0[37] = v21;
      v21[2] = v18;
      v21[3] = v10;
      v21[4] = v11;
      v21[5] = v12;
      v22 = swift_task_alloc();
      v0[38] = v22;
      *v22 = v0;
      v22[1] = sub_1DCFCF7A4;
      OUTLINED_FUNCTION_73();

      return sub_1DCB63BBC(v23, v24, v25, v26, v27);
    case 5u:
    case 6u:
      (*(v0[26] + 8))(v0[28], v0[25]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v3 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
      v4 = sub_1DD0DD8EC();
      v5 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v5))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v6, v7, "SiriKitWaitToContinueFlow execution complete.");
        OUTLINED_FUNCTION_80();
      }

      v8 = v0[19];

      static ExecuteResponse.complete()();
      break;
    default:
      v56 = v0[27];
      v55 = v0[28];
      v57 = v0[24];
      v58 = v0[23];
      v59 = v0[20];
      v69 = v0[25];
      v71 = v0[19];
      v60 = v55[1];
      v61 = v55[2];
      v62 = *v59;
      v63 = *(*v59 + 96);
      v72[0] = *v55;
      v72[1] = v60;
      v72[2] = v61;
      sub_1DCCA88A8(v72, v59 + *(v62 + 112), v58, v57);
  }

  OUTLINED_FUNCTION_13_73();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DCFCF5C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 256);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCFCF6C8()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 160);
  v7 = *(v0 + 128);
  *v4 = *(v0 + 120);
  *(v4 + 8) = v7;
  *(v4 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = v7;
  sub_1DCFCE5EC(v4);
}

uint64_t sub_1DCFCF7A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = v2[38];
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v3[39] = v0;

  if (!v0)
  {
    v7 = v3[37];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCFCF8B8()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[20];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  sub_1DCFCE5EC(v4);
}

void sub_1DCFCF978()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[20];
  *v5 = v1;
  *(v5 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  sub_1DCFCE5EC(v5);
}

void sub_1DCFCFA54()
{
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[20];

  *v6 = v1;
  *(v6 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v9 = v1;
  sub_1DCFCE5EC(v6);
}

void sub_1DCFCFB78(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCFCFE58(&v2);
}

uint64_t sub_1DCFCFBB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(*a2 + 96);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v9 = *(v7 + 88);
  v10 = *(v9 + 72);
  v11 = *(v7 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_1DCFCFD3C;

  return (v15)(a1, v5 + 2, v11, v9);
}

uint64_t sub_1DCFCFD3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

void sub_1DCFCFE58(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v31 = *(*v2 + 80);
  v5 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v6, v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v31 - v16);
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = *(a1 + 16);
  sub_1DCFCE538(&v31 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v17;
    v22 = v17[1];
    v23 = v17[2];
    if (!v20 && v19 != 2 && (v19 & 1) != 0)
    {
      v24 = qword_1EDE4F900;
      v25 = v18;
      if (v24 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v26 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
      v27 = sub_1DD0DD8EC();
      v28 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_50_0();
        *v29 = 0;
        _os_log_impl(&dword_1DCAFC000, v27, v28, "SiriKitWaitToContinueFlow received a rejection from the ConfirmIntentFlow. Will transition to waiting to continue.", v29, 2u);
        OUTLINED_FUNCTION_80();
      }

      *v14 = v21;
      v14[1] = v22;
      v14[2] = v23;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    *v14 = v19;
    v14[1] = v18;
    *(v14 + 16) = v20;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    sub_1DCBB12F4(v19, v18, v20);
    sub_1DCFCE5EC(v14);
  }

  (*(v8 + 8))(v17, v5);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v30 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

unint64_t sub_1DCFD0258(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD000000000000017;
      break;
    case 2u:
      v7 = 0xD000000000000012;
      (*(v3 + 8))(v6, a1);
      break;
    case 3u:
      v7 = 0xD000000000000012;
      type metadata accessor for Input(255);
      v10 = a1 + 16;
      v8 = *(a1 + 16);
      v9 = *(v10 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      v11 = &v6[*(swift_getTupleTypeMetadata2() + 48)];
      v12 = *v11;
      v13 = *(v11 + 1);

      sub_1DCE984F8(v6);
      break;
    case 4u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD00000000000001CLL;
      break;
    case 5u:
      (*(v3 + 8))(v6, a1);
      v7 = 0x74656C706D6F632ELL;
      break;
    case 6u:
      v14 = *v6;
      v15 = v6[8];
      v21 = 0x28726F7272652ELL;
      v22 = 0xE700000000000000;
      swift_getErrorValue();
      v16 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v16);

      MEMORY[0x1E12A6780](8236, 0xE200000000000000);
      if (v15)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (v15)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v17, v18);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);

      v7 = v21;
      break;
    default:
      (*(v3 + 8))(v6, a1);
      v7 = 0x646574726174732ELL;
      break;
  }

  return v7;
}

uint64_t *sub_1DCFD05D8()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v2 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 120);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  return v0;
}

uint64_t sub_1DCFD06EC()
{
  sub_1DCFD05D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFD0774()
{
  v4 = &unk_1DD108C08;
  v5 = &unk_1DD108C08;
  v6 = &unk_1DD108C08;
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v7 = &v3;
    v8 = &unk_1DD108C08;
    v9 = &unk_1DD108C20;
    v10 = &unk_1DD108C38;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1DCFD0838(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v16 = a2[1];
      *a1 = *a2;
      a1[1] = v16;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 2u:
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 3u:
      v9 = sub_1DD0DB04C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = type metadata accessor for Input(0);
      v11 = v10[5];
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v15 = sub_1DD0DC76C();
          (*(*(v15 - 8) + 16))(v12, v13, v15);
          goto LABEL_34;
        case 1u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 16))(v12, v13, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v12[*(v31 + 48)] = *&v13[*(v31 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v24 = *(v13 + 1);
          *v12 = *v13;
          *(v12 + 1) = v24;
          *(v12 + 2) = *(v13 + 2);

          goto LABEL_34;
        case 3u:
          *v12 = *v13;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v22 = sub_1DD0DB1EC();
          (*(*(v22 - 8) + 16))(v12, v13, v22);
          goto LABEL_34;
        case 5u:
          v32 = *v13;
          *v12 = *v13;
          v33 = v32;
          goto LABEL_34;
        case 6u:
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 16))(v12, v13, v34);
          v35 = type metadata accessor for USOParse();
          v36 = v35[5];
          v37 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v36], 1, v37))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v36], &v13[v36], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 16))(&v12[v36], &v13[v36], v37);
            __swift_storeEnumTagSinglePayload(&v12[v36], 0, 1, v37);
          }

          v69 = v35[6];
          v70 = &v12[v69];
          v71 = &v13[v69];
          v72 = *(v71 + 1);
          *v70 = *v71;
          *(v70 + 1) = v72;
          v73 = v35[7];
          v74 = &v12[v73];
          v75 = &v13[v73];
          v74[4] = v75[4];
          *v74 = *v75;

          goto LABEL_34;
        case 7u:
          v25 = sub_1DD0DB4BC();
          (*(*(v25 - 8) + 16))(v12, v13, v25);
          v26 = type metadata accessor for USOParse();
          v27 = v26[5];
          v28 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v27], 1, v28))
          {
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v27], &v13[v27], *(*(v29 - 8) + 64));
          }

          else
          {
            (*(*(v28 - 8) + 16))(&v12[v27], &v13[v27], v28);
            __swift_storeEnumTagSinglePayload(&v12[v27], 0, 1, v28);
          }

          v49 = v26[6];
          v50 = &v12[v49];
          v51 = &v13[v49];
          v52 = *(v51 + 1);
          *v50 = *v51;
          *(v50 + 1) = v52;
          v53 = v26[7];
          v54 = &v12[v53];
          v55 = &v13[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse();
          v57 = v56[5];
          v58 = &v12[v57];
          v59 = &v13[v57];
          v60 = *(v59 + 1);
          *v58 = *v59;
          *(v58 + 1) = v60;
          v61 = v56[6];
          v62 = &v12[v61];
          v63 = &v13[v61];
          v64 = *(v63 + 1);
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = v56[7];
          v66 = &v12[v65];
          v67 = &v13[v65];
          v68 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v68;

          goto LABEL_34;
        case 8u:
          v39 = sub_1DD0DD12C();
          (*(*(v39 - 8) + 16))(v12, v13, v39);
          v40 = type metadata accessor for NLRouterParse();
          v41 = *(v40 + 20);
          v42 = &v12[v41];
          v43 = &v13[v41];
          v44 = *(v43 + 1);
          *v42 = *v43;
          *(v42 + 1) = v44;
          v45 = *(v40 + 24);
          v103 = v40;
          __dst = &v12[v45];
          v46 = &v13[v45];
          v47 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v46, 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v46, *(*(v48 - 8) + 64));
          }

          else
          {
            v76 = sub_1DD0DB4BC();
            (*(*(v76 - 8) + 16))(__dst, v46, v76);
            v77 = v47[5];
            v102 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v46[v77], 1, v102))
            {
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v77], &v46[v77], *(*(v78 - 8) + 64));
            }

            else
            {
              (*(*(v102 - 8) + 16))(&__dst[v77], &v46[v77]);
              __swift_storeEnumTagSinglePayload(&__dst[v77], 0, 1, v102);
            }

            v79 = v47[6];
            v80 = &__dst[v79];
            v81 = &v46[v79];
            v82 = *(v81 + 1);
            *v80 = *v81;
            *(v80 + 1) = v82;
            v83 = v47[7];
            v84 = &__dst[v83];
            v85 = &v46[v83];
            v84[4] = v85[4];
            *v84 = *v85;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v47);
          }

          v86 = *(v103 + 28);
          v87 = *&v13[v86];
          *&v12[v86] = v87;
          v88 = v87;
          goto LABEL_34;
        case 9u:
          v23 = sub_1DD0DD08C();
          (*(*(v23 - 8) + 16))(v12, v13, v23);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v12, v13, *(*(v14 - 8) + 64));
          break;
      }

      *(a1 + v10[6]) = *(a2 + v10[6]);
      v89 = v10[7];
      v90 = a1 + v89;
      v91 = a2 + v89;
      v92 = *(a2 + v89 + 24);

      if (v92)
      {
        v93 = *(v91 + 32);
        *(v90 + 3) = v92;
        *(v90 + 4) = v93;
        (**(v92 - 8))(v90, v91, v92);
      }

      else
      {
        v94 = *(v91 + 16);
        *v90 = *v91;
        *(v90 + 1) = v94;
        *(v90 + 4) = *(v91 + 32);
      }

      *(a1 + v10[8]) = *(a2 + v10[8]);
      v96 = *(a3 + 16);
      v95 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      v97 = *(swift_getTupleTypeMetadata2() + 48);
      v98 = (a1 + v97);
      v99 = (a2 + v97);
      v100 = v99[1];
      *v98 = *v99;
      v98[1] = v100;
      v98[2] = v99[2];
      sub_1DD0DCF8C();
    case 4u:
      v7 = a2[1];
      *a1 = *a2;
      a1[1] = v7;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 5u:
      v17 = *a2;
      v18 = a2[1];
      v19 = *(a2 + 16);
      sub_1DCBB12F4(v17, v18, v19);
      *a1 = v17;
      a1[1] = v18;
      *(a1 + 16) = v19;
      break;
    case 6u:
      v20 = *a2;
      v21 = *a2;
      *a1 = v20;
      *(a1 + 8) = *(a2 + 8);
      break;
    default:
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCFD1290(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 4u:
      goto LABEL_34;
    case 3u:
      v4 = sub_1DD0DB04C();
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = type metadata accessor for Input(0);
      v6 = (a1 + v5[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v7 = sub_1DD0DC76C();
          goto LABEL_12;
        case 1u:
          v24 = sub_1DD0DC76C();
          (*(*(v24 - 8) + 8))(v6, v24);
          v25 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v12 = *(v6 + 1);

          v13 = *(v6 + 2);
          goto LABEL_24;
        case 3u:
          v14 = *v6;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v7 = sub_1DD0DB1EC();
          goto LABEL_12;
        case 5u:
          v26 = *v6;
          goto LABEL_30;
        case 6u:
          v27 = sub_1DD0DB4BC();
          (*(*(v27 - 8) + 8))(v6, v27);
          v28 = type metadata accessor for USOParse();
          v29 = *(v28 + 20);
          v30 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v6[v29], 1, v30))
          {
            (*(*(v30 - 8) + 8))(&v6[v29], v30);
          }

          v23 = *(v28 + 24);
          goto LABEL_23;
        case 7u:
          v15 = sub_1DD0DB4BC();
          (*(*(v15 - 8) + 8))(v6, v15);
          v16 = type metadata accessor for USOParse();
          v17 = *(v16 + 20);
          v18 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v6[v17], 1, v18))
          {
            (*(*(v18 - 8) + 8))(&v6[v17], v18);
          }

          v19 = *&v6[*(v16 + 24) + 8];

          v20 = type metadata accessor for LinkParse();
          v21 = *&v6[v20[5] + 8];

          v22 = *&v6[v20[6] + 8];

          v23 = v20[7];
LABEL_23:
          v31 = *&v6[v23 + 8];
LABEL_24:

          break;
        case 8u:
          v32 = sub_1DD0DD12C();
          (*(*(v32 - 8) + 8))(v6, v32);
          v33 = type metadata accessor for NLRouterParse();
          v34 = *&v6[v33[5] + 8];

          v35 = &v6[v33[6]];
          v36 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v35, 1, v36))
          {
            v37 = sub_1DD0DB4BC();
            (*(*(v37 - 8) + 8))(v35, v37);
            v38 = *(v36 + 20);
            v39 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v35 + v38, 1, v39))
            {
              (*(*(v39 - 8) + 8))(v35 + v38, v39);
            }

            v40 = *(v35 + *(v36 + 24) + 8);
          }

          v26 = *&v6[v33[7]];
LABEL_30:

          break;
        case 9u:
          v7 = sub_1DD0DD08C();
LABEL_12:
          (*(*(v7 - 8) + 8))(v6, v7);
          break;
        default:
          break;
      }

      v41 = *(a1 + v5[6]);

      v42 = (a1 + v5[7]);
      if (v42[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      v45 = a2 + 16;
      v43 = *(a2 + 16);
      v44 = *(v45 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      a1 += *(swift_getTupleTypeMetadata2() + 48);
LABEL_34:
      v46 = *a1;

      v11 = *(a1 + 16);

      goto LABEL_9;
    case 5u:
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);

      sub_1DCBB1310(v8, v9, v10);
      return;
    case 6u:
      v11 = *a1;

LABEL_9:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCFD184C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v8 = sub_1DD0DB04C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = type metadata accessor for Input(0);
      v10 = v9[5];
      v11 = (a1 + v10);
      v12 = (a2 + v10);
      v13 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v14 = sub_1DD0DC76C();
          (*(*(v14 - 8) + 16))(v11, v12, v14);
          goto LABEL_30;
        case 1u:
          v27 = sub_1DD0DC76C();
          (*(*(v27 - 8) + 16))(v11, v12, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v11[*(v28 + 48)] = *&v12[*(v28 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v22 = *(v12 + 1);
          *v11 = *v12;
          *(v11 + 1) = v22;
          *(v11 + 2) = *(v12 + 2);

          goto LABEL_30;
        case 3u:
          *v11 = *v12;
          swift_unknownObjectRetain();
          goto LABEL_30;
        case 4u:
          v20 = sub_1DD0DB1EC();
          (*(*(v20 - 8) + 16))(v11, v12, v20);
          goto LABEL_30;
        case 5u:
          v29 = *v12;
          *v11 = *v12;
          v30 = v29;
          goto LABEL_30;
        case 6u:
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 16))(v11, v12, v31);
          __dsta = type metadata accessor for USOParse();
          v32 = __dsta[5];
          v33 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v32], 1, v33))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v32], &v12[v32], *(*(v34 - 8) + 64));
          }

          else
          {
            (*(*(v33 - 8) + 16))(&v11[v32], &v12[v32], v33);
            __swift_storeEnumTagSinglePayload(&v11[v32], 0, 1, v33);
          }

          v64 = __dsta[6];
          v65 = &v11[v64];
          v66 = &v12[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = __dsta[7];
          v69 = &v11[v68];
          v70 = &v12[v68];
          v69[4] = v70[4];
          *v69 = *v70;

          goto LABEL_30;
        case 7u:
          v23 = sub_1DD0DB4BC();
          (*(*(v23 - 8) + 16))(v11, v12, v23);
          __dst = type metadata accessor for USOParse();
          v24 = __dst[5];
          v25 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v24], 1, v25))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v24], &v12[v24], *(*(v26 - 8) + 64));
          }

          else
          {
            (*(*(v25 - 8) + 16))(&v11[v24], &v12[v24], v25);
            __swift_storeEnumTagSinglePayload(&v11[v24], 0, 1, v25);
          }

          v45 = __dst[6];
          v46 = &v11[v45];
          v47 = &v12[v45];
          v99 = *(v47 + 1);
          *v46 = *v47;
          *(v46 + 1) = v99;
          v48 = __dst[7];
          v49 = &v11[v48];
          v50 = &v12[v48];
          v49[4] = v50[4];
          *v49 = *v50;
          v51 = type metadata accessor for LinkParse();
          v52 = v51[5];
          v53 = &v11[v52];
          v54 = &v12[v52];
          v55 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v55;
          v56 = v51[6];
          v57 = &v11[v56];
          v58 = &v12[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;
          v60 = v51[7];
          v61 = &v11[v60];
          v62 = &v12[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;

          goto LABEL_30;
        case 8u:
          v35 = sub_1DD0DD12C();
          (*(*(v35 - 8) + 16))(v11, v12, v35);
          v36 = type metadata accessor for NLRouterParse();
          v37 = *(v36 + 20);
          v38 = &v11[v37];
          v39 = &v12[v37];
          v40 = *(v39 + 1);
          *v38 = *v39;
          *(v38 + 1) = v40;
          v41 = *(v36 + 24);
          v98 = v36;
          __dstb = &v11[v41];
          v42 = &v12[v41];
          v43 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v42, 1, v43))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v42, *(*(v44 - 8) + 64));
          }

          else
          {
            v71 = sub_1DD0DB4BC();
            (*(*(v71 - 8) + 16))(__dstb, v42, v71);
            v97 = v43;
            v72 = *(v43 + 20);
            v96 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v42[v72], 1, v96))
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v72], &v42[v72], *(*(v73 - 8) + 64));
            }

            else
            {
              (*(*(v96 - 8) + 16))(&__dstb[v72], &v42[v72]);
              __swift_storeEnumTagSinglePayload(&__dstb[v72], 0, 1, v96);
            }

            v74 = *(v97 + 24);
            v75 = &__dstb[v74];
            v76 = &v42[v74];
            v77 = *(v76 + 1);
            *v75 = *v76;
            *(v75 + 1) = v77;
            v78 = *(v97 + 28);
            v79 = &__dstb[v78];
            v80 = &v42[v78];
            v79[4] = v80[4];
            *v79 = *v80;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v97);
          }

          v81 = *(v98 + 28);
          v82 = *&v12[v81];
          *&v11[v81] = v82;
          v83 = v82;
          goto LABEL_30;
        case 9u:
          v21 = sub_1DD0DD08C();
          (*(*(v21 - 8) + 16))(v11, v12, v21);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v11, v12, *(*(v13 - 8) + 64));
          break;
      }

      *(a1 + v9[6]) = *(a2 + v9[6]);
      v84 = v9[7];
      v85 = a1 + v84;
      v86 = a2 + v84;
      v87 = *(a2 + v84 + 24);

      if (v87)
      {
        v88 = *(v86 + 32);
        *(v85 + 24) = v87;
        *(v85 + 32) = v88;
        (**(v87 - 8))(v85, v86, v87);
      }

      else
      {
        v89 = *(v86 + 16);
        *v85 = *v86;
        *(v85 + 16) = v89;
        *(v85 + 32) = *(v86 + 32);
      }

      *(a1 + v9[8]) = *(a2 + v9[8]);
      v91 = *(a3 + 16);
      v90 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      v92 = *(swift_getTupleTypeMetadata2() + 48);
      v93 = (a1 + v92);
      v94 = (a2 + v92);
      v95 = v94[1];
      *v93 = *v94;
      v93[1] = v95;
      v93[2] = v94[2];
      sub_1DD0DCF8C();
    case 5u:
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      sub_1DCBB12F4(v15, v16, v17);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      break;
    case 6u:
      v18 = *a2;
      v19 = *a2;
      *a1 = v18;
      *(a1 + 8) = *(a2 + 8);
      break;
    default:
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v6;
      *(a1 + 16) = *(a2 + 16);
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_1DCFD21CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 3u:
        v6 = sub_1DD0DB04C();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = type metadata accessor for Input(0);
        v8 = v7[5];
        v9 = a1 + v8;
        v10 = a2 + v8;
        v11 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v12 = sub_1DD0DC76C();
            (*(*(v12 - 8) + 16))(v9, v10, v12);
            goto LABEL_33;
          case 1u:
            v25 = sub_1DD0DC76C();
            (*(*(v25 - 8) + 16))(v9, v10, v25);
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v9[*(v26 + 48)] = *&v10[*(v26 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v9 = *v10;
            *(v9 + 1) = *(v10 + 1);
            *(v9 + 2) = *(v10 + 2);

            goto LABEL_33;
          case 3u:
            *v9 = *v10;
            swift_unknownObjectRetain();
            goto LABEL_33;
          case 4u:
            v18 = sub_1DD0DB1EC();
            (*(*(v18 - 8) + 16))(v9, v10, v18);
            goto LABEL_33;
          case 5u:
            v27 = *v10;
            *v9 = *v10;
            v28 = v27;
            goto LABEL_33;
          case 6u:
            v29 = sub_1DD0DB4BC();
            (*(*(v29 - 8) + 16))(v9, v10, v29);
            v30 = type metadata accessor for USOParse();
            v31 = v30[5];
            v32 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v10[v31], 1, v32))
            {
              v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v9[v31], &v10[v31], *(*(v33 - 8) + 64));
            }

            else
            {
              (*(*(v32 - 8) + 16))(&v9[v31], &v10[v31], v32);
              __swift_storeEnumTagSinglePayload(&v9[v31], 0, 1, v32);
            }

            v60 = v30[6];
            v61 = &v9[v60];
            v62 = &v10[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);
            v63 = v30[7];
            v64 = &v9[v63];
            v65 = &v10[v63];
            v66 = *v65;
            v64[4] = v65[4];
            *v64 = v66;

            goto LABEL_33;
          case 7u:
            v20 = sub_1DD0DB4BC();
            (*(*(v20 - 8) + 16))(v9, v10, v20);
            v21 = type metadata accessor for USOParse();
            v22 = v21[5];
            v23 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v10[v22], 1, v23))
            {
              v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v9[v22], &v10[v22], *(*(v24 - 8) + 64));
            }

            else
            {
              (*(*(v23 - 8) + 16))(&v9[v22], &v10[v22], v23);
              __swift_storeEnumTagSinglePayload(&v9[v22], 0, 1, v23);
            }

            v43 = v21[6];
            v44 = &v9[v43];
            v45 = &v10[v43];
            *v44 = *v45;
            *(v44 + 1) = *(v45 + 1);
            v46 = v21[7];
            v47 = &v9[v46];
            v48 = &v10[v46];
            v49 = *v48;
            v47[4] = v48[4];
            *v47 = v49;
            v50 = type metadata accessor for LinkParse();
            v51 = v50[5];
            v52 = &v9[v51];
            v53 = &v10[v51];
            *v52 = *v53;
            *(v52 + 1) = *(v53 + 1);
            v54 = v50[6];
            v55 = &v9[v54];
            v56 = &v10[v54];
            *v55 = *v56;
            *(v55 + 1) = *(v56 + 1);
            v57 = v50[7];
            v58 = &v9[v57];
            v59 = &v10[v57];
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);

            goto LABEL_33;
          case 8u:
            v34 = sub_1DD0DD12C();
            (*(*(v34 - 8) + 16))(v9, v10, v34);
            v35 = type metadata accessor for NLRouterParse();
            v36 = *(v35 + 20);
            v37 = &v9[v36];
            v38 = &v10[v36];
            *v37 = *v38;
            *(v37 + 1) = *(v38 + 1);
            v39 = *(v35 + 24);
            v93 = v35;
            __dst = &v9[v39];
            v40 = &v10[v39];
            v41 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v40, 1, v41))
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v40, *(*(v42 - 8) + 64));
            }

            else
            {
              v67 = sub_1DD0DB4BC();
              (*(*(v67 - 8) + 16))(__dst, v40, v67);
              v68 = v41[5];
              v92 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v40[v68], 1, v92))
              {
                v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v68], &v40[v68], *(*(v69 - 8) + 64));
              }

              else
              {
                (*(*(v92 - 8) + 16))(&__dst[v68], &v40[v68]);
                __swift_storeEnumTagSinglePayload(&__dst[v68], 0, 1, v92);
              }

              v70 = v41[6];
              v71 = &__dst[v70];
              v72 = &v40[v70];
              *v71 = *v72;
              *(v71 + 1) = *(v72 + 1);
              v73 = v41[7];
              v74 = &__dst[v73];
              v75 = &v40[v73];
              v76 = *v75;
              v74[4] = v75[4];
              *v74 = v76;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v41);
            }

            v77 = *(v93 + 28);
            v78 = *&v10[v77];
            *&v9[v77] = v78;
            v79 = v78;
            goto LABEL_33;
          case 9u:
            v19 = sub_1DD0DD08C();
            (*(*(v19 - 8) + 16))(v9, v10, v19);
LABEL_33:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v9, v10, *(*(v11 - 8) + 64));
            break;
        }

        *(a1 + v7[6]) = *(a2 + v7[6]);
        v80 = v7[7];
        v81 = a1 + v80;
        v82 = (a2 + v80);
        v83 = *(a2 + v80 + 24);

        if (v83)
        {
          *(v81 + 3) = v83;
          *(v81 + 4) = *(v82 + 4);
          (**(v83 - 8))(v81, v82, v83);
        }

        else
        {
          v84 = *v82;
          v85 = v82[1];
          *(v81 + 4) = *(v82 + 4);
          *v81 = v84;
          *(v81 + 1) = v85;
        }

        *(a1 + v7[8]) = *(a2 + v7[8]);
        v87 = *(a3 + 16);
        v86 = *(a3 + 24);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResolutionRecord();
        v88 = *(swift_getTupleTypeMetadata2() + 48);
        v89 = (a1 + v88);
        v90 = (a2 + v88);
        *v89 = *v90;
        v89[1] = v90[1];
        v89[2] = v90[2];
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 5u:
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 16);
        sub_1DCBB12F4(v13, v14, v15);
        *a1 = v13;
        a1[1] = v14;
        *(a1 + 16) = v15;
        break;
      case 6u:
        v16 = *a2;
        v17 = *a2;
        *a1 = v16;
        *(a1 + 8) = *(a2 + 8);
        break;
      default:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *sub_1DCFD2C7C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 3)
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
        v65 = v16;
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
          v64 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v63 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v64;
            memcpy(&v64[v63], &v19[v63], *(*(v41 - 8) + 64));
          }

          else
          {
            v62 = v40;
            (*(*(v40 - 8) + 32))(&v64[v63], &v19[v63], v40);
            v42 = v64;
            __swift_storeEnumTagSinglePayload(&v64[v63], 0, 1, v62);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v65 + 28)] = *&v10[*(v65 + 28)];
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
    swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord();
    v59 = *(swift_getTupleTypeMetadata2() + 48);
    v60 = &a1[v59];
    v61 = &a2[v59];
    *v60 = *v61;
    *(v60 + 2) = *(v61 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

_BYTE *sub_1DCFD3490(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 3)
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
        v66 = v17;
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
          v65 = v19;
          (*(*(v37 - 8) + 32))(v19, v20, v37);
          v38 = v21[5];
          v39 = sub_1DD0DB3EC();
          v64 = v38;
          v40 = &v20[v38];
          v41 = v39;
          if (__swift_getEnumTagSinglePayload(v40, 1, v39))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v43 = v65;
            memcpy(&v65[v64], &v20[v64], *(*(v42 - 8) + 64));
          }

          else
          {
            v63 = v41;
            (*(*(v41 - 8) + 32))(&v65[v64], &v20[v64], v41);
            v43 = v65;
            __swift_storeEnumTagSinglePayload(&v65[v64], 0, 1, v63);
          }

          *(v43 + v21[6]) = *&v20[v21[6]];
          v51 = v21[7];
          v52 = v43 + v51;
          v53 = &v20[v51];
          *(v52 + 4) = v53[4];
          *v52 = *v53;
          __swift_storeEnumTagSinglePayload(v43, 0, 1, v21);
        }

        *&v10[*(v66 + 28)] = *&v11[*(v66 + 28)];
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
    swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord();
    v60 = *(swift_getTupleTypeMetadata2() + 48);
    v61 = &a1[v60];
    v62 = &a2[v60];
    *v61 = *v62;
    *(v61 + 2) = *(v62 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_1DCFD3D44()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCFCEC3C();
}

uint64_t sub_1DCFD3E04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCFD3E58()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1DCB4AD3C;

  return sub_1DCFCFBB8(v3, v4, v5, v7, v6);
}

uint64_t sub_1DCFD3F1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = type metadata accessor for SiriKitWaitToContinueFlow.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v6 + 84);
  }

  return result;
}

uint64_t *sub_1DCFD3FC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for SiriKitWaitToContinueFlow.State();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = a2[1];
      *a1 = *a2;
      a1[1] = v17;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 2u:
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 3u:
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_34;
        case 1u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 16))(v13, v14, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v31 + 48)] = *&v14[*(v31 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v25 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v25;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_34;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v23 = sub_1DD0DB1EC();
          (*(*(v23 - 8) + 16))(v13, v14, v23);
          goto LABEL_34;
        case 5u:
          v32 = *v14;
          *v13 = *v14;
          v33 = v32;
          goto LABEL_34;
        case 6u:
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 16))(v13, v14, v34);
          __dsta = type metadata accessor for USOParse();
          v35 = __dsta[5];
          v36 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v36))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v35], &v14[v35], *(*(v37 - 8) + 64));
          }

          else
          {
            (*(*(v36 - 8) + 16))(&v13[v35], &v14[v35], v36);
            __swift_storeEnumTagSinglePayload(&v13[v35], 0, 1, v36);
          }

          v67 = __dsta[6];
          v68 = &v13[v67];
          v69 = &v14[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;
          v71 = __dsta[7];
          v72 = &v13[v71];
          v73 = &v14[v71];
          v72[4] = v73[4];
          *v72 = *v73;

          goto LABEL_34;
        case 7u:
          v26 = sub_1DD0DB4BC();
          (*(*(v26 - 8) + 16))(v13, v14, v26);
          __dst = type metadata accessor for USOParse();
          v27 = __dst[5];
          v28 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v27], 1, v28))
          {
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v27], &v14[v27], *(*(v29 - 8) + 64));
          }

          else
          {
            (*(*(v28 - 8) + 16))(&v13[v27], &v14[v27], v28);
            __swift_storeEnumTagSinglePayload(&v13[v27], 0, 1, v28);
          }

          v48 = __dst[6];
          v49 = &v13[v48];
          v50 = &v14[v48];
          v101 = *(v50 + 1);
          *v49 = *v50;
          *(v49 + 1) = v101;
          v51 = __dst[7];
          v52 = &v13[v51];
          v53 = &v14[v51];
          v52[4] = v53[4];
          *v52 = *v53;
          v54 = type metadata accessor for LinkParse();
          v55 = v54[5];
          v56 = &v13[v55];
          v57 = &v14[v55];
          v58 = *(v57 + 1);
          *v56 = *v57;
          *(v56 + 1) = v58;
          v59 = v54[6];
          v60 = &v13[v59];
          v61 = &v14[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = v54[7];
          v64 = &v13[v63];
          v65 = &v14[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;

          goto LABEL_34;
        case 8u:
          v38 = sub_1DD0DD12C();
          (*(*(v38 - 8) + 16))(v13, v14, v38);
          v39 = type metadata accessor for NLRouterParse();
          v40 = *(v39 + 20);
          v41 = &v13[v40];
          v42 = &v14[v40];
          v43 = *(v42 + 1);
          *v41 = *v42;
          *(v41 + 1) = v43;
          v44 = *(v39 + 24);
          v100 = v39;
          __dstb = &v13[v44];
          v45 = &v14[v44];
          v46 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v45, 1, v46))
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v45, *(*(v47 - 8) + 64));
          }

          else
          {
            v74 = sub_1DD0DB4BC();
            (*(*(v74 - 8) + 16))(__dstb, v45, v74);
            v99 = v46;
            v75 = *(v46 + 20);
            v98 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v45[v75], 1, v98))
            {
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v75], &v45[v75], *(*(v76 - 8) + 64));
            }

            else
            {
              (*(*(v98 - 8) + 16))(&__dstb[v75], &v45[v75]);
              __swift_storeEnumTagSinglePayload(&__dstb[v75], 0, 1, v98);
            }

            v77 = *(v99 + 24);
            v78 = &__dstb[v77];
            v79 = &v45[v77];
            v80 = *(v79 + 1);
            *v78 = *v79;
            *(v78 + 1) = v80;
            v81 = *(v99 + 28);
            v82 = &__dstb[v81];
            v83 = &v45[v81];
            v82[4] = v83[4];
            *v82 = *v83;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v99);
          }

          v84 = *(v100 + 28);
          v85 = *&v14[v84];
          *&v13[v84] = v85;
          v86 = v85;
          goto LABEL_34;
        case 9u:
          v24 = sub_1DD0DD08C();
          (*(*(v24 - 8) + 16))(v13, v14, v24);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *(a1 + v11[6]) = *(a2 + v11[6]);
      v87 = v11[7];
      v88 = a1 + v87;
      v89 = a2 + v87;
      v90 = *(a2 + v87 + 24);

      if (v90)
      {
        v91 = *(v89 + 32);
        *(v88 + 3) = v90;
        *(v88 + 4) = v91;
        (**(v90 - 8))(v88, v89, v90);
      }

      else
      {
        v92 = *(v89 + 16);
        *v88 = *v89;
        *(v88 + 1) = v92;
        *(v88 + 4) = *(v89 + 32);
      }

      *(a1 + v11[8]) = *(a2 + v11[8]);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      v93 = *(swift_getTupleTypeMetadata2() + 48);
      v94 = (a1 + v93);
      v95 = (a2 + v93);
      v96 = v95[1];
      *v94 = *v95;
      v94[1] = v96;
      v94[2] = v95[2];
      sub_1DD0DCF8C();
    case 4u:
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 5u:
      v18 = *a2;
      v19 = a2[1];
      v20 = *(a2 + 16);
      sub_1DCBB12F4(v18, v19, v20);
      *a1 = v18;
      a1[1] = v19;
      *(a1 + 16) = v20;
      break;
    case 6u:
      v21 = *a2;
      v22 = *a2;
      *a1 = v21;
      *(a1 + 8) = *(a2 + 8);
      break;
    default:
      v7 = a2[1];
      *a1 = *a2;
      a1[1] = v7;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCFD4A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for SiriKitWaitToContinueFlow.State();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 4u:
      goto LABEL_34;
    case 3u:
      v5 = sub_1DD0DB04C();
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = type metadata accessor for Input(0);
      v7 = (a1 + v6[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v8 = sub_1DD0DC76C();
          goto LABEL_12;
        case 1u:
          v25 = sub_1DD0DC76C();
          (*(*(v25 - 8) + 8))(v7, v25);
          v26 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v13 = *(v7 + 1);

          v14 = *(v7 + 2);
          goto LABEL_24;
        case 3u:
          v15 = *v7;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v8 = sub_1DD0DB1EC();
          goto LABEL_12;
        case 5u:
          v27 = *v7;
          goto LABEL_30;
        case 6u:
          v28 = sub_1DD0DB4BC();
          (*(*(v28 - 8) + 8))(v7, v28);
          v29 = type metadata accessor for USOParse();
          v30 = *(v29 + 20);
          v31 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v7[v30], 1, v31))
          {
            (*(*(v31 - 8) + 8))(&v7[v30], v31);
          }

          v24 = *(v29 + 24);
          goto LABEL_23;
        case 7u:
          v16 = sub_1DD0DB4BC();
          (*(*(v16 - 8) + 8))(v7, v16);
          v17 = type metadata accessor for USOParse();
          v18 = *(v17 + 20);
          v19 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v7[v18], 1, v19))
          {
            (*(*(v19 - 8) + 8))(&v7[v18], v19);
          }

          v20 = *&v7[*(v17 + 24) + 8];

          v21 = type metadata accessor for LinkParse();
          v22 = *&v7[v21[5] + 8];

          v23 = *&v7[v21[6] + 8];

          v24 = v21[7];
LABEL_23:
          v32 = *&v7[v24 + 8];
LABEL_24:

          break;
        case 8u:
          v33 = sub_1DD0DD12C();
          (*(*(v33 - 8) + 8))(v7, v33);
          v34 = type metadata accessor for NLRouterParse();
          v35 = *&v7[v34[5] + 8];

          v36 = &v7[v34[6]];
          v37 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v36, 1, v37))
          {
            v38 = sub_1DD0DB4BC();
            (*(*(v38 - 8) + 8))(v36, v38);
            v39 = *(v37 + 20);
            v40 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v36 + v39, 1, v40))
            {
              (*(*(v40 - 8) + 8))(v36 + v39, v40);
            }

            v41 = *(v36 + *(v37 + 24) + 8);
          }

          v27 = *&v7[v34[7]];
LABEL_30:

          break;
        case 9u:
          v8 = sub_1DD0DD08C();
LABEL_12:
          (*(*(v8 - 8) + 8))(v7, v8);
          break;
        default:
          break;
      }

      v42 = *(a1 + v6[6]);

      v43 = (a1 + v6[7]);
      if (v43[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
      }

      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      a1 += *(swift_getTupleTypeMetadata2() + 48);
LABEL_34:
      v44 = *a1;

      v12 = *(a1 + 16);

      goto LABEL_9;
    case 5u:
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);

      sub_1DCBB1310(v9, v10, v11);
      return;
    case 6u:
      v12 = *a1;

LABEL_9:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCFD5024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for SiriKitWaitToContinueFlow.State();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v9 = sub_1DD0DB04C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = type metadata accessor for Input(0);
      v11 = v10[5];
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      v14 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v15 = sub_1DD0DC76C();
          (*(*(v15 - 8) + 16))(v12, v13, v15);
          goto LABEL_30;
        case 1u:
          v27 = sub_1DD0DC76C();
          (*(*(v27 - 8) + 16))(v12, v13, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v12[*(v28 + 48)] = *&v13[*(v28 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v23 = *(v13 + 1);
          *v12 = *v13;
          *(v12 + 1) = v23;
          *(v12 + 2) = *(v13 + 2);

          goto LABEL_30;
        case 3u:
          *v12 = *v13;
          swift_unknownObjectRetain();
          goto LABEL_30;
        case 4u:
          v21 = sub_1DD0DB1EC();
          (*(*(v21 - 8) + 16))(v12, v13, v21);
          goto LABEL_30;
        case 5u:
          v29 = *v13;
          *v12 = *v13;
          v30 = v29;
          goto LABEL_30;
        case 6u:
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 16))(v12, v13, v31);
          v102 = type metadata accessor for USOParse();
          v32 = v102[5];
          v98 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v32], 1, v98))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v32], &v13[v32], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v98 - 8) + 16))(&v12[v32], &v13[v32]);
            __swift_storeEnumTagSinglePayload(&v12[v32], 0, 1, v98);
          }

          v63 = v102[6];
          v64 = &v12[v63];
          v65 = &v13[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;
          v67 = v102[7];
          v68 = &v12[v67];
          v69 = &v13[v67];
          v68[4] = v69[4];
          *v68 = *v69;

          goto LABEL_30;
        case 7u:
          v24 = sub_1DD0DB4BC();
          (*(*(v24 - 8) + 16))(v12, v13, v24);
          v101 = type metadata accessor for USOParse();
          v25 = v101[5];
          v97 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v97))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v25], &v13[v25], *(*(v26 - 8) + 64));
          }

          else
          {
            (*(*(v97 - 8) + 16))(&v12[v25], &v13[v25]);
            __swift_storeEnumTagSinglePayload(&v12[v25], 0, 1, v97);
          }

          v45 = v101[6];
          v46 = &v12[v45];
          v47 = &v13[v45];
          v100 = *(v47 + 1);
          *v46 = *v47;
          *(v46 + 1) = v100;
          v48 = v101[7];
          v49 = &v12[v48];
          v50 = &v13[v48];
          v49[4] = v50[4];
          *v49 = *v50;
          v51 = type metadata accessor for LinkParse();
          v52 = v51[5];
          v53 = &v12[v52];
          v54 = &v13[v52];
          v104 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v104;
          v55 = v51[6];
          v56 = &v12[v55];
          v57 = &v13[v55];
          v58 = *(v57 + 1);
          *v56 = *v57;
          *(v56 + 1) = v58;
          v59 = v51[7];
          v60 = &v12[v59];
          v61 = &v13[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;

          goto LABEL_30;
        case 8u:
          v34 = sub_1DD0DD12C();
          (*(*(v34 - 8) + 16))(v12, v13, v34);
          v35 = type metadata accessor for NLRouterParse();
          v36 = *(v35 + 20);
          v37 = &v12[v36];
          v38 = &v13[v36];
          v39 = *(v38 + 1);
          *v37 = *v38;
          *(v37 + 1) = v39;
          v95 = v12;
          v96 = v35;
          v40 = *(v35 + 24);
          v103 = &v12[v40];
          v41 = &v13[v40];
          v42 = type metadata accessor for USOParse();

          v99 = v41;
          if (__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v103, v41, *(*(v43 - 8) + 64));
            v44 = v95;
          }

          else
          {
            v70 = sub_1DD0DB4BC();
            (*(*(v70 - 8) + 16))(v103, v41, v70);
            v94 = v42;
            v71 = *(v42 + 20);
            v72 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v99[v71], 1, v72))
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v103[v71], &v99[v71], *(*(v73 - 8) + 64));
            }

            else
            {
              (*(*(v72 - 8) + 16))(&v103[v71], &v99[v71], v72);
              __swift_storeEnumTagSinglePayload(&v103[v71], 0, 1, v72);
            }

            v44 = v95;
            v74 = *(v94 + 24);
            v75 = &v103[v74];
            v76 = &v99[v74];
            v77 = *(v76 + 1);
            *v75 = *v76;
            *(v75 + 1) = v77;
            v78 = *(v94 + 28);
            v79 = &v103[v78];
            v80 = &v99[v78];
            v79[4] = v80[4];
            *v79 = *v80;

            __swift_storeEnumTagSinglePayload(v103, 0, 1, v94);
          }

          v81 = *(v96 + 28);
          v82 = *&v13[v81];
          *(v44 + v81) = v82;
          v83 = v82;
          goto LABEL_30;
        case 9u:
          v22 = sub_1DD0DD08C();
          (*(*(v22 - 8) + 16))(v12, v13, v22);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v12, v13, *(*(v14 - 8) + 64));
          break;
      }

      *(a1 + v10[6]) = *(a2 + v10[6]);
      v84 = v10[7];
      v85 = a1 + v84;
      v86 = a2 + v84;
      v87 = *(a2 + v84 + 24);

      if (v87)
      {
        v88 = *(v86 + 32);
        *(v85 + 24) = v87;
        *(v85 + 32) = v88;
        (**(v87 - 8))(v85, v86, v87);
      }

      else
      {
        v89 = *(v86 + 16);
        *v85 = *v86;
        *(v85 + 16) = v89;
        *(v85 + 32) = *(v86 + 32);
      }

      *(a1 + v10[8]) = *(a2 + v10[8]);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord();
      v90 = *(swift_getTupleTypeMetadata2() + 48);
      v91 = (a1 + v90);
      v92 = (a2 + v90);
      v93 = v92[1];
      *v91 = *v92;
      v91[1] = v93;
      v91[2] = v92[2];
      sub_1DD0DCF8C();
    case 5u:
      v16 = *a2;
      v17 = *(a2 + 8);
      v18 = *(a2 + 16);
      sub_1DCBB12F4(v16, v17, v18);
      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      break;
    case 6u:
      v19 = *a2;
      v20 = *a2;
      *a1 = v19;
      *(a1 + 8) = *(a2 + 8);
      break;
    default:
      v7 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v7;
      *(a1 + 16) = *(a2 + 16);
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_1DCFD59DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = type metadata accessor for SiriKitWaitToContinueFlow.State();
    (*(*(v7 - 8) + 8))(a1, v7);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 3u:
        v8 = sub_1DD0DB04C();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = type metadata accessor for Input(0);
        v10 = v9[5];
        v11 = a1 + v10;
        v12 = a2 + v10;
        v13 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v14 = sub_1DD0DC76C();
            (*(*(v14 - 8) + 16))(v11, v12, v14);
            goto LABEL_33;
          case 1u:
            v26 = sub_1DD0DC76C();
            (*(*(v26 - 8) + 16))(v11, v12, v26);
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v11[*(v27 + 48)] = *&v12[*(v27 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v11 = *v12;
            *(v11 + 1) = *(v12 + 1);
            *(v11 + 2) = *(v12 + 2);

            goto LABEL_33;
          case 3u:
            *v11 = *v12;
            swift_unknownObjectRetain();
            goto LABEL_33;
          case 4u:
            v20 = sub_1DD0DB1EC();
            (*(*(v20 - 8) + 16))(v11, v12, v20);
            goto LABEL_33;
          case 5u:
            v28 = *v12;
            *v11 = *v12;
            v29 = v28;
            goto LABEL_33;
          case 6u:
            v30 = sub_1DD0DB4BC();
            (*(*(v30 - 8) + 16))(v11, v12, v30);
            __dsta = type metadata accessor for USOParse();
            v31 = __dsta[5];
            v32 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v12[v31], 1, v32))
            {
              v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v11[v31], &v12[v31], *(*(v33 - 8) + 64));
            }

            else
            {
              (*(*(v32 - 8) + 16))(&v11[v31], &v12[v31], v32);
              __swift_storeEnumTagSinglePayload(&v11[v31], 0, 1, v32);
            }

            v60 = __dsta[6];
            v61 = &v11[v60];
            v62 = &v12[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);
            v63 = __dsta[7];
            v64 = &v11[v63];
            v65 = &v12[v63];
            v66 = *v65;
            v64[4] = v65[4];
            *v64 = v66;

            goto LABEL_33;
          case 7u:
            v22 = sub_1DD0DB4BC();
            (*(*(v22 - 8) + 16))(v11, v12, v22);
            __dst = type metadata accessor for USOParse();
            v23 = __dst[5];
            v24 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v24))
            {
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v11[v23], &v12[v23], *(*(v25 - 8) + 64));
            }

            else
            {
              (*(*(v24 - 8) + 16))(&v11[v23], &v12[v23], v24);
              __swift_storeEnumTagSinglePayload(&v11[v23], 0, 1, v24);
            }

            v43 = __dst[6];
            v44 = &v11[v43];
            v45 = &v12[v43];
            *v44 = *v45;
            *(v44 + 1) = *(v45 + 1);
            v46 = __dst[7];
            v47 = &v11[v46];
            v48 = &v12[v46];
            v49 = *v48;
            v47[4] = v48[4];
            *v47 = v49;
            v50 = type metadata accessor for LinkParse();
            v51 = v50[5];
            v52 = &v11[v51];
            v53 = &v12[v51];
            *v52 = *v53;
            *(v52 + 1) = *(v53 + 1);
            v54 = v50[6];
            v55 = &v11[v54];
            v56 = &v12[v54];
            *v55 = *v56;
            *(v55 + 1) = *(v56 + 1);
            v57 = v50[7];
            v58 = &v11[v57];
            v59 = &v12[v57];
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);

            goto LABEL_33;
          case 8u:
            v34 = sub_1DD0DD12C();
            (*(*(v34 - 8) + 16))(v11, v12, v34);
            v35 = type metadata accessor for NLRouterParse();
            v36 = *(v35 + 20);
            v37 = &v11[v36];
            v38 = &v12[v36];
            *v37 = *v38;
            *(v37 + 1) = *(v38 + 1);
            v39 = *(v35 + 24);
            v95 = v35;
            __dstb = &v11[v39];
            v40 = &v12[v39];
            v41 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v40, 1, v41))
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v40, *(*(v42 - 8) + 64));
            }

            else
            {
              v67 = sub_1DD0DB4BC();
              (*(*(v67 - 8) + 16))(__dstb, v40, v67);
              v93 = v41;
              v68 = *(v41 + 20);
              v69 = sub_1DD0DB3EC();
              v94 = v40;
              v70 = &v40[v68];
              v71 = v69;
              if (__swift_getEnumTagSinglePayload(v70, 1, v69))
              {
                v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v68], &v94[v68], *(*(v72 - 8) + 64));
              }

              else
              {
                (*(*(v71 - 8) + 16))(&__dstb[v68], &v94[v68], v71);
                __swift_storeEnumTagSinglePayload(&__dstb[v68], 0, 1, v71);
              }

              v73 = *(v93 + 24);
              v74 = &__dstb[v73];
              v75 = &v94[v73];
              *v74 = *v75;
              *(v74 + 1) = *(v75 + 1);
              v76 = *(v93 + 28);
              v77 = &__dstb[v76];
              v78 = &v94[v76];
              v79 = *v78;
              v77[4] = v78[4];
              *v77 = v79;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v93);
            }

            v80 = *(v95 + 28);
            v81 = *&v12[v80];
            *&v11[v80] = v81;
            v82 = v81;
            goto LABEL_33;
          case 9u:
            v21 = sub_1DD0DD08C();
            (*(*(v21 - 8) + 16))(v11, v12, v21);
LABEL_33:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v11, v12, *(*(v13 - 8) + 64));
            break;
        }

        *(a1 + v9[6]) = *(a2 + v9[6]);
        v83 = v9[7];
        v84 = a1 + v83;
        v85 = (a2 + v83);
        v86 = *(a2 + v83 + 24);

        if (v86)
        {
          *(v84 + 3) = v86;
          *(v84 + 4) = *(v85 + 4);
          (**(v86 - 8))(v84, v85, v86);
        }

        else
        {
          v87 = *v85;
          v88 = v85[1];
          *(v84 + 4) = *(v85 + 4);
          *v84 = v87;
          *(v84 + 1) = v88;
        }

        *(a1 + v9[8]) = *(a2 + v9[8]);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResolutionRecord();
        v89 = *(swift_getTupleTypeMetadata2() + 48);
        v90 = (a1 + v89);
        v91 = (a2 + v89);
        *v90 = *v91;
        v90[1] = v91[1];
        v90[2] = v91[2];
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 5u:
        v15 = *a2;
        v16 = a2[1];
        v17 = *(a2 + 16);
        sub_1DCBB12F4(v15, v16, v17);
        *a1 = v15;
        a1[1] = v16;
        *(a1 + 16) = v17;
        break;
      case 6u:
        v18 = *a2;
        v19 = *a2;
        *a1 = v18;
        *(a1 + 8) = *(a2 + 8);
        break;
      default:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *sub_1DCFD64D4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for Input(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 32))(v11, v12, v14);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v11, v12, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v11[*(v23 + 48)] = *&v12[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v11, v12, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v11, v12, v26);
        v57 = type metadata accessor for USOParse();
        v27 = v57[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v27], &v12[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v11[v27], &v12[v27], v28);
          __swift_storeEnumTagSinglePayload(&v11[v27], 0, 1, v28);
        }

        *&v11[v57[6]] = *&v12[v57[6]];
        v36 = v57[7];
        v37 = &v11[v36];
        v38 = &v12[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        goto LABEL_26;
      case 7u:
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v11, v12, v30);
        v58 = type metadata accessor for USOParse();
        v31 = v58[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v31], &v12[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v11[v31], &v12[v31], v32);
          __swift_storeEnumTagSinglePayload(&v11[v31], 0, 1, v32);
        }

        *&v11[v58[6]] = *&v12[v58[6]];
        v39 = v58[7];
        v40 = &v11[v39];
        v41 = &v12[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        v42 = type metadata accessor for LinkParse();
        *&v11[v42[5]] = *&v12[v42[5]];
        *&v11[v42[6]] = *&v12[v42[6]];
        *&v11[v42[7]] = *&v12[v42[7]];
        goto LABEL_26;
      case 8u:
        v17 = sub_1DD0DD12C();
        (*(*(v17 - 8) + 32))(v11, v12, v17);
        v18 = type metadata accessor for NLRouterParse();
        *&v11[*(v18 + 20)] = *&v12[*(v18 + 20)];
        v19 = *(v18 + 24);
        v56 = v18;
        __dst = &v11[v19];
        v20 = &v12[v19];
        v55 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v20, 1, v55))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v20, *(*(v21 - 8) + 64));
        }

        else
        {
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 32))(__dst, v20, v34);
          v54 = v55[5];
          v53 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v54], 1, v53))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v54], &v20[v54], *(*(v35 - 8) + 64));
          }

          else
          {
            (*(*(v53 - 8) + 32))(&__dst[v54], &v20[v54]);
            __swift_storeEnumTagSinglePayload(&__dst[v54], 0, 1, v53);
          }

          *&__dst[v55[6]] = *&v20[v55[6]];
          v43 = v55[7];
          v44 = &__dst[v43];
          v45 = &v20[v43];
          v44[4] = v45[4];
          *v44 = *v45;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v55);
        }

        *&v11[*(v56 + 28)] = *&v12[*(v56 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v11, v12, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v11, v12, *(*(v13 - 8) + 64));
        break;
    }

    *&a1[v9[6]] = *&a2[v9[6]];
    v46 = v9[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    a1[v9[8]] = a2[v9[8]];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord();
    v50 = *(swift_getTupleTypeMetadata2() + 48);
    v51 = &a1[v50];
    v52 = &a2[v50];
    *v51 = *v52;
    *(v51 + 2) = *(v52 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v15 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v15);
  }
}

_BYTE *sub_1DCFD6D08(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State();
  v8 = *(v7 - 8);
  (*(v8 + 8))(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v9 = sub_1DD0DB04C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = type metadata accessor for Input(0);
    v11 = v10[5];
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(v12, v13, v15);
        goto LABEL_27;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 32))(v12, v13, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v12[*(v24 + 48)] = *&v13[*(v24 + 48)];
        goto LABEL_27;
      case 4u:
        v26 = sub_1DD0DB1EC();
        (*(*(v26 - 8) + 32))(v12, v13, v26);
        goto LABEL_27;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v12, v13, v27);
        v58 = type metadata accessor for USOParse();
        v28 = v58[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v28], &v13[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v12[v28], &v13[v28], v29);
          __swift_storeEnumTagSinglePayload(&v12[v28], 0, 1, v29);
        }

        *&v12[v58[6]] = *&v13[v58[6]];
        v37 = v58[7];
        v38 = &v12[v37];
        v39 = &v13[v37];
        v38[4] = v39[4];
        *v38 = *v39;
        goto LABEL_27;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v12, v13, v31);
        v59 = type metadata accessor for USOParse();
        v32 = v59[5];
        v33 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v32], 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v32], &v13[v32], *(*(v34 - 8) + 64));
        }

        else
        {
          (*(*(v33 - 8) + 32))(&v12[v32], &v13[v32], v33);
          __swift_storeEnumTagSinglePayload(&v12[v32], 0, 1, v33);
        }

        *&v12[v59[6]] = *&v13[v59[6]];
        v40 = v59[7];
        v41 = &v12[v40];
        v42 = &v13[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        v43 = type metadata accessor for LinkParse();
        *&v12[v43[5]] = *&v13[v43[5]];
        *&v12[v43[6]] = *&v13[v43[6]];
        *&v12[v43[7]] = *&v13[v43[7]];
        goto LABEL_27;
      case 8u:
        v18 = sub_1DD0DD12C();
        (*(*(v18 - 8) + 32))(v12, v13, v18);
        v19 = type metadata accessor for NLRouterParse();
        *&v12[*(v19 + 20)] = *&v13[*(v19 + 20)];
        v20 = *(v19 + 24);
        v57 = v19;
        __dst = &v12[v20];
        v21 = &v13[v20];
        v56 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v21, 1, v56))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v21, *(*(v22 - 8) + 64));
        }

        else
        {
          v35 = sub_1DD0DB4BC();
          (*(*(v35 - 8) + 32))(__dst, v21, v35);
          v55 = v56[5];
          v54 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v21[v55], 1, v54))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v55], &v21[v55], *(*(v36 - 8) + 64));
          }

          else
          {
            (*(*(v54 - 8) + 32))(&__dst[v55], &v21[v55]);
            __swift_storeEnumTagSinglePayload(&__dst[v55], 0, 1, v54);
          }

          *&__dst[v56[6]] = *&v21[v56[6]];
          v44 = v56[7];
          v45 = &__dst[v44];
          v46 = &v21[v44];
          v45[4] = v46[4];
          *v45 = *v46;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v56);
        }

        *&v12[*(v57 + 28)] = *&v13[*(v57 + 28)];
        goto LABEL_27;
      case 9u:
        v25 = sub_1DD0DD08C();
        (*(*(v25 - 8) + 32))(v12, v13, v25);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v12, v13, *(*(v14 - 8) + 64));
        break;
    }

    *&a1[v10[6]] = *&a2[v10[6]];
    v47 = v10[7];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    *(v48 + 4) = *(v49 + 4);
    a1[v10[8]] = a2[v10[8]];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord();
    v51 = *(swift_getTupleTypeMetadata2() + 48);
    v52 = &a1[v51];
    v53 = &a2[v51];
    *v52 = *v53;
    *(v52 + 2) = *(v53 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v8 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_1DCFD7578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State();

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_1DCFD75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SiriKitWaitToContinueFlow.State();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v9);
}

void sub_1DCFD7620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  sub_1DCB09910(a3, &v12 - v9, &unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = sub_1DD0DE4BC();
  __swift_getEnumTagSinglePayload(v10, 1, v11);
  sub_1DD0DCF8C();
}

void sub_1DCFD7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1DCB09910(a3, &v10 - v7, &unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = sub_1DD0DE4BC();
  __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1DD0DCF8C();
}

void *sub_1DCFD7B10(void *a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v7 + 8))(v11, v6);
  v3[8] = sub_1DCB598EC(8);
  v3[9] = v12;
  v3[10] = v13;
  v3[11] = v14;
  v15 = *(*v3 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDC8, &qword_1DD109020);
  swift_allocObject();
  v3[2] = sub_1DCFD7D5C(a1);
  sub_1DCAFF9E8(a2, (v3 + 3));
  return v3;
}

void *sub_1DCFD7C88(void *a1)
{
  v1[16] = *a1;
  v1[2] = sub_1DCFE3F28;
  v1[3] = a1;
  v1[4] = &unk_1DD1090A0;
  v1[5] = a1;
  v1[6] = &unk_1DD1090B0;
  v1[7] = a1;
  v1[8] = &unk_1DD1090C0;
  v1[9] = a1;
  v1[10] = &unk_1DD1090D0;
  v1[11] = a1;
  v1[12] = &unk_1DD1090E0;
  v1[13] = a1;
  v1[14] = &unk_1DD1090F0;
  v1[15] = a1;
  swift_retain_n();
  return v1;
}

void *sub_1DCFD7D5C(void *a1)
{
  v1[16] = *a1;
  v1[2] = sub_1DCFE2934;
  v1[3] = a1;
  v1[4] = &unk_1DD109030;
  v1[5] = a1;
  v1[6] = &unk_1DD109040;
  v1[7] = a1;
  v1[8] = &unk_1DD109050;
  v1[9] = a1;
  v1[10] = &unk_1DD109060;
  v1[11] = a1;
  v1[12] = &unk_1DD109070;
  v1[13] = a1;
  v1[14] = &unk_1DD109080;
  v1[15] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_1DCFD7E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD07E0C0();
}

uint64_t sub_1DCFD7EDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCF08C;

  return sub_1DCFDF094(a1);
}

uint64_t sub_1DCFD7F74(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DD07F068();
}

uint64_t sub_1DCFD8038()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCFDF6F0();
}

uint64_t sub_1DCFD80D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD07F964();
}

uint64_t sub_1DCFD8170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCFE1E14(a1);
}

uint64_t sub_1DCFD8208()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DD080798();
}

uint64_t sub_1DCFD82B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCFE1F38(a1);
}

unint64_t sub_1DCFD834C(char a1)
{
  if (a1 < 0)
  {
    sub_1DD0DEC1C();

    v7 = 0xD000000000000016;
    if (a1)
    {
      v4 = 0x776F6C6C6F467369;
    }

    else
    {
      v4 = 0x6C6F46746F4E7369;
    }

    if (a1)
    {
      v5 = 0xEA00000000007055;
    }

    else
    {
      v5 = 0xED00007055776F6CLL;
    }

    MEMORY[0x1E12A6780](v4, v5);
  }

  else
  {
    sub_1DD0DEC1C();

    v7 = 0xD000000000000011;
    if (a1)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a1)
    {
      v3 = "notRequestingPrecise";
    }

    else
    {
      v3 = ".readyToCheckAccess/";
    }

    MEMORY[0x1E12A6780](v2, v3 | 0x8000000000000000);
  }

  return v7;
}

uint64_t sub_1DCFD8488(char a1, uint64_t a2, char a3)
{
  type metadata accessor for PromptForSiriLocationAccessStrategy();
  sub_1DCB17CA0(a2, v7);
  return sub_1DCFD84E0(a1, v7, a3);
}

uint64_t sub_1DCFD84E0(char a1, uint64_t *a2, char a3)
{
  sub_1DCB17CA0(a2, v13);
  v6 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v11 = v6;
  v12 = &protocol witness table for ResponseFactory;
  v9[3] = &type metadata for TCCLocationAccessTemplates;
  v9[4] = &off_1F5875408;
  *&v10 = ResponseFactory.init()();
  type metadata accessor for PromptForSiriLocationAccessStrategy();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for TCCLocationAccessTemplates);
  *(v7 + 136) = &type metadata for TCCLocationAccessTemplates;
  *(v7 + 144) = &off_1F5875408;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v7 + 16) = a1;
  sub_1DCAFF9E8(v13, v7 + 24);
  sub_1DCAFF9E8(&v10, v7 + 72);
  *(v7 + 64) = a3;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

unint64_t sub_1DCFD85C8()
{
  sub_1DCFE359C(v0, v15);
  v1 = 0x6F5479646165722ELL;
  switch(v16)
  {
    case 1:
      v1 = 0xD000000000000011;
      break;
    case 2:
      return v1;
    case 3:
      v1 = 0xD000000000000011;
      break;
    case 4:
      sub_1DCFE35D4(v15);
      v1 = 0xD000000000000014;
      break;
    case 5:
      v5 = *(&v15[0] + 1);
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000001ELL, 0x80000001DD1290C0);
      v6 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v6);

      MEMORY[0x1E12A6780](0xD000000000000016, 0x80000001DD1290E0);
      v10[0] = v5;
      sub_1DCBF4488(v5);
      v7 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v7);

      MEMORY[0x1E12A6780](93, 0xE100000000000000);
      sub_1DCBF44A0(v5);
      goto LABEL_14;
    case 6:
      sub_1DCAFF9E8(v15, &v13);
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_1DD0DEC1C();

      v11 = 0xD000000000000023;
      v12 = 0x80000001DD129090;
      sub_1DCB17CA0(&v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDA8, &qword_1DD108FE0);
      v8 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v8);

      v1 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
      break;
    default:
      v2 = LOBYTE(v15[0]);
      sub_1DD0DEC1C();

      v13 = 0xD000000000000014;
      v14 = 0x80000001DD129160;
      if (v2)
      {
        v3 = 0xD000000000000011;
      }

      else
      {
        v3 = 0xD000000000000014;
      }

      if (v2)
      {
        v4 = "notRequestingPrecise";
      }

      else
      {
        v4 = ".readyToCheckAccess/";
      }

      MEMORY[0x1E12A6780](v3, v4 | 0x8000000000000000);

LABEL_14:
      v1 = v13;
      break;
  }

  return v1;
}

unint64_t sub_1DCFD8894()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 15);
  sub_1DCFE359C(&v1[4], v16);
  os_unfair_lock_unlock(v1 + 15);
  sub_1DCFE359C(v16, v13);
  if (v14 == 6)
  {
    sub_1DCFE35D4(v16);
    sub_1DCAFF9E8(v13, v15);
    v2 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1DCBF4488(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    sub_1DCFE35D4(v13);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v2 = 0xF000000000000006;
    v3 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    v5 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      *v7 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    sub_1DCFE35D4(v16);
  }

  return v2;
}

uint64_t sub_1DCFD89E0()
{
  OUTLINED_FUNCTION_42();
  v1[53] = v2;
  v1[54] = v0;
  v3 = type metadata accessor for ExecuteResponse(0);
  v1[55] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[56] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCFD8A5C()
{
  OUTLINED_FUNCTION_125();
  v70 = v1;
  v2 = *(*(v1 + 432) + 216);
  os_unfair_lock_lock(v2 + 15);
  sub_1DCFE359C(&v2[4], v1 + 16);
  os_unfair_lock_unlock(v2 + 15);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  *(v1 + 456) = OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  sub_1DCFE359C(v1 + 16, v1 + 64);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_51_14(v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v69 = OUTLINED_FUNCTION_83();
    *v6 = 136315138;
    sub_1DCFE359C(v1 + 64, v1 + 352);
    v7 = sub_1DD0DE02C();
    v9 = v8;
    sub_1DCFE35D4(v1 + 64);
    v10 = sub_1DCB10E9C(v7, v9, &v69);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v0, "#SiriLocationAccessCheckFlow execute - executing under state=%s", v6, 0xCu);
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    v11 = OUTLINED_FUNCTION_12_68();
    MEMORY[0x1E12A8390](v11);
  }

  else
  {

    sub_1DCFE35D4(v1 + 64);
  }

  sub_1DCFE359C(v1 + 16, v1 + 112);
  switch(*(v1 + 152))
  {
    case 1:
    case 3:
      sub_1DCFE359C(v1 + 16, v1 + 160);
      v12 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v13 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_151();
        v16 = OUTLINED_FUNCTION_83();
        v69 = v16;
        *v15 = 136315138;
        sub_1DCFE359C(v1 + 160, v1 + 208);
        v17 = sub_1DD0DE02C();
        v19 = v18;
        sub_1DCFE35D4(v1 + 160);
        v20 = sub_1DCB10E9C(v17, v19, &v69);

        *(v15 + 4) = v20;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v21, v22, v23, v24, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        v25 = OUTLINED_FUNCTION_12_68();
        MEMORY[0x1E12A8390](v25);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      else
      {

        sub_1DCFE35D4(v1 + 160);
      }

      sub_1DCFE35D4(v1 + 16);
      v26 = *(v1 + 424);
      v27 = *(*(v1 + 440) + 36);
      type metadata accessor for PluginAction();
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      *v26 = 1;
      OUTLINED_FUNCTION_16_59();
      goto LABEL_18;
    case 2:
      v32 = *(v1 + 424);
      v33 = *(v1 + 432);
      sub_1DCFDA44C(*(v1 + 112));
    case 4:
      *(v1 + 57) = *(v1 + 112);
      *(v1 + 480) = *(v1 + 120);
      v56 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v57 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v59);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        v65 = OUTLINED_FUNCTION_12_68();
        MEMORY[0x1E12A8390](v65);
      }

      v66 = *(MEMORY[0x1E69E86B0] + 4);
      v67 = swift_task_alloc();
      *(v1 + 488) = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      *v67 = v1;
      v67[1] = sub_1DCFD90B4;
      OUTLINED_FUNCTION_96_0();

      return MEMORY[0x1EEE6DA20]();
    case 5:
      v43 = *(v1 + 432);
      v44 = *(v1 + 120);
      sub_1DCFDDC2C(v44, *(v1 + 112), *(v1 + 424));
      sub_1DCBF44A0(v44);
      v45 = v1 + 16;
      goto LABEL_17;
    case 6:
      v46 = *(v1 + 440);
      v47 = *(v1 + 424);
      sub_1DCFE35D4(v1 + 16);
      v48 = *(v46 + 36);
      type metadata accessor for PluginAction();
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
      *v47 = 1;
      OUTLINED_FUNCTION_16_59();
      v45 = v1 + 112;
LABEL_17:
      sub_1DCFE35D4(v45);
LABEL_18:
      v53 = *(v1 + 448);

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_96_0();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v34 = *(v1 + 112);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v1 + 464) = v35;
      *v35 = v36;
      v35[1] = sub_1DCFD8F34;
      v37 = *(v1 + 448);
      v38 = *(v1 + 432);
      OUTLINED_FUNCTION_96_0();

      return sub_1DCFD9744(v39, v40);
  }
}

uint64_t sub_1DCFD8F34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 472) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFD902C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  sub_1DCFE35D4(v0 + 16);
  sub_1DCFE3EC8(v1, v2, type metadata accessor for ExecuteResponse);
  v3 = *(v0 + 448);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCFD90B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCFD9198()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 480);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  if (v5)
  {
    v6 = v4 | 0x8000000000000000;
  }

  else
  {
    v6 = *(v0 + 400);
  }

  v7 = *(v0 + 57);
  sub_1DCFE3EB0(*(v0 + 400), *(v0 + 408));
  sub_1DCFDDC2C(v6, v7, v3);
  sub_1DCFE3EBC(v4, v5);

  sub_1DCFE3EBC(v4, v5);
  sub_1DCFE35D4(v0 + 16);
  v8 = *(v0 + 448);

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCFD926C()
{
  OUTLINED_FUNCTION_41();
  v29 = v0;
  v1 = v0[59];
  v2 = v0[57];
  sub_1DCFE359C((v0 + 2), (v0 + 32));
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_62_0())
  {
    v5 = v0[59];
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    v28 = swift_slowAlloc();
    *v6 = 136315394;
    sub_1DCFE359C((v0 + 32), (v0 + 38));
    v7 = sub_1DD0DE02C();
    v9 = v8;
    sub_1DCFE35D4((v0 + 32));
    v10 = sub_1DCB10E9C(v7, v9, &v28);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[52] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v12 = sub_1DD0DE02C();
    v14 = sub_1DCB10E9C(v12, v13, &v28);

    *(v6 + 14) = v14;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v15, v16, v17, v18, v6, 0x16u);
    swift_arrayDestroy();
    v19 = OUTLINED_FUNCTION_12_68();
    MEMORY[0x1E12A8390](v19);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v20);
  }

  else
  {

    sub_1DCFE35D4((v0 + 32));
  }

  v21 = v0[59];
  v23 = v0[53];
  v22 = v0[54];
  v24 = v21;
  sub_1DCFD947C();

  sub_1DCFE35D4((v0 + 2));
  v25 = v0[56];

  OUTLINED_FUNCTION_29();

  return v26();
}

double sub_1DCFD947C()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 15);
  sub_1DCFE3E90(&v1[4]);
  os_unfair_lock_unlock(v1 + 15);
  return static ExecuteResponse.complete()();
}

uint64_t sub_1DCFD94E0(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 16);
  v26 = *a1;
  v27[0] = v5;
  *(v27 + 9) = *(a1 + 25);
  v6 = *(a2 + 200);
  sub_1DCFE2A8C(a3, a4, a1);
  *(a1 + 40) = 6;
  sub_1DCFE359C(a1, v25);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DCFE359C(v25, v24);
  sub_1DCFE359C(&v26, v23);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    sub_1DCFE359C(v24, v21);
    v12 = sub_1DD0DE02C();
    v14 = v13;
    sub_1DCFE35D4(v24);
    v15 = sub_1DCB10E9C(v12, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    sub_1DCFE359C(v23, v21);
    v16 = sub_1DD0DE02C();
    v18 = v17;
    sub_1DCFE35D4(v23);
    v19 = sub_1DCB10E9C(v16, v18, &v22);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "#SiriLocationAccessCheckFlow exitWithValue - transitioned to state=%s; \n lastState=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v23);
    sub_1DCFE35D4(v24);
  }

  sub_1DCFE35D4(v25);
  return sub_1DCFE35D4(&v26);
}

uint64_t sub_1DCFD9744(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCFD9760);
}

uint64_t sub_1DCFD9760()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_57_1((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_31_0(v1);

  return sub_1DCDC75C8();
}

uint64_t sub_1DCFD97F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCFD9910()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  if ((~v1 & 0xF000000000000006) == 0)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_1DCFD99B8(*(v0 + 48));
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) == 0 && *(v0 + 48) && (v1 & 1) == 0)
  {
    sub_1DCFD99B8(128);
  }

  v6 = *(v0 + 40);
  sub_1DCFD947C();
  sub_1DCBB1234(v1);
  OUTLINED_FUNCTION_43();

  return v7();
}

void sub_1DCFD99B8(char a1)
{
  v2 = v1;
  sub_1DCB17CA0(v2 + 16, v16);
  type metadata accessor for GuardedAuthenticationFlow();
  v4 = swift_allocObject();
  sub_1DCFE3A24(v16, sub_1DCFE3E50, v2, v4);
  v5 = *(v2 + 216);
  swift_retain_n();
  os_unfair_lock_lock(v5 + 15);
  sub_1DCFDA6C8(&v5[4], a1, 1, "#SiriLocationAccessCheckFlow waitForUnlock - transitioned to state=%s; \n lastState=%s");
  os_unfair_lock_unlock(v5 + 15);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v8 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_50_0();
    *v10 = 0;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v11, v12, v13, v14, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DCFE3E58;
  *(v15 + 24) = v2;
  sub_1DD0DCF8C();
}

void sub_1DCFD9B7C(uint64_t a1)
{
  sub_1DD01D740();
  sub_1DCB17CA0(a1 + 16, v12);
  sub_1DCB17CA0(a1 + 96, v10);
  v2 = type metadata accessor for UnlockDeviceFlowAsync(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v11;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v6);
  (*(v9 + 16))(v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD01F0F0();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
  swift_allocObject();
  sub_1DCC4AC30();
}

void sub_1DCFD9D00(char a1)
{
  v2 = v1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v6 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_151();
    v18 = OUTLINED_FUNCTION_83();
    *v8 = 136315138;
    if (a1)
    {
      v9 = 1818845542;
    }

    else
    {
      v9 = 1936941424;
    }

    v10 = sub_1DCB10E9C(v9, 0xE400000000000000, &v18);

    *(v8 + 4) = v10;
    OUTLINED_FUNCTION_34_3();
    _os_log_impl(v11, v12, v13, v14, v8, 0xCu);
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v15);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v16);
  }

  v17 = *(v2 + 216);
  os_unfair_lock_lock(v17 + 15);
  sub_1DCFD9E5C(&v17[4], a1 & 1, v2);

  os_unfair_lock_unlock(v17 + 15);
}

uint64_t sub_1DCFD9E5C(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCFE359C(a1, v50);
  sub_1DCFE359C(a1, v48);
  if (v49 != 1)
  {
    sub_1DCFE35D4(v48);
    sub_1DCFE359C(a1, v48);
    if (v49 == 6)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      sub_1DCFE359C(v50, v47);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v45[0] = v19;
        *v18 = 136315138;
        sub_1DCFE359C(v47, v46);
        v20 = sub_1DD0DE02C();
        v22 = v21;
        sub_1DCFE35D4(v47);
        v23 = sub_1DCB10E9C(v20, v22, v45);

        *(v18 + 4) = v23;
        v24 = "#SiriLocationAccessCheckFlow onUnlockResult - ignoring late unlockResult during state=%s";
LABEL_22:
        _os_log_impl(&dword_1DCAFC000, v16, v17, v24, v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1E12A8390](v19, -1, -1);
        MEMORY[0x1E12A8390](v18, -1, -1);

LABEL_26:
        sub_1DCFE35D4(v50);
        v43 = v48;
        return sub_1DCFE35D4(v43);
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v38 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v38, qword_1EDE57E00);
      sub_1DCFE359C(v50, v47);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v45[0] = v19;
        *v18 = 136315138;
        sub_1DCFE359C(v47, v46);
        v39 = sub_1DD0DE02C();
        v41 = v40;
        sub_1DCFE35D4(v47);
        v42 = sub_1DCB10E9C(v39, v41, v45);

        *(v18 + 4) = v42;
        v24 = "#SiriLocationAccessCheckFlow onUnlockResult - unsupported unlockResult during state=%s";
        goto LABEL_22;
      }
    }

    sub_1DCFE35D4(v47);
    goto LABEL_26;
  }

  sub_1DCFE35D4(a1);
  v6 = v48[0];
  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "#SiriLocationAccessCheckFlow onUnlockResult - cannot issue privacy prompt with locked device", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    v11 = *(a3 + 200);
    sub_1DCFE3758();
    v12 = swift_allocError();
    *v13 = 0;
    sub_1DCFE2A8C(v12 | 0x8000000000000000, v6, a1);

    v14 = 6;
  }

  else
  {
    *a1 = v48[0];
    v14 = 2;
  }

  *(a1 + 40) = v14;
  sub_1DCFE359C(a1, v48);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v25 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v25, qword_1EDE57E00);
  sub_1DCFE359C(v48, v47);
  sub_1DCFE359C(v50, v46);
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v29;
    *v28 = 136315394;
    sub_1DCFE359C(v47, v45);
    v30 = sub_1DD0DE02C();
    v32 = v31;
    sub_1DCFE35D4(v47);
    v33 = sub_1DCB10E9C(v30, v32, &v51);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    sub_1DCFE359C(v46, v45);
    v34 = sub_1DD0DE02C();
    v36 = v35;
    sub_1DCFE35D4(v46);
    v37 = sub_1DCB10E9C(v34, v36, &v51);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1DCAFC000, v26, v27, "#SiriLocationAccessCheckFlow onUnlockResult - transitioned to state=%s; \n lastState=%s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v29, -1, -1);
    MEMORY[0x1E12A8390](v28, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v46);
    sub_1DCFE35D4(v47);
  }

  sub_1DCFE35D4(v48);
  v43 = v50;
  return sub_1DCFE35D4(v43);
}

void sub_1DCFDA44C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 216);
  os_unfair_lock_lock(v4 + 15);
  sub_1DCFDA6C8(&v4[4], a1, 3, "#SiriLocationAccessCheckFlow executeAccessPrompt - transitioned to state=%s; \n lastState=%s");
  os_unfair_lock_unlock(v4 + 15);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v5);
  if ((*(v6 + 32))(v5, v6))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v9 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      *v11 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v12, v13, v14, v15, v11, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v16 = *(v2 + 184);
    (*(v2 + 176))(a1, v2 + 16, *(v2 + 192));
    sub_1DCB17CA0(v2 + 96, &v20);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DD8, &unk_1DD109010);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1DD0DCF8C();
  }

  sub_1DCFDA968(a1);
}

uint64_t sub_1DCFDA6C8(uint64_t a1, char a2, char a3, const char *a4)
{
  v5 = *(a1 + 16);
  v28 = *a1;
  v29[0] = v5;
  *(v29 + 9) = *(a1 + 25);
  *a1 = a2;
  *(a1 + 40) = a3;
  sub_1DCFE359C(a1, v27);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DCFE359C(v27, v26);
  sub_1DCFE359C(&v28, v25);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  v9 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    sub_1DCFE359C(v26, v23);
    v12 = sub_1DD0DE02C();
    v14 = v13;
    sub_1DCFE35D4(v26);
    v15 = sub_1DCB10E9C(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_1DCFE359C(v25, v23);
    v16 = sub_1DD0DE02C();
    v18 = v17;
    sub_1DCFE35D4(v25);
    v19 = sub_1DCB10E9C(v16, v18, &v24);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1DCAFC000, v7, v8, a4, v11, 0x16u);
    swift_arrayDestroy();
    v20 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v20);
    v21 = OUTLINED_FUNCTION_12_68();
    MEMORY[0x1E12A8390](v21);
  }

  else
  {

    sub_1DCFE35D4(v25);
    sub_1DCFE35D4(v26);
  }

  sub_1DCFE35D4(v27);
  return sub_1DCFE35D4(&v28);
}

void sub_1DCFDA8EC(uint64_t *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  v3 = v1;
  sub_1DCFDBFA0(&v2);
}

void sub_1DCFDA92C()
{
  if (*(v0 + 208) == 1)
  {
    *(v0 + 208) = 0;
    OUTLINED_FUNCTION_57_1((v0 + 56), *(v0 + 80));
    sub_1DCDC9744();
  }
}

void sub_1DCFDA968(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  *(v1 + 208) = 1;
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v1;
  *(v12 + 40) = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFDAA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 112) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCFDAA74, 0, 0);
}

uint64_t sub_1DCFDAA74()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 184);
  v12 = *(v0 + 112);

  OUTLINED_FUNCTION_57_1((v12 + 56), *(v12 + 80));
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_1DCFDABB0;

  return sub_1DCDC7E64(v11 >> 7);
}

uint64_t sub_1DCFDABB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCFDACB0()
{
  OUTLINED_FUNCTION_125();
  v34 = v0;
  v1 = v0[17];
  v2 = v0[15];
  sub_1DCBF4488(v1);
  sub_1DCBF4488(v1);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  sub_1DCBF44A0(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = OUTLINED_FUNCTION_151();
    v33[0] = OUTLINED_FUNCTION_83();
    *v6 = 136315138;
    v0[13] = v5;
    sub_1DCBF4488(v5);
    v7 = sub_1DD0DE02C();
    v9 = sub_1DCB10E9C(v7, v8, v33);

    *(v6 + 4) = v9;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v15 = v0[17];
  v16 = v0[18];
  v0[19] = v15;
  v17 = *(v0[14] + 216);
  *(swift_task_alloc() + 16) = v15;
  os_unfair_lock_lock(v17 + 15);
  sub_1DCFE39B8(&v17[4], v33);
  os_unfair_lock_unlock(v17 + 15);
  if (!v16)
  {
    v18 = v33[0];
    sub_1DCBF44A0(v15);

    v19 = v0[15];
    if (v18)
    {
      v20 = v0[14];
      sub_1DCFDBE60();
    }

    v21 = v0[15];
    v22 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v23 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v25);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      v31 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v31);
    }

    sub_1DCBF44A0(v15);

    OUTLINED_FUNCTION_29();

    v32();
  }
}

void sub_1DCFDAFF8()
{
  v75 = v0;
  v2 = *(v0 + 144);
  *(v0 + 16) = v2;
  v3 = (v0 + 16);
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  if (v5)
  {

    v8 = *(v0 + 24);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      v74[0] = OUTLINED_FUNCTION_41_29();
      *v1 = 136315138;
      *(v0 + 96) = v8;
      v10 = v8;
      v11 = sub_1DD0DE02C();
      v13 = sub_1DCB10E9C(v11, v12, v74);

      *(v1 + 4) = v13;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v19 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v19);
    }

    *(v0 + 48) = v8;
    sub_1DCFE39D4(&qword_1EDE462F8, 255, type metadata accessor for AFLocationServiceError);
    OUTLINED_FUNCTION_124();
    sub_1DD0DADCC();
    if (*(v0 + 56) == 1 || (*(v0 + 64) = v8, OUTLINED_FUNCTION_124(), sub_1DD0DADCC(), *(v0 + 72) == 2))
    {
      v20 = 0xC000000000000008;
      v21 = *(v0 + 120);
      v22 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v23 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v23, v24))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_61_3();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        v30 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v30);
      }

      v31 = 1;
    }

    else
    {
      *(v0 + 80) = v8;
      OUTLINED_FUNCTION_124();
      sub_1DD0DADCC();
      if (*(v0 + 88) == 3)
      {
        v20 = 0xC000000000000008;
        v45 = *(v0 + 120);
        v46 = sub_1DD0DD8EC();
        sub_1DD0DE6EC();
        v47 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v47, v48))
        {
          *OUTLINED_FUNCTION_50_0() = 0;
          OUTLINED_FUNCTION_61_3();
          _os_log_impl(v49, v50, v51, v52, v53, 2u);
          v54 = OUTLINED_FUNCTION_11_3();
          MEMORY[0x1E12A8390](v54);
        }
      }

      else
      {
        v20 = v8 | 0x8000000000000000;
        v55 = v8;
      }

      v31 = 0;
    }
  }

  else
  {

    v32 = v6;
    v33 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      v34 = *(v0 + 144);
      OUTLINED_FUNCTION_151();
      v74[0] = OUTLINED_FUNCTION_109();
      *v6 = 136315138;
      *(v0 + 40) = v34;
      v35 = v34;
      v36 = sub_1DD0DE02C();
      v38 = sub_1DCB10E9C(v36, v37, v74);

      *(v6 + 1) = v38;
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_65_8(v39, v40, v41, v42);
      OUTLINED_FUNCTION_4_68();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v43 = *(v0 + 144);
    v20 = v43 | 0x8000000000000000;
    v44 = v43;
    v31 = 0;
  }

  *(v0 + 152) = v20;
  v56 = *(*(v0 + 112) + 216);
  *(swift_task_alloc() + 16) = v20;
  os_unfair_lock_lock(v56 + 15);
  sub_1DCFE39B8(&v56[4], v74);
  os_unfair_lock_unlock(v56 + 15);
  v57 = LOBYTE(v74[0]);
  sub_1DCBF44A0(v20);

  v58 = *(v0 + 120);
  if (v31)
  {
    v59 = *(v0 + 120);
    v60 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v61 = OUTLINED_FUNCTION_19_2();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v57)
    {
      v63 = *(v0 + 112);
      sub_1DCFDBE60();
    }

    v64 = *(v0 + 120);
    v60 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v65 = OUTLINED_FUNCTION_19_2();
    if (!os_log_type_enabled(v65, v66))
    {
LABEL_26:
      sub_1DCBF44A0(v20);

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }
    }
  }

  v67 = OUTLINED_FUNCTION_50_0();
  *v67 = 0;
  OUTLINED_FUNCTION_54_6();
  _os_log_impl(v68, v69, v70, v71, v67, 2u);
  OUTLINED_FUNCTION_18();
  MEMORY[0x1E12A8390]();
  goto LABEL_26;
}

uint64_t sub_1DCFDB5E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 185) = v5;
  *(v1 + 176) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFDB6D4()
{
  OUTLINED_FUNCTION_125();
  v40 = v0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 120);
  if (v2)
  {
    v4 = v2;
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    v6 = OUTLINED_FUNCTION_57_9();
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    if (!v6)
    {
      sub_1DCBF44A0(*(v0 + 152));

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_109();
    v39 = v9;
    *v1 = 136315138;
    *(v0 + 32) = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v39);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_65_8(v14, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v18 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v18);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v19);
    sub_1DCBF44A0(v7);
  }

  else
  {
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v20 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 185);
      v23 = *(v0 + 152);
      v24 = *(v0 + 160);
      v25 = OUTLINED_FUNCTION_151();
      v39 = OUTLINED_FUNCTION_83();
      *v25 = 136315138;
      if (v22)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v22)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      v28 = sub_1DCB10E9C(v26, v27, &v39);

      *(v25 + 4) = v28;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390](v34);
      v35 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v35);
      sub_1DCBF44A0(v23);
    }

    else
    {
      v36 = *(v0 + 160);
      sub_1DCBF44A0(*(v0 + 152));
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_29();

  return v37();
}

uint64_t sub_1DCFDB920@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_1DCFE359C(a1, v42);
  sub_1DCFE359C(a1, v40);
  v6 = v41;
  if (v41 != 3)
  {
    sub_1DCFE35D4(v40);
    sub_1DCFE359C(a1, v40);
    if (v41 == 4)
    {
LABEL_20:
      sub_1DCFE35D4(v42);
      v30 = v40;
      goto LABEL_21;
    }

    sub_1DCFE35D4(v40);
    sub_1DCFE359C(a1, v40);
    if (v41 == 6)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      sub_1DCFE359C(v42, v39);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37[0] = v24;
        *v23 = 136315138;
        sub_1DCFE359C(v39, v38);
        v25 = sub_1DD0DE02C();
        v27 = v26;
        sub_1DCFE35D4(v39);
        v28 = sub_1DCB10E9C(v25, v27, v37);

        *(v23 + 4) = v28;
        v29 = "#SiriLocationAccessCheckFlow startTCCRequest - ignoring late TCC result during state=%s";
LABEL_18:
        _os_log_impl(&dword_1DCAFC000, v21, v22, v29, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A8390](v24, -1, -1);
        MEMORY[0x1E12A8390](v23, -1, -1);

        goto LABEL_20;
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v31 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v31, qword_1EDE57E00);
      sub_1DCFE359C(v42, v39);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37[0] = v24;
        *v23 = 136315138;
        sub_1DCFE359C(v39, v38);
        v32 = sub_1DD0DE02C();
        v34 = v33;
        sub_1DCFE35D4(v39);
        v35 = sub_1DCB10E9C(v32, v34, v37);

        *(v23 + 4) = v35;
        v29 = "#SiriLocationAccessCheckFlow startTCCRequest - unsupported TCC result during state=%s";
        goto LABEL_18;
      }
    }

    sub_1DCFE35D4(v39);
    goto LABEL_20;
  }

  sub_1DCFE35D4(a1);
  *a1 = v40[0];
  *(a1 + 8) = a2;
  *(a1 + 40) = 5;
  sub_1DCFE359C(a1, v40);
  sub_1DCBF4488(a2);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DCFE359C(v40, v39);
  sub_1DCFE359C(v42, v38);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136315394;
    sub_1DCFE359C(v39, v37);
    v12 = sub_1DD0DE02C();
    v14 = v13;
    sub_1DCFE35D4(v39);
    v15 = sub_1DCB10E9C(v12, v14, &v43);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    sub_1DCFE359C(v38, v37);
    v16 = sub_1DD0DE02C();
    v18 = v17;
    sub_1DCFE35D4(v38);
    v19 = sub_1DCB10E9C(v16, v18, &v43);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "#SiriLocationAccessCheckFlow startTCCRequest - transitioned to state=%s; \n lastState=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v38);
    sub_1DCFE35D4(v39);
  }

  sub_1DCFE35D4(v40);
  v30 = v42;
LABEL_21:
  result = sub_1DCFE35D4(v30);
  *a3 = v6 == 3;
  return result;
}

void sub_1DCFDBE60()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_7_1();
  DeviceState.asInvocationContext.getter();
}

void sub_1DCFDBFA0(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
  v8 = OUTLINED_FUNCTION_50_23();
  sub_1DCFE38C0(v8, v9, v10);
  v11 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v12 = OUTLINED_FUNCTION_50_23();
  sub_1DCC99E2C(v12, v13, v14);
  if (OUTLINED_FUNCTION_94_10())
  {
    OUTLINED_FUNCTION_151();
    v34 = OUTLINED_FUNCTION_41_29();
    *v2 = 136315138;
    v15 = OUTLINED_FUNCTION_50_23();
    sub_1DCFE38C0(v15, v16, v17);
    v18 = sub_1DCC3327C(v4, v5 | (v6 << 8));
    v20 = v19;
    v21 = OUTLINED_FUNCTION_50_23();
    sub_1DCC99E2C(v21, v22, v23);
    v24 = sub_1DCB10E9C(v18, v20, &v34);

    *(v2 + 4) = v24;
    OUTLINED_FUNCTION_61_3();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    OUTLINED_FUNCTION_4_68();
    v30 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v30);
  }

  v31 = *(v3 + 216);
  MEMORY[0x1EEE9AC00](v32, v33);
  os_unfair_lock_lock(v31 + 15);
  sub_1DCFE38EC(&v31[4]);
  os_unfair_lock_unlock(v31 + 15);
  sub_1DCFDA92C();
}

uint64_t sub_1DCFDC13C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1DCFE359C(a1, v34);
  sub_1DCFE359C(a1, &v31);
  if (v33 == 3)
  {
    sub_1DCFE35D4(a1);
    v7 = v31;
    v31 = a3;
    v32 = a4;
    sub_1DCFDC6C4(&v31, v7);
  }

  sub_1DCFE35D4(&v31);
  sub_1DCFE359C(a1, &v31);
  if (v33 - 5 >= 2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    sub_1DCFE359C(v34, v30);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      sub_1DCFE359C(v30, v29);
      v23 = sub_1DD0DE02C();
      v25 = v24;
      sub_1DCFE35D4(v30);
      v26 = sub_1DCB10E9C(v23, v25, &v28);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "#SiriLocationAccessCheckFlow onSiriPromptResult - unsupported Siri prompt result during state=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A8390](v22, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    else
    {

      sub_1DCFE35D4(v30);
    }

    sub_1DCFE35D4(v34);
    v17 = &v31;
  }

  else
  {
    sub_1DCFE35D4(&v31);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    sub_1DCFE359C(v34, &v31);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315138;
      sub_1DCFE359C(&v31, v30);
      v13 = sub_1DD0DE02C();
      v15 = v14;
      sub_1DCFE35D4(&v31);
      v16 = sub_1DCB10E9C(v13, v15, v29);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "#SiriLocationAccessCheckFlow onSiriPromptResult - ignoring late Siri prompt result during state=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A8390](v12, -1, -1);
      MEMORY[0x1E12A8390](v11, -1, -1);
    }

    else
    {

      sub_1DCFE35D4(&v31);
    }

    v17 = v34;
  }

  return sub_1DCFE35D4(v17);
}

void sub_1DCFDC6C4(uint64_t *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = *a1;
  v11 = *(a1 + 9);
  LOBYTE(a1) = *(a1 + 8);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v2;
  *(v16 + 40) = v10;
  *(v16 + 48) = a1;
  *(v16 + 49) = v11;
  *(v16 + 50) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFDC7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, char a7)
{
  *(v7 + 170) = a7;
  *(v7 + 168) = a6;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCFDC804, 0, 0);
}

uint64_t sub_1DCFDC804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58_18();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_125();
  a18 = v20;
  v23 = *(v20 + 168);
  v24 = *(v20 + 170);
  a10 = *(v20 + 88);
  LOWORD(a11) = v23;
  v25 = sub_1DCFDDB44(&a10, v24);
  v27 = v25;
  *(v20 + 96) = v25;
  *(v20 + 171) = v26;
  if (v26)
  {
    if (v26 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v30 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_151();
        a10 = OUTLINED_FUNCTION_83();
        *v32 = 136315138;
        *(v20 + 56) = v27;
        type metadata accessor for AFUserSelectedLocationAuthorizationStyle(0);
        v33 = sub_1DD0DE02C();
        v35 = sub_1DCB10E9C(v33, v34, &a10);

        *(v32 + 4) = v35;
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v36, v37, v38, v39, v32, 0xCu);
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      OUTLINED_FUNCTION_57_1((*(v20 + 80) + 56), *(*(v20 + 80) + 80));
      v40 = swift_task_alloc();
      *(v20 + 104) = v40;
      *v40 = v20;
      OUTLINED_FUNCTION_31_0(v40);
      OUTLINED_FUNCTION_88_1();

      return sub_1DCDC8C14(v41);
    }

    if (v25)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v56 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v56, qword_1EDE57E00);
      v57 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v58 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        v60[1] = 1;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v61, v62, v63, v64, v65, 8u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v66 = *(v20 + 80);

      OUTLINED_FUNCTION_57_1((v66 + 56), *(v66 + 80));
      v67 = swift_task_alloc();
      *(v20 + 120) = v67;
      *v67 = v20;
      OUTLINED_FUNCTION_31_0(v67);
      OUTLINED_FUNCTION_88_1();

      return sub_1DCDC91E0(v68);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v70 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v70, qword_1EDE57E00);
    v71 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v72 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v72, v73))
    {
      *swift_slowAlloc() = 67109120;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v74, v75, v76, v77, v78, 8u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v27 = 0;
  }

  else
  {
    sub_1DCBF4488(v25);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v44 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
    sub_1DCBF4488(v27);
    v45 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    sub_1DCFE38DC(v27, 0);
    if (OUTLINED_FUNCTION_62_0())
    {
      v46 = OUTLINED_FUNCTION_151();
      a10 = OUTLINED_FUNCTION_83();
      *v46 = 136315138;
      *(v20 + 64) = v27;
      sub_1DCBF4488(v27);
      v47 = sub_1DD0DE02C();
      v49 = sub_1DCB10E9C(v47, v48, &a10);

      *(v46 + 4) = v49;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v55 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v55);
    }

    sub_1DCFE38DC(v27, 0);
  }

  **(v20 + 72) = v27;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_1();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12);
}

uint64_t sub_1DCFDCCC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFDCDB8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[17] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = v0[10];

  OUTLINED_FUNCTION_57_1((v11 + 56), *(v11 + 80));
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_31_0(v12);

  return sub_1DCDC75C8();
}

uint64_t sub_1DCFDCEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v15 = *(v13 + 112);
  OUTLINED_FUNCTION_90_12();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  OUTLINED_FUNCTION_39_32();
  if (swift_dynamicCast())
  {

    v17 = *(v12 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = v17;
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      *v14 = 136315138;
      *(v12 + 24) = v19;
      v22 = v19;
      v23 = sub_1DD0DE02C();
      v26 = OUTLINED_FUNCTION_88_14(v23, v24, v25);

      *(v14 + 4) = v26;
      OUTLINED_FUNCTION_23_4(&dword_1DCAFC000, v27, v21, "#SiriLocationAccessCheckFlow startTCCUpdateTask - forwarding user selection failed; AFLocationServiceError=%s");
      OUTLINED_FUNCTION_4_68();
      v28 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v28);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_73_14();
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v29 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
    v30 = v15;
    v31 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      OUTLINED_FUNCTION_93_9(4.8149e-34);
      v32 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_88_14(v32, v33, v34);
      OUTLINED_FUNCTION_31_12();
      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v40 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v40);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_84_13();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1DCFDD128()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFDD220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v15 = *(v13 + 128);
  OUTLINED_FUNCTION_90_12();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  OUTLINED_FUNCTION_39_32();
  if (swift_dynamicCast())
  {

    v17 = *(v12 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = v17;
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      *v14 = 136315138;
      *(v12 + 24) = v19;
      v22 = v19;
      v23 = sub_1DD0DE02C();
      v26 = OUTLINED_FUNCTION_88_14(v23, v24, v25);

      *(v14 + 4) = v26;
      OUTLINED_FUNCTION_23_4(&dword_1DCAFC000, v27, v21, "#SiriLocationAccessCheckFlow startTCCUpdateTask - forwarding user selection failed; AFLocationServiceError=%s");
      OUTLINED_FUNCTION_4_68();
      v28 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v28);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_73_14();
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v29 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
    v30 = v15;
    v31 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      OUTLINED_FUNCTION_93_9(4.8149e-34);
      v32 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_88_14(v32, v33, v34);
      OUTLINED_FUNCTION_31_12();
      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v40 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v40);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_84_13();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1DCFDD464()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v1;
  *(v2 + 152) = v6;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFDD564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58_18();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_125();
  a18 = v20;
  if ((~*(v20 + 152) & 0xF000000000000006) != 0)
  {
    sub_1DCFE38DC(*(v20 + 96), *(v20 + 171));
    **(v20 + 72) = *(v20 + 152);
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v24 = *(v20 + 136);
    v25 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    v26 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v20 + 152);
      v29 = OUTLINED_FUNCTION_151();
      v30 = OUTLINED_FUNCTION_83();
      a10 = v30;
      *v29 = 136315138;
      *(v20 + 48) = v28;
      v31 = sub_1DD0DE02C();
      v21 = v32;
      v33 = sub_1DCB10E9C(v31, v32, &a10);

      *(v29 + 4) = v33;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v39 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v39);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    sub_1DCDCB0A4();
    v40 = swift_allocError();
    *v41 = 1;
    swift_willThrow();
    *(v20 + 16) = v40;
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    type metadata accessor for AFLocationServiceError(0);
    if (swift_dynamicCast())
    {

      v43 = *(v20 + 24);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v44 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
      v45 = v43;
      v46 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_62_0())
      {
        OUTLINED_FUNCTION_151();
        v47 = OUTLINED_FUNCTION_109();
        a10 = v47;
        *v21 = 136315138;
        *(v20 + 40) = v45;
        v48 = v45;
        v49 = sub_1DD0DE02C();
        v51 = sub_1DCB10E9C(v49, v50, &a10);

        *(v21 + 4) = v51;
        OUTLINED_FUNCTION_54_6();
        OUTLINED_FUNCTION_65_8(v52, v53, v54, v55);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v56 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v56);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      OUTLINED_FUNCTION_44_31();
      OUTLINED_FUNCTION_73_14();
    }

    else
    {

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v57 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
      v58 = v40;
      v59 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_57_9())
      {
        OUTLINED_FUNCTION_151();
        v60 = OUTLINED_FUNCTION_109();
        a10 = v60;
        *v21 = 136315138;
        *(v20 + 32) = v40;
        v61 = v40;
        v62 = sub_1DD0DE02C();
        v65 = OUTLINED_FUNCTION_88_14(v62, v63, v64);

        *(v21 + 4) = v65;
        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_65_8(v66, v67, v68, v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        v70 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v70);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      OUTLINED_FUNCTION_44_31();
      OUTLINED_FUNCTION_84_13();
    }

    OUTLINED_FUNCTION_29();
  }

  OUTLINED_FUNCTION_88_1();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}

uint64_t sub_1DCFDD900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v15 = *(v13 + 160);
  OUTLINED_FUNCTION_90_12();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  OUTLINED_FUNCTION_39_32();
  if (swift_dynamicCast())
  {

    v17 = *(v12 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = v17;
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      *v14 = 136315138;
      *(v12 + 24) = v19;
      v22 = v19;
      v23 = sub_1DD0DE02C();
      v26 = OUTLINED_FUNCTION_88_14(v23, v24, v25);

      *(v14 + 4) = v26;
      OUTLINED_FUNCTION_23_4(&dword_1DCAFC000, v27, v21, "#SiriLocationAccessCheckFlow startTCCUpdateTask - forwarding user selection failed; AFLocationServiceError=%s");
      OUTLINED_FUNCTION_4_68();
      v28 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v28);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_73_14();
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v29 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
    v30 = v15;
    v31 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      OUTLINED_FUNCTION_93_9(4.8149e-34);
      v32 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_88_14(v32, v33, v34);
      OUTLINED_FUNCTION_31_12();
      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v40 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v40);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_84_13();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1DCFDDB44(uint64_t a1, char a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    if (*(a1 + 9) == 1)
    {
      v3 = v2 | 0x8000000000000000;
      v4 = v2;
    }

    else
    {
      return 0xC000000000000008;
    }
  }

  else
  {
    v5 = v2 >> 62;
    if (a2 < 0)
    {
      if (v5 >= 2)
      {
        if (v5 == 2)
        {
LABEL_11:
          sub_1DCBF4488(*a1);
          return v2;
        }

        else
        {
LABEL_12:
          if (v2 == 0xC000000000000000)
          {
            return 0;
          }

          else
          {
            return *a1;
          }
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v3 = 1;
      switch(v5)
      {
        case 1:
          v3 = 2;
          break;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        default:
          return v3;
      }
    }
  }

  return v3;
}

double sub_1DCFDDC2C@<D0>(unint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v5 = v3;
  if (a2 < 0 || (a1 & 0x8000000000000000) != 0 || (a1 & 1) != 0 || (a2 & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
    sub_1DCBF4488(a1);
    v25 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    sub_1DCBF44A0(a1);
    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      v35[0] = OUTLINED_FUNCTION_41_29();
      *v4 = 136315138;
      v35[5] = a1;
      sub_1DCBF4488(a1);
      v26 = sub_1DD0DE02C();
      v28 = sub_1DCB10E9C(v26, v27, v35);

      *(v4 + 4) = v28;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v34 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v34);
    }

    return sub_1DCFD947C();
  }

  else
  {
    v8 = *(v3 + 200);
    sub_1DCFE2A8C(a1, a2, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v11 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v13);
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v14, v15, "#SiriLocationAccessCheckFlow handleTCCResult - need to do one-time prompt for temp, precise access permissions");
      v16 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v16);
    }

    v17 = *(v5 + 216);
    os_unfair_lock_lock(v17 + 15);
    sub_1DCFDDE70(&v17[4]);
    os_unfair_lock_unlock(v17 + 15);
    v18 = *(type metadata accessor for ExecuteResponse(0) + 36);
    type metadata accessor for PluginAction();
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    *a3 = 0;
    return OUTLINED_FUNCTION_16_59();
  }
}

uint64_t sub_1DCFDDE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v21 = *a1;
  v22[0] = v1;
  *(v22 + 9) = *(a1 + 25);
  *a1 = -127;
  *(a1 + 40) = 2;
  sub_1DCFE359C(a1, v20);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DCFE359C(v20, v19);
  sub_1DCFE359C(&v21, v18);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    sub_1DCFE359C(v19, v16);
    v7 = sub_1DD0DE02C();
    v9 = v8;
    sub_1DCFE35D4(v19);
    v10 = sub_1DCB10E9C(v7, v9, &v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    sub_1DCFE359C(v18, v16);
    v11 = sub_1DD0DE02C();
    v13 = v12;
    sub_1DCFE35D4(v18);
    v14 = sub_1DCB10E9C(v11, v13, &v17);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "#SiriLocationAccessCheckFlow handleTCCResult - transitioned to state=%s; \n lastState=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v6, -1, -1);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v18);
    sub_1DCFE35D4(v19);
  }

  sub_1DCFE35D4(v20);
  return sub_1DCFE35D4(&v21);
}

uint64_t *sub_1DCFDE0C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[23];

  v2 = v0[25];

  v3 = v0[27];

  return v0;
}

uint64_t sub_1DCFDE110()
{
  sub_1DCFDE0C0();

  return swift_deallocClassInstance();
}

void sub_1DCFDE168(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCFDE204()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCFD89E0();
}

unint64_t sub_1DCFDE28C@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCFD8894();
  *a1 = result;
  return result;
}

void sub_1DCFDE2B8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for Parse(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_16();
  v14 = (v13 - v12);
  v15 = *(type metadata accessor for Input(0) + 20);
  OUTLINED_FUNCTION_3_2();
  sub_1DCB2479C(a1 + v16, v14, v17);
  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = *v14;
    v19 = v14[1];
    v20 = v14[2];

    v21 = sub_1DCFEBF5C(v18, v19);

    if (v21 - 1 < 3)
    {
LABEL_17:
      v31 = 1;
      goto LABEL_18;
    }

    if (!v21)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v24 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        *v26 = 0;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v27, v28, v29, v30, v26, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v31 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_109();
    sub_1DCFE37AC(v14, v32);
  }

  v33 = sub_1DCFDE538(a1, *(v3 + 16));
  if ((~v33 & 0xF000000000000006) != 0)
  {
    sub_1DCBB1234(v33);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v34 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
  v35 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  v36 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_50_0();
    *v38 = 0;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v39, v40, v41, v42, v38, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v31 = 2;
LABEL_18:
  *a2 = v31;
}

uint64_t sub_1DCFDE538(uint64_t a1, int a2)
{
  v153 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v151 = &v148 - v8;
  OUTLINED_FUNCTION_12();
  v161 = sub_1DD0DB5BC();
  v9 = OUTLINED_FUNCTION_9(v161);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_10_2();
  v155 = v15 - v16;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  v156 = &v148 - v19;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v20, v21);
  v159 = &v148 - v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_71_0();
  v149 = v25;
  OUTLINED_FUNCTION_12();
  v26 = type metadata accessor for USOParse();
  v27 = OUTLINED_FUNCTION_20_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  OUTLINED_FUNCTION_16();
  v154 = v32 - v31;
  v33 = OUTLINED_FUNCTION_12();
  v34 = type metadata accessor for Input(v33);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34, v37);
  OUTLINED_FUNCTION_16();
  v40 = (v39 - v38);
  v157 = type metadata accessor for Parse(0);
  v41 = OUTLINED_FUNCTION_2(v157);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41, v44);
  OUTLINED_FUNCTION_10_2();
  v158 = (v45 - v46);
  OUTLINED_FUNCTION_29_0();
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v51 = &v148 - v50;
  v53 = MEMORY[0x1EEE9AC00](v49, v52);
  v55 = &v148 - v54;
  MEMORY[0x1EEE9AC00](v53, v56);
  v58 = &v148 - v57;
  v59 = *(v35 + 28);
  OUTLINED_FUNCTION_3_2();
  sub_1DCB2479C(a1 + v60, v58, v61);
  if (qword_1EDE4F900 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v62 = sub_1DD0DD8FC();
  v63 = __swift_project_value_buffer(v62, qword_1EDE57E00);
  sub_1DCB2479C(a1, v40, type metadata accessor for Input);
  OUTLINED_FUNCTION_3_2();
  v160 = v58;
  sub_1DCB2479C(v58, v55, v64);
  v65 = sub_1DD0DD8EC();
  v66 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v152 = v63;
    v68 = v67;
    OUTLINED_FUNCTION_35_9();
    v163 = swift_slowAlloc();
    *v68 = 136315394;
    v69 = Input.description.getter();
    v71 = v70;
    OUTLINED_FUNCTION_49_24();
    v72 = sub_1DCB10E9C(v69, v71, &v163);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    OUTLINED_FUNCTION_3_2();
    sub_1DCB2479C(v55, v51, v73);
    v74 = sub_1DD0DE02C();
    v76 = v75;
    OUTLINED_FUNCTION_2_109();
    sub_1DCFE37AC(v55, v77);
    v78 = sub_1DCB10E9C(v74, v76, &v163);

    *(v68 + 14) = v78;
    _os_log_impl(&dword_1DCAFC000, v65, v66, "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - received Input=%s \n\n Input Parse=%s", v68, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    v63 = v152;
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {

    OUTLINED_FUNCTION_2_109();
    sub_1DCFE37AC(v55, v80);
    OUTLINED_FUNCTION_49_24();
  }

  v79 = v158;
  OUTLINED_FUNCTION_3_2();
  v81 = v160;
  sub_1DCB2479C(v160, v79, v82);
  v40 = &off_1DD0E0000;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v101 = *(v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

      v102 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_2(v102);
      (*(v103 + 8))(v79);
      goto LABEL_20;
    case 2u:
      v94 = *v79;
      v93 = v79[1];
      v95 = v79[2];

      if (sub_1DCFEBF5C(v94, v93) != 4)
      {

        v90 = 0xC000000000000000;
        switch(v127)
        {
          case 1:
            goto LABEL_17;
          case 2:
            OUTLINED_FUNCTION_37_35();
            v90 = v139 & 1 | 0x4000000000000000;
            goto LABEL_26;
          case 3:
            goto LABEL_26;
          default:
            v84 = sub_1DD0DD8EC();
            v128 = sub_1DD0DE6EC();
            if (!OUTLINED_FUNCTION_22(v128))
            {
              goto LABEL_24;
            }

            v129 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v129);
            v89 = "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unexported abort";
            goto LABEL_22;
        }
      }

      v84 = sub_1DD0DD8EC();
      v96 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v84, v96))
      {
        v97 = OUTLINED_FUNCTION_151();
        v163 = OUTLINED_FUNCTION_83();
        *v97 = 136315138;
        sub_1DCB10E9C(v94, v93, &v163);
        OUTLINED_FUNCTION_31_12();
        *(v97 + 4) = v94;
        _os_log_impl(&dword_1DCAFC000, v84, v96, "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported DirectInvocation identifier=%s", v97, 0xCu);
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        goto LABEL_23;
      }

      goto LABEL_24;
    case 3u:
      v98 = *v79;
      objc_opt_self();
      OUTLINED_FUNCTION_28();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
LABEL_17:
        OUTLINED_FUNCTION_37_35();
        v90 = v99 & 1;
        goto LABEL_26;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_28();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        v90 = 0xC000000000000000;
        goto LABEL_26;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_28();
      v138 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v138)
      {
        v90 = 0xC000000000000008;
        goto LABEL_26;
      }

LABEL_7:
      v84 = sub_1DD0DD8EC();
      v85 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v85))
      {
        v86 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v86);
        v89 = "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported Input Parse";
LABEL_22:
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v87, v88, v89);
LABEL_23:
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

LABEL_24:

      sub_1DCFE3758();
      v106 = swift_allocError();
      *v107 = 1;
      v90 = v106 | 0x8000000000000000;
      goto LABEL_25;
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
      OUTLINED_FUNCTION_2_109();
      sub_1DCFE37AC(v79, v83);
      goto LABEL_7;
    case 6u:
      a1 = v154;
      sub_1DCFE3EC8(v79, v154, type metadata accessor for USOParse);
      v58 = sub_1DD0DB46C();
      v90 = v151;
      sub_1DCC621EC(v58);
      v91 = v161;
      if (__swift_getEnumTagSinglePayload(v90, 1, v161) == 1)
      {
        result = sub_1DCB0E9D8(v90, &qword_1ECCA29B8, &qword_1DD0E96C0);
      }

      else
      {
        v121 = v149;
        (*(v11 + 32))(v149, v90, v91);
        a1 = v150;
        v122 = sub_1DCFE205C();
        v91 = v161;
        v90 = v122;
        result = (*(v11 + 8))(v121, v161);
        if ((~v90 & 0xF000000000000006) != 0)
        {
          OUTLINED_FUNCTION_4_113();

          sub_1DCBF4488(v90);
          goto LABEL_26;
        }
      }

      v152 = v63;
      v123 = 0;
      v51 = *(v58 + 2);
      v55 = (v11 + 16);
      while (v51 != v123)
      {
        if (v123 >= *(v58 + 2))
        {
          __break(1u);
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_22_43();
        a1 = v159;
        v124(v159);
        ++v123;
        sub_1DD0DB52C();
        OUTLINED_FUNCTION_81_10();
        result = v125(a1, v91);
        if (v90)
        {
          OUTLINED_FUNCTION_4_113();

          OUTLINED_FUNCTION_37_35();
          v90 = v126 & 1;
LABEL_45:
          v81 = v160;
          goto LABEL_26;
        }
      }

      v130 = 0;
      while (v51 != v130)
      {
        if (v130 >= *(v58 + 2))
        {
          __break(1u);
LABEL_64:
          __break(1u);
          return result;
        }

        OUTLINED_FUNCTION_22_43();
        v131 = v156;
        v132(v156);
        ++v130;
        sub_1DD0DB53C();
        OUTLINED_FUNCTION_81_10();
        result = v133(v131, v91);
        if (v90)
        {
          OUTLINED_FUNCTION_4_113();

          v90 = 0xC000000000000000;
          goto LABEL_45;
        }
      }

      v134 = 0;
      v135 = v155;
      while (v51 != v134)
      {
        if (v134 >= *(v58 + 2))
        {
          goto LABEL_64;
        }

        OUTLINED_FUNCTION_22_43();
        v136(v135);
        ++v134;
        sub_1DD0DB54C();
        OUTLINED_FUNCTION_81_10();
        result = v137(v135, v91);
        if (v90)
        {
          v90 = 0xC000000000000008;
          OUTLINED_FUNCTION_4_113();

          v40 = &off_1DD0E0000;
          goto LABEL_45;
        }
      }

      v140 = sub_1DD0DD8EC();
      v141 = sub_1DD0DE6EC();
      v142 = OUTLINED_FUNCTION_22(v141);
      v40 = &off_1DD0E0000;
      v81 = v160;
      if (v142)
      {
        v143 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v143);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v144, v145, "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported USOParse");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      sub_1DCFE3758();
      v146 = swift_allocError();
      *v147 = 1;
      OUTLINED_FUNCTION_4_113();
      v90 = v146 | 0x8000000000000000;
      v106 = v146;
LABEL_25:
      v108 = v106;
LABEL_26:
      sub_1DCBF4488(v90);
      v109 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      sub_1DCBF44A0(v90);
      if (OUTLINED_FUNCTION_62_0())
      {
        v110 = OUTLINED_FUNCTION_151();
        v111 = OUTLINED_FUNCTION_83();
        v162 = v90;
        v163 = v111;
        *v110 = *(v40 + 246);
        v112 = sub_1DD0DE02C();
        v114 = sub_1DCB10E9C(v112, v113, &v163);

        *(v110 + 4) = v114;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v115, v116, v117, v118, v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        v119 = OUTLINED_FUNCTION_12_68();
        MEMORY[0x1E12A8390](v119);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      else
      {
        sub_1DCBF44A0(v90);
      }

LABEL_30:
      OUTLINED_FUNCTION_2_109();
      sub_1DCFE37AC(v81, v120);
      return v90;
    case 0xAu:
      v90 = 0xF000000000000006;
      goto LABEL_30;
    default:
      OUTLINED_FUNCTION_2_109();
      sub_1DCFE37AC(v79, v100);
LABEL_20:
      v84 = sub_1DD0DD8EC();
      v104 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v104))
      {
        goto LABEL_24;
      }

      v105 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v105);
      v89 = "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported NLv3 Parse; (tester should check NL asset(s)' availability)";
      goto LABEL_22;
  }
}

uint64_t sub_1DCFDF094(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCFDF0D4);
}

uint64_t sub_1DCFDF0D4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v2 = sub_1DCFDE538(v0[2], *(v0[3] + 16));
  v3 = v0[1];

  return v3(v2);
}

void sub_1DCFDF13C()
{
  v0 = sub_1DD0DB6EC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  v46 = sub_1DD0DB50C();
  v5 = OUTLINED_FUNCTION_9(v46);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_12();
  v45 = sub_1DD0DB5BC();
  v11 = OUTLINED_FUNCTION_9(v45);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_12();
  v44 = sub_1DD0DB75C();
  v17 = OUTLINED_FUNCTION_9(v44);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_12();
  v43 = sub_1DD0DB44C();
  v23 = OUTLINED_FUNCTION_9(v43);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  OUTLINED_FUNCTION_20_0(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  v34 = sub_1DD0DC42C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_1DD0DC41C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DD0E15D0;
  *(v38 + 32) = v37;
  sub_1DD0DBC3C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFDF6F0()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCFDF774()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCFDF820()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 48) = v0;

  sub_1DCB0E9D8(v7, &qword_1ECCA1818, &qword_1DD0E0F80);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 32);

    OUTLINED_FUNCTION_29();

    return v14();
  }
}

void sub_1DCFDF974()
{
  OUTLINED_FUNCTION_42();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  sub_1DD0DCE5C();
}

void sub_1DCFDFB5C()
{
  v35 = v0;
  if (qword_1EDE4EC30 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v30 = *(v0 + 344);
  v31 = *(v0 + 336);
  v33 = *(v0 + 288);
  v34 = *(v0 + 296);
  v32 = *(v0 + 240);
  v4 = qword_1EDE4EC38;
  v5 = unk_1EDE4EC40;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v6 = v2[8];
  *(v1 + v2[9]) = 256;
  v28 = v2[10];
  v29 = v4;
  *(v1 + v2[11]) = 0;
  v7 = v2[12];
  v8 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v27 = v2[13];
  v12 = (v1 + v2[14]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v2[15];
  *(v0 + 596) = v13;
  v14 = (v1 + v13);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  v15 = v1 + v2[19];
  *v15 = 0;
  *(v15 + 4) = 512;
  *(v1 + v2[20]) = 0;
  *(v1 + v2[21]) = 0;
  *(v1 + v2[22]) = 0;
  *(v1 + v2[23]) = 0;
  *(v1 + v2[24]) = 0;
  *(v1 + v2[25]) = 0;
  v16 = (v1 + v2[26]);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + v2[27]) = 0;
  *(v1 + v2[28]) = MEMORY[0x1E69E7CC0];
  v17 = v2[29];
  v18 = *MEMORY[0x1E69D0678];
  v19 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v19);
  (*(v20 + 104))(v1 + v17, v18);
  v21 = v2[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v1 + v2[31]) = 2;
  *v1 = v29;
  v1[1] = v5;
  v26 = v2[5];

  sub_1DCB67914();
}

uint64_t sub_1DCFE0374()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v3[23] = v1;
  v3[24] = v5;
  v3[25] = v0;
  v7 = *(v6 + 376);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v3[48] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 12);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCFE047C()
{
  v1 = *(v0 + 248);
  *(v0 + 408) = *(v0 + 192);
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_7_1();
  if ((v5(v4) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v11 = *(v0 + 248);
    v12 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (*(v0 + 594) < 0)
  {
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    v13 = [*(v0 + 408) dialog];
    sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
    OUTLINED_FUNCTION_28();
    v14 = sub_1DD0DE2EC();

    if (sub_1DCB08B14(v14))
    {
      sub_1DCB35460(0, (v14 & 0xC000000000000001) == 0, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E12A72C0](0, v14);
      }

      else
      {
        v15 = *(v14 + 32);
      }

      v16 = v15;

      v17 = [v16 fullPrint];

      v18 = sub_1DD0DDFBC();
      v20 = v19;
    }

    else
    {

      v18 = 0;
      v20 = 0xE000000000000000;
    }

    *(v0 + 480) = v18;
    *(v0 + 488) = v20;
    v21 = *(v0 + 248);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 496) = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_11_69(v22);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationOnceLabel(deviceState:)(v24);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 416) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_40_32(v6);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationUsingSiriLabel(deviceState:)(v8);
  }
}

uint64_t sub_1DCFE0948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);
  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v12, v13);
  v14 = *(v10 + 384);
  v15 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1DCFE09F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCFE0AF4()
{
  v1 = *(v0 + 248);
  *(v0 + 408) = *(v0 + 216);
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_7_1();
  if ((v5(v4) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v11 = *(v0 + 248);
    v12 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (*(v0 + 594) < 0)
  {
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    v13 = [*(v0 + 408) dialog];
    sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
    OUTLINED_FUNCTION_28();
    v14 = sub_1DD0DE2EC();

    if (sub_1DCB08B14(v14))
    {
      sub_1DCB35460(0, (v14 & 0xC000000000000001) == 0, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E12A72C0](0, v14);
      }

      else
      {
        v15 = *(v14 + 32);
      }

      v16 = v15;

      v17 = [v16 fullPrint];

      v18 = sub_1DD0DDFBC();
      v20 = v19;
    }

    else
    {

      v18 = 0;
      v20 = 0xE000000000000000;
    }

    *(v0 + 480) = v18;
    *(v0 + 488) = v20;
    v21 = *(v0 + 248);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 496) = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_11_69(v22);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationOnceLabel(deviceState:)(v24);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 416) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_40_32(v6);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationUsingSiriLabel(deviceState:)(v8);
  }
}

uint64_t sub_1DCFE0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);
  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v12, v13);
  v14 = *(v10 + 400);
  v15 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1DCFE106C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 416);
  v11 = *v3;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  v7[53] = v2;

  if (!v2)
  {
    v7[54] = a2;
    v7[55] = a1;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCFE1188()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  if (!v2)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(v0 + 464) = 0xD000000000000053;
  *(v0 + 472) = 0x80000001DD1292E0;
  *(v0 + 448) = v1;
  *(v0 + 456) = v2;
  v3 = [*(v0 + 408) dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  OUTLINED_FUNCTION_28();
  v4 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v4))
  {
    sub_1DCB35460(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12A72C0](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;

    v7 = [v6 fullPrint];

    v8 = sub_1DD0DDFBC();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *(v0 + 480) = v8;
  *(v0 + 488) = v10;
  v11 = *(v0 + 248);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 496) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_11_69(v12);

  return static TCCTemplates.accessLocationOnceLabel(deviceState:)(v14);
}

uint64_t sub_1DCFE1310()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 496);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  v7[63] = v0;

  if (v0)
  {
    v13 = v7[61];
    v14 = v7[58];
    v15 = v7[59];
    sub_1DCCEA1B0(v7[56], v7[57]);
  }

  else
  {
    v7[64] = v3;
    v7[65] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DCFE1438()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 248);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 528) = v2;
  *v2 = v3;
  v2[1] = sub_1DCFE14CC;

  return static TCCTemplates.accessLocationDoNotLabel(deviceState:)(v1 + 24);
}

uint64_t sub_1DCFE14CC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 528);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  v7[67] = v0;

  if (v0)
  {
    v13 = v7[61];
    v14 = v7[58];
    v15 = v7[59];
    v7[64];
    sub_1DCCEA1B0(v7[56], v7[57]);
  }

  else
  {
    v7[68] = v3;
    v7[69] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DCFE1620()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = (*(v0 + 368) + *(v0 + 596));
  *v3 = 0xD000000000000033;
  v3[1] = 0x80000001DD1292A0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v6 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v8);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  if (v2)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v2)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  v35 = v15;
  v36 = v14;
  v16 = *(v0 + 512);
  v18 = *(v0 + 480);
  v17 = *(v0 + 488);
  v19 = *(v0 + 408);
  v20 = *(v0 + 248);
  if (v16)
  {
    v21 = *(v0 + 512);
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  if (v16)
  {
    v22 = *(v0 + 520);
  }

  else
  {
    v22 = 0;
  }

  v33 = *(v0 + 464);
  v34 = *(v0 + 448);

  v23 = v20[13];
  v38 = v20[12];
  OUTLINED_FUNCTION_57_1(v20 + 9, v38);
  *(v0 + 592) = 0;
  *(v0 + 80) = &type metadata for SiriKitUIModel;
  *(v0 + 88) = sub_1DCFE3704();
  v24 = swift_allocObject();
  *(v0 + 56) = v24;
  *(v24 + 16) = v18;
  *(v24 + 24) = v17;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 0xD00000000000004ELL;
  *(v24 + 56) = 0x80000001DD129200;
  *(v24 + 64) = v34;
  *(v24 + 80) = v33;
  *(v24 + 96) = v35;
  *(v24 + 104) = v36;
  *(v24 + 112) = 0xD00000000000004FLL;
  *(v24 + 120) = 0x80000001DD129250;
  *(v24 + 128) = *(v0 + 592);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v25 = swift_allocObject();
  *(v0 + 560) = v25;
  *(v25 + 16) = xmmword_1DD0E15D0;
  *(v25 + 32) = v19;
  v26 = *(v23 + 56);
  v27 = v19;
  v37 = (v26 + *v26);
  v28 = v26[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 568) = v29;
  *v29 = v30;
  v29[1] = sub_1DCFE192C;
  v31 = *(v0 + 368);

  return v37(v0 + 16, v0 + 56, v25, v31, v38, v23);
}

uint64_t sub_1DCFE192C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *(v4 + 560);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFE1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();

  v11 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();
  sub_1DCAFF9E8((v10 + 16), *(v10 + 232));
  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_125_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCFE1AEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 584);
  v3 = *(v1 + 576);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCFE1BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);

  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);
  v13 = *(v10 + 424);
  v14 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCFE1CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);

  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);
  v13 = *(v10 + 504);
  v14 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCFE1D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);

  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);
  v13 = *(v10 + 536);
  v14 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCFE1E2C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 16);

  v12 = type metadata accessor for EmptyOutput();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &protocol witness table for EmptyOutput;
  *v11 = v13;
  OUTLINED_FUNCTION_43();

  return v14();
}

uint64_t sub_1DCFE1F50()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 16);

  v12 = type metadata accessor for EmptyOutput();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &protocol witness table for EmptyOutput;
  *v11 = v13;
  OUTLINED_FUNCTION_43();

  return v14();
}

unint64_t sub_1DCFE205C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDC0, &qword_1DD108FE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v3 = sub_1DD0DBEFC();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v17 = sub_1DD0DB7DC();
  if (sub_1DCB08B14(v17))
  {
    sub_1DCB35460(0, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) == 0)
    {
      v18 = *(v17 + 32);
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](0, v17);

    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "#PromptForSiriLocationAccessStrategy parseDefinedValueResult - no definedValue found", v15, 2u);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  return 0xF000000000000006;
}

uint64_t *sub_1DCFE28AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  return v0;
}

uint64_t sub_1DCFE28DC()
{
  sub_1DCFE28AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFE2938(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DCBF9BB8;

  return sub_1DCFDF094(a2);
}

uint64_t sub_1DCFE29D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCFDF6F0();
}

void sub_1DCFE2A8C(unint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t *a3@<X8>)
{
  if (*(v3 + 56) == 1)
  {
    *(v3 + 56) = 0;
    switch(a1 >> 62)
    {
      case 1uLL:
        v6 = 0;
        v7 = 3;
        goto LABEL_25;
      case 2uLL:
        sub_1DCBF4488(a1);
        v16 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        if ((swift_dynamicCast() & 1) != 0 && v21 != 1)
        {
          v6 = 0x10000000000;
          v17 = 3;
        }

        else
        {
          v17 = 0;
          v6 = 0x10000000000;
        }

        break;
      case 3uLL:
        v6 = 0x10000000000;
        v17 = 2;
        v18 = 0x10000000000;
        v19 = 5;
        if ((a2 & 0x80u) == 0)
        {
          v19 = 0x200000001;
        }

        if (a2 <= 0xFDu)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (a2 <= 0xFDu)
        {
          v18 = ((a2 >> 7) & 1) << 40;
        }

        if (a1 != 0xC000000000000001)
        {
          v17 = 1;
          v6 = 0x10000000000;
        }

        if (a1 == 0xC000000000000000)
        {
          v17 = v20;
          v6 = v18;
        }

        break;
      default:
        v6 = 0;
        v7 = 2;
LABEL_25:
        v17 = v7 & 0xFFFFFFFEFFFFFFFFLL | ((a1 & 1) << 32);
        break;
    }

    sub_1DCFE2C94(v6 | v17);
  }

  else
  {
    sub_1DCBF4488(a1);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    v10 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v12);
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v13, v14, "#PermissionPromptSchemaLogger emitResult - no corresponding start message emitted");
      v15 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v15);
    }
  }

  a3[3] = &type metadata for PermissionPromptSchemaLogger.LoggedResult;
  a3[4] = &off_1F5875450;
  *a3 = a1;
}

void sub_1DCFE2C94(unint64_t a1)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69CEB60]) init];
  if (!v8)
  {
    return;
  }

  if (BYTE5(a1))
  {
    if (BYTE5(a1) == 1)
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E69CEB70]) init];
      if (v3)
      {
        v4 = v3;
        [v3 setFailureReason_];
        v5 = &selRef_setFailed_;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69CEB78]) init];
    if (v7)
    {
      v4 = v7;
      v5 = &selRef_setStartedOrChanged_;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69CEB68]) init];
    if (v6)
    {
      v4 = v6;
      [v6 setPermissionStatusResult_];
      if ((a1 & 0xFF00000000) != 0x200000000)
      {
        [v4 setIsPreciseLocationResult_];
      }

      v5 = &selRef_setEnded_;
LABEL_13:
      [v8 *v5];

      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      sub_1DCFE3604(v8);
    }
  }

LABEL_14:
}

uint64_t sub_1DCFE2DFC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void destroy for SiriLocationAccessCheckFlow.State(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 7)
  {
    v2 = *a1 + 7;
  }

  switch(v2)
  {
    case 4u:
      v4 = *(a1 + 8);

      break;
    case 5u:
      v3 = *(a1 + 8);

      sub_1DCBF44A0(v3);
      break;
    case 6u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for SiriLocationAccessCheckFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 7)
  {
    v3 = *a2 + 7;
  }

  switch(v3)
  {
    case 1u:
      *a1 = *a2;
      v4 = 1;
      goto LABEL_11;
    case 2u:
      *a1 = *a2;
      v4 = 2;
      goto LABEL_11;
    case 3u:
      *a1 = *a2;
      v4 = 3;
      goto LABEL_11;
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 4;
      sub_1DD0DCF8C();
    case 5u:
      *a1 = *a2;
      v5 = *(a2 + 8);
      sub_1DCBF4488(v5);
      *(a1 + 8) = v5;
      v4 = 5;
      goto LABEL_11;
    case 6u:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1);
      v4 = 6;
LABEL_11:
      *(a1 + 40) = v4;
      break;
    default:
      *a1 = *a2;
      *(a1 + 40) = 0;
      break;
  }

  return a1;
}

uint64_t assignWithCopy for SiriLocationAccessCheckFlow.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 7)
    {
      v4 = *a1 + 7;
    }

    switch(v4)
    {
      case 4u:
        v10 = *(a1 + 8);

        break;
      case 5u:
        sub_1DCBF44A0(*(a1 + 8));
        break;
      case 6u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 7)
    {
      v5 = *a2 + 7;
    }

    switch(v5)
    {
      case 1u:
        *a1 = *a2;
        v6 = 1;
        goto LABEL_17;
      case 2u:
        *a1 = *a2;
        v6 = 2;
        goto LABEL_17;
      case 3u:
        *a1 = *a2;
        v6 = 3;
        goto LABEL_17;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 40) = 4;
        sub_1DD0DCF8C();
      case 5u:
        *a1 = *a2;
        v7 = *(a2 + 8);
        sub_1DCBF4488(v7);
        *(a1 + 8) = v7;
        v6 = 5;
        goto LABEL_17;
      case 6u:
        v8 = *(a2 + 24);
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 32);
        (**(v8 - 8))(a1, a2);
        v6 = 6;
LABEL_17:
        *(a1 + 40) = v6;
        break;
      default:
        *a1 = *a2;
        *(a1 + 40) = 0;
        break;
    }
  }

  return a1;
}

uint64_t assignWithTake for SiriLocationAccessCheckFlow.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 7)
    {
      v4 = *a1 + 7;
    }

    switch(v4)
    {
      case 4u:
        v9 = *(a1 + 8);

        break;
      case 5u:
        sub_1DCBF44A0(*(a1 + 8));
        break;
      case 6u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 7)
    {
      v5 = *a2 + 7;
    }

    switch(v5)
    {
      case 1u:
        *a1 = *a2;
        v6 = 1;
        break;
      case 2u:
        *a1 = *a2;
        v6 = 2;
        break;
      case 3u:
        *a1 = *a2;
        v6 = 3;
        break;
      case 4u:
        *a1 = *a2;
        v6 = 4;
        break;
      case 5u:
        *a1 = *a2;
        v6 = 5;
        break;
      case 6u:
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        v6 = 6;
        break;
      default:
        v6 = 0;
        *a1 = *a2;
        break;
    }

    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriLocationAccessCheckFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriLocationAccessCheckFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCFE3344(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 7)
  {
    return (*a1 + 7);
  }

  return result;
}

uint64_t sub_1DCFE3360(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for PromptMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCFE3544(uint64_t a1, uint64_t a2)
{
  result = sub_1DCFE39D4(&qword_1ECCABDA0, a2, type metadata accessor for SiriLocationAccessCheckFlow);
  *(a1 + 16) = result;
  return result;
}

void sub_1DCFE3604(void *a1)
{
  v2 = type metadata accessor for SiriKitEventPayload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SiriKitEvent(0);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v7 = a1;
  SiriKitEvent.__allocating_init(_:builder:)(v6, 0);
  sub_1DCB4C064();
}

unint64_t sub_1DCFE3704()
{
  result = qword_1ECCABDB0;
  if (!qword_1ECCABDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDB0);
  }

  return result;
}

unint64_t sub_1DCFE3758()
{
  result = qword_1ECCABDB8;
  if (!qword_1ECCABDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDB8);
  }

  return result;
}

uint64_t sub_1DCFE37AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCFE3804()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 50);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_13_17(v8);
  OUTLINED_FUNCTION_39_32();

  return sub_1DCFDC7D8(v10, v11, v12, v13, v4, v5, v6);
}

unint64_t sub_1DCFE38C0(unint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return sub_1DCBF4488(result);
  }

  return result;
}

void sub_1DCFE38DC(unint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1DCBF44A0(a1);
  }
}

uint64_t sub_1DCFE390C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_13_17(v6);
  OUTLINED_FUNCTION_39_32();

  return sub_1DCFDAA50(v8, v9, v10, v11, v4);
}

uint64_t sub_1DCFE39D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DCFE3A24(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 104) = &type metadata for LocationAccessUnlockDeviceStrategy;
  *(a4 + 112) = &off_1F5875430;
  *(a4 + 16) = 1;
  *(a4 + 120) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  sub_1DCAFF9E8(a1, a4 + 40);
  return a4;
}

uint64_t sub_1DCFE3A74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DCBF6C40;

  return sub_1DCFD7EDC(a2);
}

uint64_t sub_1DCFE3B14()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return v4(v3);
}

uint64_t sub_1DCFE3BB0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD8038();
}

uint64_t sub_1DCFE3C34()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD8038();
}

uint64_t sub_1DCFE3CB8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCC0A2BC();
}

uint64_t sub_1DCFE3D3C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD8170(v3);
}

uint64_t sub_1DCFE3DC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCFD82B4(v3);
}

uint64_t sub_1DCFE3E64(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_1DCFE3EB0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1DCBF4488(a1);
  }
}

void sub_1DCFE3EBC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_1DCBF44A0(a1);
  }
}

uint64_t sub_1DCFE3EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DCFE3F2C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_4_32();

  return sub_1DCFD7E30();
}

uint64_t sub_1DCFE3FBC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD7F74(v3, v4);
}

uint64_t sub_1DCFE4040()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD7F74(v3, v4);
}

uint64_t sub_1DCFE40C4()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD7F74(v3, v4);
}

uint64_t sub_1DCFE4148()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD80D4();
}

uint64_t sub_1DCFE41CC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_4_32();

  return sub_1DCFD8208();
}

_BYTE *storeEnumTagSinglePayload for SiriLocationAccessCheckFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFE437C()
{
  result = qword_1ECCABDD0;
  if (!qword_1ECCABDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_105_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1DCB10E9C(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_107_6()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_109_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

void SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:)()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(&v0);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0);
  swift_retain_n();
  sub_1DCB82888();
}

void SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  swift_retain_n();
  sub_1DCB82888();
}

unint64_t LocationAccessFailureReason.debugDescription.getter()
{
  v1 = 0x68747541746F6E2ELL;
  if (*v0 != 1)
  {
    v1 = 0x656C65636E61632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t LocationAccessFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCFE47CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)();
}

uint64_t sub_1DCFE487C(uint64_t a1, uint64_t a2, char a3)
{
  v3[33] = a1;
  v6 = sub_1DD0DB04C();
  v3[34] = v6;
  v7 = *(v6 - 8);
  v3[35] = v7;
  v8 = *(v7 + 64) + 15;
  v3[36] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v3[37] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[39] = v11;
  *v11 = v3;
  v11[1] = sub_1DCFE49AC;

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a2, a3);
}

uint64_t sub_1DCFE49AC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  *v4 = *v1;
  v3[40] = v8;

  if (v0)
  {
    v9 = v3[38];
    v10 = v3[36];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCFE4AF4()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 320);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v5 = *(v0 + 320);
    OUTLINED_FUNCTION_151();
    v23 = OUTLINED_FUNCTION_10_0();
    *v3 = 136315138;
    v6 = [v5 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v7, v8, &v23);
    OUTLINED_FUNCTION_81_11();
    *(v3 + 1) = v6;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  v14 = [*(v0 + 320) dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v15 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v15))
  {
    OUTLINED_FUNCTION_41_13();
    if (v14)
    {
      MEMORY[0x1E12A72C0](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    OUTLINED_FUNCTION_103();

    v17 = [v14 fullPrint];

    v18 = sub_1DD0DDFBC();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v0 + 328) = v18;
  *(v0 + 336) = v20;
  v21 = swift_task_alloc();
  *(v0 + 344) = v21;
  *v21 = v0;
  v21[1] = sub_1DCFE4D3C;

  return static TCCTemplates.locationServicesSettingsLabel()();
}

uint64_t sub_1DCFE4D3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  OUTLINED_FUNCTION_76_17(v5, v6);
  v8 = *(v7 + 344);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v3 + 352) = v0;

  if (v0)
  {
    v11 = *(v3 + 336);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCFE4E38()
{
  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  OUTLINED_FUNCTION_26_37();
  v2 = qword_1EDE4EBE8;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  v28 = v2;
  v29 = v1[8];
  *(v0 + v1[9]) = 256;
  v3 = OUTLINED_FUNCTION_52_29();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_10_79();
  *(v0 + v7) = MEMORY[0x1E69E7CC0];
  v8 = v1[29];
  v9 = *MEMORY[0x1E69D0678];
  v10 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v10);
  (*(v11 + 104))(v0 + v8, v9);
  v12 = v1[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v17 = __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_47_25(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  sub_1DCB67914();
}

uint64_t sub_1DCFE50BC()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCFE512C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[48];
  v6 = v4[47];
  v7 = v4[46];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 192));
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCFE5250()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = v3;
  v0[33] = v5;
  v6 = sub_1DD0DB04C();
  v0[34] = v6;
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_24_0();
  v0[35] = v8;
  v10 = *(v9 + 64);
  v0[36] = OUTLINED_FUNCTION_38();
  v11 = type metadata accessor for OutputGenerationManifest();
  v0[37] = v11;
  v12 = *(*(v11 - 8) + 64);
  v0[38] = OUTLINED_FUNCTION_38();
  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = sub_1DCFE53E0;

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(v4, v2);
}

uint64_t sub_1DCFE53E0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  *v4 = *v1;
  v3[40] = v8;

  if (v0)
  {
    v9 = v3[38];
    v10 = v3[36];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCFE5528()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 320);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v5 = *(v0 + 320);
    OUTLINED_FUNCTION_151();
    v23 = OUTLINED_FUNCTION_10_0();
    *v3 = 136315138;
    v6 = [v5 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v7, v8, &v23);
    OUTLINED_FUNCTION_81_11();
    *(v3 + 1) = v6;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  v14 = [*(v0 + 320) dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v15 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v15))
  {
    OUTLINED_FUNCTION_41_13();
    if (v14)
    {
      MEMORY[0x1E12A72C0](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    OUTLINED_FUNCTION_103();

    v17 = [v14 fullPrint];

    v18 = sub_1DD0DDFBC();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v0 + 328) = v18;
  *(v0 + 336) = v20;
  v21 = swift_task_alloc();
  *(v0 + 344) = v21;
  *v21 = v0;
  v21[1] = sub_1DCFE5770;

  return static TCCTemplates.locationServicesSettingsLabel()();
}

uint64_t sub_1DCFE5770()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  OUTLINED_FUNCTION_76_17(v5, v6);
  v8 = *(v7 + 344);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v3 + 352) = v0;

  if (v0)
  {
    v11 = *(v3 + 336);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCFE586C()
{
  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  OUTLINED_FUNCTION_26_37();
  v2 = qword_1EDE4EBE8;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  v28 = v2;
  v29 = v1[8];
  *(v0 + v1[9]) = 256;
  v3 = OUTLINED_FUNCTION_52_29();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_10_79();
  *(v0 + v7) = MEMORY[0x1E69E7CC0];
  v8 = v1[29];
  v9 = *MEMORY[0x1E69D0678];
  v10 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v10);
  (*(v11 + 104))(v0 + v8, v9);
  v12 = v1[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v17 = __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_47_25(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  sub_1DCB67914();
}

uint64_t sub_1DCFE5AF0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[48];
  v6 = v4[47];
  v7 = v4[46];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 192));
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCFE5C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)();
}

uint64_t sub_1DCFE5CAC(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1DD0DB04C();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[23] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCFE5D9C, 0, 0);
}

void sub_1DCFE5D9C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[17] = v2;
  v0[18] = &off_1F58563F0;
  v0[14] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_103();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFE5EE8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[26];
  v7 = v4[25];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v11 + 224) = v10;
  *(v11 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCFE6024()
{
  v42 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = *(v0 + 224);
  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v7 = *(v0 + 224);
    OUTLINED_FUNCTION_151();
    v41 = OUTLINED_FUNCTION_10_0();
    *v5 = 136315138;
    v8 = [v7 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v9, v10, &v41);
    OUTLINED_FUNCTION_81_11();
    *(v5 + 1) = v8;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  OUTLINED_FUNCTION_53_20();
  v16 = OUTLINED_FUNCTION_25_34(&qword_1EDE4EBE8);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_11_70();
  *(v1 + v20) = MEMORY[0x1E69E7CC0];
  v21 = *(v2 + 116);
  v22 = *MEMORY[0x1E69D0678];
  v23 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v23);
  (*(v24 + 104))(v1 + v21, v22);
  v25 = *(v2 + 120);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v30 = __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_49_25(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  sub_1DCB67914();
}

uint64_t sub_1DCFE6324()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[24];
  v2 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  OUTLINED_FUNCTION_29();
  v4 = v0[29];

  return v3();
}

uint64_t sub_1DCFE6398()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[33];
  v3 = v1[32];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFE64B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0[19] = v1;
  v2 = sub_1DD0DB04C();
  v0[20] = v2;
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_24_0();
  v0[21] = v4;
  v6 = *(v5 + 64);
  v0[22] = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for OutputGenerationManifest();
  v0[23] = v7;
  v8 = *(*(v7 - 8) + 64);
  v0[24] = OUTLINED_FUNCTION_38();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCFE65FC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[17] = v2;
  v0[18] = &off_1F58563F0;
  v0[14] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_103();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFE6748()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[26];
  v7 = v4[25];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v11 + 224) = v10;
  *(v11 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCFE6884()
{
  v42 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = *(v0 + 224);
  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v7 = *(v0 + 224);
    OUTLINED_FUNCTION_151();
    v41 = OUTLINED_FUNCTION_10_0();
    *v5 = 136315138;
    v8 = [v7 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v9, v10, &v41);
    OUTLINED_FUNCTION_81_11();
    *(v5 + 1) = v8;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  OUTLINED_FUNCTION_53_20();
  v16 = OUTLINED_FUNCTION_25_34(&qword_1EDE4EBE8);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_11_70();
  *(v1 + v20) = MEMORY[0x1E69E7CC0];
  v21 = *(v2 + 116);
  v22 = *MEMORY[0x1E69D0678];
  v23 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v23);
  (*(v24 + 104))(v1 + v21, v22);
  v25 = *(v2 + 120);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v30 = __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_49_25(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  sub_1DCB67914();
}

uint64_t sub_1DCFE6B84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[33];
  v3 = v1[32];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFE6CA0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCFE487C(a1, a2, a3);
}

uint64_t sub_1DCFE6D64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return (sub_1DCFE5CAC)(a1, a2);
}

uint64_t sub_1DCFE6E1C()
{
  if (qword_1EDE47FC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDE57D20;
  if (*(qword_1EDE57D20 + 16) && (v1 = sub_1DCC5F8E4(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v5[3] = &type metadata for AFFeatureFlagDefinitions;
    v5[4] = sub_1DCFEBC10();
    v3 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

void sub_1DCFE6EE8()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFE7088(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v1 + 224);
  v3 = *(v1 + 232);
  *(v1 + 224) = *a1;
  v5 = *(v1 + 240);
  *(v1 + 240) = v2;
  sub_1DCFEB434(v4, v3, v5);

  sub_1DCFE6EE8();
}

uint64_t sub_1DCFE70CC()
{
  sub_1DCFE7148(v2);
  v0 = v2[0];

  return v0;
}

void sub_1DCFE7108(_BYTE *a1@<X8>)
{
  sub_1DCFE7148(v3);
  v2 = v3[1];

  *a1 = v2;
}

id sub_1DCFE7148@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 240) == 1)
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = v3 >> 8;
    v6 = v3 & 1;
    result = v4;
  }

  else
  {
    sub_1DCFEBBA8();
    result = swift_allocError();
    v4 = result;
    LOBYTE(v5) = 3;
    v6 = 1;
  }

  *a1 = v6;
  *(a1 + 1) = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DCFE71CC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCFE7220()
{
  v3 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 88);
  v2 = sub_1DD0DD8FC();
  *(v0 + 104) = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFE759C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFE7694()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);
  sub_1DCFEB434(*(v0 + 112), *(v0 + 120), 0);

  v2 = *(v0 + 80);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFE7704()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_151();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "#SiriLocationAccessGuardFlow execute - failed to issue response; error=%@", v11, 0xCu);
    sub_1DCB16D50(v12, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
    sub_1DCFEB434(v10, v9, 0);
  }

  else
  {
    sub_1DCFEB434(*(v0 + 112), *(v0 + 120), 0);
  }

  v15 = *(v0 + 80);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v16();
}

void sub_1DCFE788C(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((~a1 & 0xF000000000000006) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      *v7 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_80();
    }

    sub_1DCFEBBA8();
    v12 = swift_allocError();
LABEL_7:
    v13 = 3;
LABEL_8:
    v14 = 1;
    goto LABEL_17;
  }

  if ((a1 >> 62) >= 2)
  {
    if (a1 >> 62 == 2)
    {
      v12 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1DCDCB08C(a1);
      sub_1DCBF4488(a1);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v27 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
      sub_1DCBF4488(a1);
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6EC();
      sub_1DCBB1234(a1);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_151();
        v31 = OUTLINED_FUNCTION_83();
        v53 = v31;
        *v30 = 136315138;
        sub_1DCBF4488(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        v32 = sub_1DD0DE02C();
        v34 = sub_1DCB10E9C(v32, v33, &v53);

        *(v30 + 4) = v34;
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v35, v36, "#SiriLocationAccessGuardFlow convertOutcomeFrom - error-LocationAuthorizationResult; error=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      sub_1DCBB1234(a1);

      goto LABEL_7;
    }

    if (a1 >> 1 != 0x6000000000000000)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v45 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6CC();
      if (OUTLINED_FUNCTION_5(v47))
      {
        v48 = OUTLINED_FUNCTION_50_0();
        *v48 = 0;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v49, v50, v51, v52, v48, 2u);
        OUTLINED_FUNCTION_80();
        sub_1DCBB1234(0xC000000000000008);
      }

      v12 = 0;
      v13 = 2;
      goto LABEL_8;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v37 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v38, v39))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_51();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCBB1234(a1);

    v12 = 0;
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v16 = a2 ^ 1;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = v16 | a1;
    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      v21[1] = v17 & 1;
      OUTLINED_FUNCTION_51();
      _os_log_impl(v22, v23, v24, v25, v26, 8u);
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCBB1234(a1);

    v12 = 0;
    v14 = (v17 & 1) == 0;
    if (v17)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_17:
  *a3 = v14;
  *(a3 + 1) = v13;
  *(a3 + 8) = v12;
}