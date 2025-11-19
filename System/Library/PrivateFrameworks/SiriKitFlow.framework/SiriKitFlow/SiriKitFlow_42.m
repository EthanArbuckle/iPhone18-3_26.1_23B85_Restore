void sub_1DCF04A48()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_74_16();
  v5 = *(v4 + 80);
  v7 = *(v6 + 88);
  v8 = type metadata accessor for RCHFlowFrame.State();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_39_26();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v52 - v19;
  v21 = *v1;
  v22 = *(v1 + 24);
  v52 = *(v1 + 16);
  v53 = v21;
  v23 = *(v1 + 32);
  v24 = *(v1 + 40);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC();
  if (v24)
  {
    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v25 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_61_20(v25, xmmword_1DD0E07C0);
    v26 = v53;
    swift_getErrorValue();
    v27 = sub_1DD0DF18C();
    v29 = v28;
    v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v25[4].n128_u64[0] = sub_1DCB34060();
    v25[2].n128_u64[0] = v27;
    v25[2].n128_u64[1] = v29;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC();

    *v20 = v26;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    v30 = v26;
  }

  else
  {
    sub_1DCEFF010(v3);
    OUTLINED_FUNCTION_63_0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v31 = *(v3 + 8);

      if ((v22 & 0x100) == 0)
      {
        if (v23)
        {
          v32 = v23;
          sub_1DD0DE6DC();
          OUTLINED_FUNCTION_6_1();
          sub_1DD0DD7EC();
          v33 = v52;
          *v20 = v53;
          v20[8] = v22;
          *(v20 + 2) = v31;
          *(v20 + 3) = v33;
          *(v20 + 4) = v23;
          OUTLINED_FUNCTION_131();
          swift_storeEnumTagMultiPayload();
          v34 = v33;
          sub_1DD0DCF8C();
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_6_1();
        sub_1DD0DD7EC();
        switch(v22)
        {
          case 1:
          case 2:
          case 3:
            v50 = sub_1DD0DF0AC();

            if (v50)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          default:

LABEL_15:
            sub_1DD0DE6DC();
            OUTLINED_FUNCTION_6_1();
            sub_1DD0DD7EC();
LABEL_16:
            OUTLINED_FUNCTION_96_9();
            *(v20 + 4) = 0;
            OUTLINED_FUNCTION_131();
            swift_storeEnumTagMultiPayload();
            v51 = v11;
            sub_1DD0DCF8C();
        }
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC();
      OUTLINED_FUNCTION_96_9();
      *(v20 + 4) = v23;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      v48 = v23;
      v49 = v0;
      sub_1DD0DCF8C();
    }

    v35 = v11[1];
    v36 = OUTLINED_FUNCTION_63_0();
    v35(v36);
    LODWORD(v53) = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v37 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_35_29(v37, xmmword_1DD0E07C0);
    sub_1DCEFF010(v20);
    OUTLINED_FUNCTION_131();
    sub_1DD0DF07C();
    v38 = OUTLINED_FUNCTION_131();
    v35(v38);
    v39 = v54;
    v40 = v55;
    v37[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v37[4].n128_u64[0] = sub_1DCB34060();
    v37[2].n128_u64[0] = v39;
    v37[2].n128_u64[1] = v40;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000028);
    sub_1DCEFF010(v2);
    OUTLINED_FUNCTION_44_23();
    sub_1DD0DF07C();
    v41 = OUTLINED_FUNCTION_44_23();
    v35(v41);
    v42 = v55;
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v43 = OUTLINED_FUNCTION_24_30();
    v45 = CommandFailure.init(errorCode:reason:)(v43, v44, v42);
    sub_1DCC7AE30();
    v46 = OUTLINED_FUNCTION_79_0();
    *v47 = v45;
    *v20 = v46;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_89_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCF04FBC()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_74_16();
  v3 = *(v2 + 80);
  v5 = *(v4 + 88);
  v6 = type metadata accessor for RCHFlowFrame.State();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_39_26();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v47 - v20;
  v22 = *v0;
  v23 = *(v0 + 8);
  v24 = *(v0 + 16);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC();
  if (v24)
  {
    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v25 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_61_20(v25, xmmword_1DD0E07C0);
    swift_getErrorValue();
    v26 = sub_1DD0DF18C();
    v28 = v27;
    v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v25[4].n128_u64[0] = sub_1DCB34060();
    v25[2].n128_u64[0] = v26;
    v25[2].n128_u64[1] = v28;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC();

    *v21 = v22;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    v29 = v22;
  }

  else
  {
    sub_1DCEFF010(v1);
    OUTLINED_FUNCTION_63_0();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v30 = *(v1 + 8);
      v31 = *(v1 + 16);
      v32 = *(v1 + 24);

      *v21 = v22;
      v21[8] = v30;
      *(v21 + 2) = v31;
      *(v21 + 3) = v23;
      *(v21 + 4) = 0;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      v33 = v22;
      sub_1DD0DCF8C();
    }

    v34 = *(v9 + 8);
    v35 = OUTLINED_FUNCTION_63_0();
    v34(v35);
    v47[3] = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v36 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_35_29(v36, xmmword_1DD0E07C0);
    sub_1DCEFF010(v21);
    OUTLINED_FUNCTION_131();
    sub_1DD0DF07C();
    v37 = OUTLINED_FUNCTION_131();
    v34(v37);
    v38 = v48;
    v39 = v49;
    v36[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v36[4].n128_u64[0] = sub_1DCB34060();
    v36[2].n128_u64[0] = v38;
    v36[2].n128_u64[1] = v39;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000028);
    sub_1DCEFF010(v15);
    OUTLINED_FUNCTION_90_0();
    sub_1DD0DF07C();
    v40 = OUTLINED_FUNCTION_90_0();
    v34(v40);
    v41 = v49;
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v42 = OUTLINED_FUNCTION_24_30();
    v44 = CommandFailure.init(errorCode:reason:)(v42, v43, v41);
    sub_1DCC7AE30();
    v45 = OUTLINED_FUNCTION_79_0();
    *v46 = v44;
    *v21 = v45;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_89_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCF05370()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  v6 = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_65_14();
  OUTLINED_FUNCTION_6();
  v18 = *(v17 + 80);
  OUTLINED_FUNCTION_6();
  v20 = *(v19 + 88);
  v21 = type metadata accessor for RCHFlowFrame.State();
  v22 = OUTLINED_FUNCTION_9(v21);
  v58 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22, v26);
  OUTLINED_FUNCTION_10_2();
  v59 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_39_26();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v58 - v35;
  v38 = *v5;
  v37 = v5[1];
  v39 = v5[2];
  v60 = v0;
  sub_1DCEFF010(&v58 - v35);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v47 = v1;
    v48 = v14;
    (*(v58 + 8))(v36, v21);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v49 = sub_1DD0DD8FC();
    v50 = __swift_project_value_buffer(v49, qword_1EDE57E00);
    v51 = *(v49 - 8);
    (*(v51 + 16))(v47, v50, v49);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v49);
    sub_1DCB099BC(v47, v48, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
    {
      sub_1DCB16DB0(v48, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v52 = sub_1DD0DD8EC();
      v53 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v54 = 136315650;
        v55 = sub_1DD0DEC3C();
        v57 = sub_1DCB10E9C(v55, v56, &v61);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2048;
        *(v54 + 14) = 570;
        *(v54 + 22) = 2080;
        *(v54 + 24) = sub_1DCB10E9C(0x7463657078656E55, 0xEF65746174536465, &v61);
        _os_log_impl(&dword_1DCAFC000, v52, v53, "FatalError at %s:%lu - %s", v54, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v51 + 8))(v48, v49);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0x7463657078656E55, 0xEF65746174536465);
  }

  v40 = *v36;
  v41 = *(v36 + 1);
  if (!(v38 >> 62))
  {
    *v3 = v37;
    *(v3 + 8) = 0;
    *(v3 + 16) = v38;
    *(v3 + 24) = v39;
    *(v3 + 32) = 0;
    OUTLINED_FUNCTION_63_0();
    swift_storeEnumTagMultiPayload();
    v43 = v37;
    sub_1DD0DCF8C();
  }

  if (v38 >> 62 != 1)
  {
    if (v41)
    {
      v44 = v41;
    }

    else
    {
      sub_1DD0DD1FC();
      OUTLINED_FUNCTION_26_6();
      v44 = sub_1DD0DD1AC();
    }

    *v2 = v40;
    *(v2 + 8) = 1;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v44;
    OUTLINED_FUNCTION_44_23();
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  if (v37)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_22_36();
    sub_1DD0DD7EC();
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      sub_1DD0DD1FC();
      OUTLINED_FUNCTION_26_6();
      v42 = sub_1DD0DD1AC();
    }

    v46 = v59;
    *v59 = v40;
    *(v46 + 8) = 0;
    v46[3] = 0;
    v46[4] = 0;
    v46[2] = v42;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  *v3 = v38 & 0x3FFFFFFFFFFFFFFFLL;
  OUTLINED_FUNCTION_63_0();
  swift_storeEnumTagMultiPayload();
  v45 = (v38 & 0x3FFFFFFFFFFFFFFFLL);
  sub_1DCEFF0BC(v3);

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCF0594C@<X0>(uint64_t a1@<X8>)
{
  sub_1DCB099BC(v1 + 40, &v4, &qword_1ECCA1BF0, &qword_1DD100F20);
  if (!v5)
  {
    if (qword_1EDE4A110 != -1)
    {
      OUTLINED_FUNCTION_20_1();
    }

    sub_1DCB4BA5C();
  }

  return sub_1DCAFF9E8(&v4, a1);
}

uint64_t sub_1DCF05A20@<X0>(uint64_t *a1@<X8>)
{
  sub_1DCB099BC(v1 + 40, &v5, &qword_1ECCA1BF0, &qword_1DD100F20);
  if (!v6)
  {
    sub_1DCB16DB0(&v5, &qword_1ECCA1BF0, &qword_1DD100F20);
    if (qword_1EDE4A110 != -1)
    {
      OUTLINED_FUNCTION_20_1();
    }

    sub_1DCB4BA5C();
  }

  sub_1DCAFF9E8(&v5, v7);
  sub_1DCB17D04(v7, &v5);
  type metadata accessor for AceServiceInvokerAsyncAdapter();
  v3 = OUTLINED_FUNCTION_55();
  sub_1DCAFF9E8(&v5, v3 + 16);
  a1[3] = v1;
  a1[4] = &off_1F5852030;
  *a1 = v3;
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

char *RCHFlowFrame.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 4);
  swift_unknownObjectRelease();
  sub_1DCB16DB0((v0 + 40), &qword_1ECCA1BF0, &qword_1DD100F20);
  sub_1DCB16DB0((v0 + 80), &qword_1ECCA35F8, &qword_1DD0E97A0);
  sub_1DCB16DB0((v0 + 120), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB16DB0((v0 + 160), qword_1ECCA98A8, &unk_1DD100F40);
  sub_1DCB16DB0((v0 + 200), &qword_1ECCA98A0, &qword_1DD100F28);
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 152);
  v6 = *(v1 + 80);
  OUTLINED_FUNCTION_104();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for RCHFlowFrame.State();
  OUTLINED_FUNCTION_13_1(v9);
  (*(v10 + 8))(&v0[v5]);
  return v0;
}

uint64_t RCHFlowFrame.__deallocating_deinit()
{
  RCHFlowFrame.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCF05CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF05DB8()
{
  OUTLINED_FUNCTION_44_7();
  v2 = v0[3];
  v21 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DCF0A34C;
  OUTLINED_FUNCTION_38_3();

  return sub_1DCF03880(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DCF05E90(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

uint64_t sub_1DCF05EE8()
{
  OUTLINED_FUNCTION_44_7();
  v1 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  OUTLINED_FUNCTION_25_25(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_30_33(v5);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCF03414(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCF05FD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v5 = *v0;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t objectdestroy_3Tm_1()
{
  v2 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_98(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 48);

  v9 = v0 + v4;
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1(v10);
  (*(v11 + 8))(v0 + v4);
  v12 = (v0 + v4 + v2[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v13 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v26 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v26);
      (*(v27 + 8))(v12);
      v28 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v15 = *(v12 + 1);

      v16 = *(v12 + 2);
      goto LABEL_17;
    case 3u:
      v17 = *v12;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v13 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v29 = *v12;
      goto LABEL_23;
    case 6u:
      v30 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v30);
      (*(v31 + 8))(v12);
      v32 = type metadata accessor for USOParse();
      v33 = *(v32 + 20);
      v34 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v34))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v35 + 8))(&v12[v33], v1);
      }

      v25 = *(v32 + 24);
      goto LABEL_16;
    case 7u:
      v18 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v18);
      (*(v19 + 8))(v12);
      v20 = type metadata accessor for USOParse();
      v21 = *(v20 + 20);
      v22 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v22))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v23 + 8))(&v12[v21], v1);
      }

      OUTLINED_FUNCTION_9_23(*(v20 + 24));

      v24 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_9_23(v24[5]);

      OUTLINED_FUNCTION_9_23(v24[6]);

      v25 = v24[7];
LABEL_16:
      OUTLINED_FUNCTION_9_23(v25);
LABEL_17:

      break;
    case 8u:
      v36 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v36);
      (*(v37 + 8))(v12);
      v38 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_9_23(v38[5]);

      v39 = &v12[v38[6]];
      v40 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v39, 1, v40))
      {
        v41 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v41);
        (*(v42 + 8))(v39);
        v57 = v40;
        v43 = *(v40 + 20);
        v44 = sub_1DD0DB3EC();
        v56 = v43;
        v45 = v39 + v43;
        v46 = v44;
        if (!__swift_getEnumTagSinglePayload(v45, 1, v44))
        {
          OUTLINED_FUNCTION_112(v46);
          (*(v47 + 8))(v39 + v56, v46);
        }

        v48 = *(v39 + *(v57 + 24) + 8);
      }

      v29 = *&v12[v38[7]];
LABEL_23:

      break;
    case 9u:
      v13 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v13);
      (*(v14 + 8))(v12);
      break;
    default:
      break;
  }

  v49 = *(v9 + v2[6]);

  v50 = (v9 + v2[7]);
  if (v50[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  v51 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;

  v53 = *(v0 + v52 + 8);

  v54 = *(v0 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1DCF06558()
{
  OUTLINED_FUNCTION_44_7();
  v1 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  OUTLINED_FUNCTION_25_25(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_30_33(v5);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCF03070(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCF06644(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCF06680(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 24);
}

void sub_1DCF066CC(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v3;
  v4 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v4;
  v5 = v2;
  v6 = v3;
  sub_1DD0DCF8C();
}

void sub_1DCF0671C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF067A0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);

  v6 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

uint64_t sub_1DCF06810(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for RCHFlowFrame.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF069E8()
{
  v3[4] = "@";
  result = type metadata accessor for SiriKitFlowFrameInput();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v3[5] = v3;
    v3[6] = &unk_1DD1010A8;
    v3[7] = &unk_1DD101110;
    v3[8] = &unk_1DD1010A8;
    v3[9] = "@";
    v3[10] = &unk_1DD101128;
    v3[11] = &unk_1DD101110;
    v3[12] = &unk_1DD101128;
    v3[13] = &unk_1DD1010C0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCF06AC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v7 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v8 = *(a2 + 48);
      *(a1 + 48) = v8;
      v9 = v8;
      v10 = **(v8 - 8);
      v11 = v7;

      v10(a1 + 24, a2 + 24, v9);
      goto LABEL_42;
    case 1u:
      v28 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 16))(a1, a2, v29);
          goto LABEL_40;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 16))(a1, a2, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v53 + 48)) = *(a2 + *(v53 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v46 = *(a2 + 8);
          *a1 = *a2;
          *(a1 + 8) = v46;
          *(a1 + 16) = *(a2 + 16);

          goto LABEL_40;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_40;
        case 4u:
          v44 = sub_1DD0DB1EC();
          (*(*(v44 - 8) + 16))(a1, a2, v44);
          goto LABEL_40;
        case 5u:
          v54 = *a2;
          *a1 = *a2;
          v55 = v54;
          goto LABEL_40;
        case 6u:
          v56 = sub_1DD0DB4BC();
          (*(*(v56 - 8) + 16))(a1, a2, v56);
          v57 = type metadata accessor for USOParse();
          v58 = v57[5];
          v59 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v58, 1, v59))
          {
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy((a1 + v58), (a2 + v58), *(*(v60 - 8) + 64));
          }

          else
          {
            (*(*(v59 - 8) + 16))(a1 + v58, a2 + v58, v59);
            __swift_storeEnumTagSinglePayload(a1 + v58, 0, 1, v59);
          }

          v92 = v57[6];
          v93 = (a1 + v92);
          v94 = (a2 + v92);
          v95 = v94[1];
          *v93 = *v94;
          v93[1] = v95;
          v96 = v57[7];
          v97 = a1 + v96;
          v98 = a2 + v96;
          *(v97 + 4) = *(v98 + 4);
          *v97 = *v98;

          goto LABEL_40;
        case 7u:
          v47 = sub_1DD0DB4BC();
          (*(*(v47 - 8) + 16))(a1, a2, v47);
          v48 = type metadata accessor for USOParse();
          v49 = v48[5];
          v50 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy((a1 + v49), (a2 + v49), *(*(v51 - 8) + 64));
          }

          else
          {
            (*(*(v50 - 8) + 16))(a1 + v49, a2 + v49, v50);
            __swift_storeEnumTagSinglePayload(a1 + v49, 0, 1, v50);
          }

          v72 = v48[6];
          v73 = (a1 + v72);
          v74 = (a2 + v72);
          v75 = v74[1];
          *v73 = *v74;
          v73[1] = v75;
          v76 = v48[7];
          v77 = a1 + v76;
          v78 = a2 + v76;
          *(v77 + 4) = *(v78 + 4);
          *v77 = *v78;
          v79 = type metadata accessor for LinkParse();
          v80 = v79[5];
          v81 = (a1 + v80);
          v82 = (a2 + v80);
          v83 = v82[1];
          *v81 = *v82;
          v81[1] = v83;
          v84 = v79[6];
          v85 = (a1 + v84);
          v86 = (a2 + v84);
          v87 = v86[1];
          *v85 = *v86;
          v85[1] = v87;
          v88 = v79[7];
          v89 = (a1 + v88);
          v90 = (a2 + v88);
          v91 = v90[1];
          *v89 = *v90;
          v89[1] = v91;

          goto LABEL_40;
        case 8u:
          v61 = sub_1DD0DD12C();
          (*(*(v61 - 8) + 16))(a1, a2, v61);
          v62 = type metadata accessor for NLRouterParse();
          v63 = v62[5];
          v64 = (a1 + v63);
          v65 = (a2 + v63);
          v66 = v65[1];
          *v64 = *v65;
          v64[1] = v66;
          v67 = v62[6];
          v68 = (a1 + v67);
          v69 = (a2 + v67);
          v70 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v69, 1, v70))
          {
            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v68, v69, *(*(v71 - 8) + 64));
          }

          else
          {
            v99 = sub_1DD0DB4BC();
            (*(*(v99 - 8) + 16))(v68, v69, v99);
            v100 = v70[5];
            v101 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v69[v100], 1, v101))
            {
              v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v68[v100], &v69[v100], *(*(v102 - 8) + 64));
            }

            else
            {
              (*(*(v101 - 8) + 16))(&v68[v100], &v69[v100], v101);
              __swift_storeEnumTagSinglePayload(&v68[v100], 0, 1, v101);
            }

            v103 = v70[6];
            v104 = &v68[v103];
            v105 = &v69[v103];
            v106 = *(v105 + 1);
            *v104 = *v105;
            *(v104 + 1) = v106;
            v107 = v70[7];
            v108 = &v68[v107];
            v109 = &v69[v107];
            v108[4] = v109[4];
            *v108 = *v109;

            __swift_storeEnumTagSinglePayload(v68, 0, 1, v70);
          }

          v110 = v62[7];
          v111 = *(a2 + v110);
          *(a1 + v110) = v111;
          v112 = v111;
          goto LABEL_40;
        case 9u:
          v45 = sub_1DD0DD08C();
          (*(*(v45 - 8) + 16))(a1, a2, v45);
LABEL_40:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v28 - 8) + 64));
          break;
      }

      v113 = type metadata accessor for SiriKitFlowFrameInput();
      *(a1 + v113[5]) = *(a2 + v113[5]);
      *(a1 + v113[6]) = *(a2 + v113[6]);
      v114 = v113[7];
      v115 = a1 + v114;
      v116 = a2 + v114;
      v117 = *(a2 + v114 + 24);
      *(a1 + v114 + 24) = v117;
      v118 = v117;
      v119 = **(v117 - 8);

      v119(v115, v116, v118);
      v121 = *(a3 + 16);
      v120 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      v122 = *(swift_getTupleTypeMetadata2() + 48);
      v123 = *(a2 + v122);
      *(a1 + v122) = v123;
      v124 = v123;
      goto LABEL_42;
    case 2u:
      v17 = *a2;
      v18 = *(a2 + 8);
      *a1 = v17;
      *(a1 + 8) = v18;
      v19 = v17;
      sub_1DD0DCF8C();
    case 3u:
      v20 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v22 = *(a2 + 16);
      v21 = *(a2 + 24);
      *(a1 + 16) = v22;
      *(a1 + 24) = v21;
      v23 = v20;

      sub_1DD0DCF8C();
    case 4u:
      v12 = *a2;
      v13 = *(a2 + 8);
      *a1 = v12;
      *(a1 + 8) = v13;
      v14 = v12;
      sub_1DD0DCF8C();
    case 5u:
      v30 = *a2;
      v31 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v31;
      v32 = *(a2 + 40);
      *(a1 + 40) = v32;
      v33 = v32;
      v34 = **(v32 - 8);
      v35 = v30;

      v34(a1 + 16, a2 + 16, v33);
      *(a1 + 56) = *(a2 + 56);
      sub_1DD0DCF8C();
    case 6u:
      v36 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v37 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v37;
      *(a1 + 32) = *(a2 + 32);
      v38 = v36;
      sub_1DD0DCF8C();
    case 7u:
      v24 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v26 = *(a2 + 16);
      v25 = *(a2 + 24);
      *(a1 + 16) = v26;
      *(a1 + 24) = v25;
      v27 = v24;
      sub_1DD0DCF8C();
    case 8u:
      v41 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v42 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v42;
      *(a1 + 32) = *(a2 + 32);
      v43 = v41;
      sub_1DD0DCF8C();
    case 9u:
      v15 = *a2;
      v16 = v15;
      *a1 = v15;
LABEL_42:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v39 = *(v6 + 64);

      result = memcpy(a1, a2, v39);
      break;
  }

  return result;
}

void sub_1DCF075E4(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v9 = *(a1 + 16);

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
      return;
    case 1u:
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = sub_1DD0DC76C();
          goto LABEL_20;
        case 1u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 8))(a1, v26);
          v27 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

          break;
        case 2u:
          v14 = *(a1 + 8);

          v15 = *(a1 + 16);
          goto LABEL_32;
        case 3u:
          v16 = *a1;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v10 = sub_1DD0DB1EC();
          goto LABEL_20;
        case 5u:
          v28 = *a1;
          goto LABEL_38;
        case 6u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 8))(a1, v29);
          v30 = type metadata accessor for USOParse();
          v31 = *(v30 + 20);
          v32 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v31, 1, v32))
          {
            (*(*(v32 - 8) + 8))(a1 + v31, v32);
          }

          v25 = *(v30 + 24);
          goto LABEL_31;
        case 7u:
          v17 = sub_1DD0DB4BC();
          (*(*(v17 - 8) + 8))(a1, v17);
          v18 = type metadata accessor for USOParse();
          v19 = *(v18 + 20);
          v20 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v19, 1, v20))
          {
            (*(*(v20 - 8) + 8))(a1 + v19, v20);
          }

          v21 = *(a1 + *(v18 + 24) + 8);

          v22 = type metadata accessor for LinkParse();
          v23 = *(a1 + v22[5] + 8);

          v24 = *(a1 + v22[6] + 8);

          v25 = v22[7];
LABEL_31:
          v33 = *(a1 + v25 + 8);
LABEL_32:

          break;
        case 8u:
          v34 = sub_1DD0DD12C();
          (*(*(v34 - 8) + 8))(a1, v34);
          v35 = type metadata accessor for NLRouterParse();
          v36 = *(a1 + v35[5] + 8);

          v37 = a1 + v35[6];
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

          v28 = *(a1 + v35[7]);
LABEL_38:

          break;
        case 9u:
          v10 = sub_1DD0DD08C();
LABEL_20:
          (*(*(v10 - 8) + 8))(a1, v10);
          break;
        default:
          break;
      }

      v43 = type metadata accessor for SiriKitFlowFrameInput();
      v44 = *(a1 + *(v43 + 24));

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(v43 + 28)));
      v46 = *(a2 + 16);
      v45 = *(a2 + 24);
      swift_getAssociatedTypeWitness();
      v6 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
      goto LABEL_40;
    case 2u:
    case 4u:

      v4 = *(a1 + 8);
      goto LABEL_14;
    case 3u:

      v7 = *(a1 + 16);

      v8 = *(a1 + 24);
      goto LABEL_14;
    case 5u:

      v11 = *(a1 + 8);

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      v12 = *(a1 + 56);
LABEL_14:

      return;
    case 6u:
    case 8u:

      v5 = *(a1 + 16);

      v6 = *(a1 + 32);
      goto LABEL_40;
    case 7u:

      v13 = *(a1 + 16);

      v6 = *(a1 + 24);
LABEL_40:

      goto LABEL_7;
    case 9u:
      v6 = *a1;

LABEL_7:

      break;
    default:
      return;
  }
}

void *sub_1DCF07BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v7 = *(a2 + 48);
      *(a1 + 48) = v7;
      v8 = v7;
      v9 = **(v7 - 8);
      v10 = v6;

      v9(a1 + 24, a2 + 24, v8);
      goto LABEL_40;
    case 1u:
      v27 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v28 = sub_1DD0DC76C();
          (*(*(v28 - 8) + 16))(a1, a2, v28);
          goto LABEL_38;
        case 1u:
          v51 = sub_1DD0DC76C();
          (*(*(v51 - 8) + 16))(a1, a2, v51);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v52 + 48)) = *(a2 + *(v52 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v45 = *(a2 + 8);
          *a1 = *a2;
          *(a1 + 8) = v45;
          *(a1 + 16) = *(a2 + 16);

          goto LABEL_38;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_38;
        case 4u:
          v43 = sub_1DD0DB1EC();
          (*(*(v43 - 8) + 16))(a1, a2, v43);
          goto LABEL_38;
        case 5u:
          v53 = *a2;
          *a1 = *a2;
          v54 = v53;
          goto LABEL_38;
        case 6u:
          v55 = sub_1DD0DB4BC();
          (*(*(v55 - 8) + 16))(a1, a2, v55);
          v56 = type metadata accessor for USOParse();
          v57 = v56[5];
          v58 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v57, 1, v58))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy((a1 + v57), (a2 + v57), *(*(v59 - 8) + 64));
          }

          else
          {
            (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
            __swift_storeEnumTagSinglePayload(a1 + v57, 0, 1, v58);
          }

          v91 = v56[6];
          v92 = (a1 + v91);
          v93 = (a2 + v91);
          v94 = v93[1];
          *v92 = *v93;
          v92[1] = v94;
          v95 = v56[7];
          v96 = a1 + v95;
          v97 = a2 + v95;
          *(v96 + 4) = *(v97 + 4);
          *v96 = *v97;

          goto LABEL_38;
        case 7u:
          v46 = sub_1DD0DB4BC();
          (*(*(v46 - 8) + 16))(a1, a2, v46);
          v47 = type metadata accessor for USOParse();
          v48 = v47[5];
          v49 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v48, 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy((a1 + v48), (a2 + v48), *(*(v50 - 8) + 64));
          }

          else
          {
            (*(*(v49 - 8) + 16))(a1 + v48, a2 + v48, v49);
            __swift_storeEnumTagSinglePayload(a1 + v48, 0, 1, v49);
          }

          v71 = v47[6];
          v72 = (a1 + v71);
          v73 = (a2 + v71);
          v74 = v73[1];
          *v72 = *v73;
          v72[1] = v74;
          v75 = v47[7];
          v76 = a1 + v75;
          v77 = a2 + v75;
          *(v76 + 4) = *(v77 + 4);
          *v76 = *v77;
          v78 = type metadata accessor for LinkParse();
          v79 = v78[5];
          v80 = (a1 + v79);
          v81 = (a2 + v79);
          v82 = v81[1];
          *v80 = *v81;
          v80[1] = v82;
          v83 = v78[6];
          v84 = (a1 + v83);
          v85 = (a2 + v83);
          v86 = v85[1];
          *v84 = *v85;
          v84[1] = v86;
          v87 = v78[7];
          v88 = (a1 + v87);
          v89 = (a2 + v87);
          v90 = v89[1];
          *v88 = *v89;
          v88[1] = v90;

          goto LABEL_38;
        case 8u:
          v60 = sub_1DD0DD12C();
          (*(*(v60 - 8) + 16))(a1, a2, v60);
          v61 = type metadata accessor for NLRouterParse();
          v62 = v61[5];
          v63 = (a1 + v62);
          v64 = (a2 + v62);
          v65 = v64[1];
          *v63 = *v64;
          v63[1] = v65;
          v66 = v61[6];
          v67 = (a1 + v66);
          v68 = (a2 + v66);
          v69 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v68, 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v67, v68, *(*(v70 - 8) + 64));
          }

          else
          {
            v98 = sub_1DD0DB4BC();
            (*(*(v98 - 8) + 16))(v67, v68, v98);
            v99 = v69[5];
            v100 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v68[v99], 1, v100))
            {
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v67[v99], &v68[v99], *(*(v101 - 8) + 64));
            }

            else
            {
              (*(*(v100 - 8) + 16))(&v67[v99], &v68[v99], v100);
              __swift_storeEnumTagSinglePayload(&v67[v99], 0, 1, v100);
            }

            v102 = v69[6];
            v103 = &v67[v102];
            v104 = &v68[v102];
            v105 = *(v104 + 1);
            *v103 = *v104;
            *(v103 + 1) = v105;
            v106 = v69[7];
            v107 = &v67[v106];
            v108 = &v68[v106];
            v107[4] = v108[4];
            *v107 = *v108;

            __swift_storeEnumTagSinglePayload(v67, 0, 1, v69);
          }

          v109 = v61[7];
          v110 = *(a2 + v109);
          *(a1 + v109) = v110;
          v111 = v110;
          goto LABEL_38;
        case 9u:
          v44 = sub_1DD0DD08C();
          (*(*(v44 - 8) + 16))(a1, a2, v44);
LABEL_38:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v27 - 8) + 64));
          break;
      }

      v112 = type metadata accessor for SiriKitFlowFrameInput();
      *(a1 + v112[5]) = *(a2 + v112[5]);
      *(a1 + v112[6]) = *(a2 + v112[6]);
      v113 = v112[7];
      v114 = a1 + v113;
      v115 = a2 + v113;
      v116 = *(a2 + v113 + 24);
      *(a1 + v113 + 24) = v116;
      v117 = v116;
      v118 = **(v116 - 8);

      v118(v114, v115, v117);
      v120 = *(a3 + 16);
      v119 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      v121 = *(swift_getTupleTypeMetadata2() + 48);
      v122 = *(a2 + v121);
      *(a1 + v121) = v122;
      v123 = v122;
      goto LABEL_40;
    case 2u:
      v16 = *a2;
      v17 = *(a2 + 8);
      *a1 = v16;
      *(a1 + 8) = v17;
      v18 = v16;
      sub_1DD0DCF8C();
    case 3u:
      v19 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      *(a1 + 16) = v21;
      *(a1 + 24) = v20;
      v22 = v19;

      sub_1DD0DCF8C();
    case 4u:
      v11 = *a2;
      v12 = *(a2 + 8);
      *a1 = v11;
      *(a1 + 8) = v12;
      v13 = v11;
      sub_1DD0DCF8C();
    case 5u:
      v29 = *a2;
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      v31 = *(a2 + 40);
      *(a1 + 40) = v31;
      v32 = v31;
      v33 = **(v31 - 8);
      v34 = v29;

      v33(a1 + 16, a2 + 16, v32);
      *(a1 + 56) = *(a2 + 56);
      sub_1DD0DCF8C();
    case 6u:
      v35 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v36 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v36;
      *(a1 + 32) = *(a2 + 32);
      v37 = v35;
      sub_1DD0DCF8C();
    case 7u:
      v23 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v25 = *(a2 + 16);
      v24 = *(a2 + 24);
      *(a1 + 16) = v25;
      *(a1 + 24) = v24;
      v26 = v23;
      sub_1DD0DCF8C();
    case 8u:
      v40 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v41 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v41;
      *(a1 + 32) = *(a2 + 32);
      v42 = v40;
      sub_1DD0DCF8C();
    case 9u:
      v14 = *a2;
      v15 = v14;
      *a1 = v14;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v38 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v38);
      break;
  }

  return result;
}

void *sub_1DCF08688(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 - 8);
    (*(v6 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        v8 = a2[6];
        a1[6] = v8;
        a1[7] = a2[7];
        v9 = **(v8 - 8);
        v10 = v7;

        v9(a1 + 3, a2 + 3, v8);
        goto LABEL_41;
      case 1u:
        v21 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v22 = sub_1DD0DC76C();
            (*(*(v22 - 8) + 16))(a1, a2, v22);
            goto LABEL_39;
          case 1u:
            v40 = sub_1DD0DC76C();
            (*(*(v40 - 8) + 16))(a1, a2, v40);
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *(a1 + *(v41 + 48)) = *(a2 + *(v41 + 48));
            sub_1DD0DCF8C();
          case 2u:
            *a1 = *a2;
            a1[1] = a2[1];
            a1[2] = a2[2];

            goto LABEL_39;
          case 3u:
            *a1 = *a2;
            swift_unknownObjectRetain();
            goto LABEL_39;
          case 4u:
            v33 = sub_1DD0DB1EC();
            (*(*(v33 - 8) + 16))(a1, a2, v33);
            goto LABEL_39;
          case 5u:
            v42 = *a2;
            *a1 = *a2;
            v43 = v42;
            goto LABEL_39;
          case 6u:
            v44 = sub_1DD0DB4BC();
            (*(*(v44 - 8) + 16))(a1, a2, v44);
            v45 = type metadata accessor for USOParse();
            v46 = v45[5];
            v47 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(a2 + v46, 1, v47))
            {
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(a1 + v46, a2 + v46, *(*(v48 - 8) + 64));
            }

            else
            {
              (*(*(v47 - 8) + 16))(a1 + v46, a2 + v46, v47);
              __swift_storeEnumTagSinglePayload(a1 + v46, 0, 1, v47);
            }

            v76 = v45[6];
            v77 = (a1 + v76);
            v78 = (a2 + v76);
            *v77 = *v78;
            v77[1] = v78[1];
            v79 = v45[7];
            v80 = a1 + v79;
            v81 = a2 + v79;
            v82 = *v81;
            v80[4] = v81[4];
            *v80 = v82;

            goto LABEL_39;
          case 7u:
            v35 = sub_1DD0DB4BC();
            (*(*(v35 - 8) + 16))(a1, a2, v35);
            v36 = type metadata accessor for USOParse();
            v37 = v36[5];
            v38 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(a2 + v37, 1, v38))
            {
              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(a1 + v37, a2 + v37, *(*(v39 - 8) + 64));
            }

            else
            {
              (*(*(v38 - 8) + 16))(a1 + v37, a2 + v37, v38);
              __swift_storeEnumTagSinglePayload(a1 + v37, 0, 1, v38);
            }

            v59 = v36[6];
            v60 = (a1 + v59);
            v61 = (a2 + v59);
            *v60 = *v61;
            v60[1] = v61[1];
            v62 = v36[7];
            v63 = a1 + v62;
            v64 = a2 + v62;
            v65 = *v64;
            v63[4] = v64[4];
            *v63 = v65;
            v66 = type metadata accessor for LinkParse();
            v67 = v66[5];
            v68 = (a1 + v67);
            v69 = (a2 + v67);
            *v68 = *v69;
            v68[1] = v69[1];
            v70 = v66[6];
            v71 = (a1 + v70);
            v72 = (a2 + v70);
            *v71 = *v72;
            v71[1] = v72[1];
            v73 = v66[7];
            v74 = (a1 + v73);
            v75 = (a2 + v73);
            *v74 = *v75;
            v74[1] = v75[1];

            goto LABEL_39;
          case 8u:
            v49 = sub_1DD0DD12C();
            (*(*(v49 - 8) + 16))(a1, a2, v49);
            v50 = type metadata accessor for NLRouterParse();
            v51 = v50[5];
            v52 = (a1 + v51);
            v53 = (a2 + v51);
            *v52 = *v53;
            v52[1] = v53[1];
            v54 = v50[6];
            v55 = a1 + v54;
            v56 = a2 + v54;
            v57 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v56, 1, v57))
            {
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v55, v56, *(*(v58 - 8) + 64));
            }

            else
            {
              v83 = sub_1DD0DB4BC();
              (*(*(v83 - 8) + 16))(v55, v56, v83);
              v84 = v57[5];
              v85 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v56[v84], 1, v85))
              {
                v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v55[v84], &v56[v84], *(*(v86 - 8) + 64));
              }

              else
              {
                (*(*(v85 - 8) + 16))(&v55[v84], &v56[v84], v85);
                __swift_storeEnumTagSinglePayload(&v55[v84], 0, 1, v85);
              }

              v87 = v57[6];
              v88 = &v55[v87];
              v89 = &v56[v87];
              *v88 = *v89;
              *(v88 + 1) = *(v89 + 1);
              v90 = v57[7];
              v91 = &v55[v90];
              v92 = &v56[v90];
              v93 = *v92;
              v91[4] = v92[4];
              *v91 = v93;

              __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
            }

            v94 = v50[7];
            v95 = *(a2 + v94);
            *(a1 + v94) = v95;
            v96 = v95;
            goto LABEL_39;
          case 9u:
            v34 = sub_1DD0DD08C();
            (*(*(v34 - 8) + 16))(a1, a2, v34);
LABEL_39:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(a1, a2, *(*(v21 - 8) + 64));
            break;
        }

        v97 = type metadata accessor for SiriKitFlowFrameInput();
        *(a1 + v97[5]) = *(a2 + v97[5]);
        *(a1 + v97[6]) = *(a2 + v97[6]);
        v98 = v97[7];
        v99 = a1 + v98;
        v100 = a2 + v98;
        v101 = *(a2 + v98 + 24);
        *(v99 + 3) = v101;
        *(v99 + 4) = *(a2 + v98 + 32);
        v102 = **(v101 - 8);

        v102(v99, v100, v101);
        v104 = *(a3 + 16);
        v103 = *(a3 + 24);
        swift_getAssociatedTypeWitness();
        v105 = *(swift_getTupleTypeMetadata2() + 48);
        v106 = *(a2 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_41;
      case 2u:
        v15 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v16 = v15;
        sub_1DD0DCF8C();
      case 3u:
        v17 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        v18 = v17;

        sub_1DD0DCF8C();
      case 4u:
        v11 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v12 = v11;
        sub_1DD0DCF8C();
      case 5u:
        v23 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v24 = a2[5];
        a1[5] = v24;
        a1[6] = a2[6];
        v25 = **(v24 - 8);
        v26 = v23;

        v25(a1 + 2, a2 + 2, v24);
        a1[7] = a2[7];
        sub_1DD0DCF8C();
      case 6u:
        v27 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v28 = v27;
        sub_1DD0DCF8C();
      case 7u:
        v19 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        v20 = v19;
        sub_1DD0DCF8C();
      case 8u:
        v31 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v32 = v31;
        sub_1DD0DCF8C();
      case 9u:
        v13 = *a2;
        v14 = v13;
        *a1 = v13;
LABEL_41:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v29 = *(v6 + 64);

        return memcpy(a1, a2, v29);
    }
  }

  return a1;
}

char *sub_1DCF09240(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        goto LABEL_26;
      case 1u:
        v17 = sub_1DD0DC76C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v18 + 48)] = *&a2[*(v18 + 48)];
        goto LABEL_26;
      case 4u:
        v20 = sub_1DD0DB1EC();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        goto LABEL_26;
      case 6u:
        v21 = sub_1DD0DB4BC();
        (*(*(v21 - 8) + 32))(a1, a2, v21);
        v22 = type metadata accessor for USOParse();
        v23 = v22[5];
        v24 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v23], 1, v24))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v23], &a2[v23], *(*(v25 - 8) + 64));
        }

        else
        {
          (*(*(v24 - 8) + 32))(&a1[v23], &a2[v23], v24);
          __swift_storeEnumTagSinglePayload(&a1[v23], 0, 1, v24);
        }

        *&a1[v22[6]] = *&a2[v22[6]];
        v35 = v22[7];
        v36 = &a1[v35];
        v37 = &a2[v35];
        v36[4] = v37[4];
        *v36 = *v37;
        goto LABEL_26;
      case 7u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(a1, a2, v26);
        v27 = type metadata accessor for USOParse();
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v28], &a2[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          __swift_storeEnumTagSinglePayload(&a1[v28], 0, 1, v29);
        }

        *&a1[v27[6]] = *&a2[v27[6]];
        v38 = v27[7];
        v39 = &a1[v38];
        v40 = &a2[v38];
        v39[4] = v40[4];
        *v39 = *v40;
        v41 = type metadata accessor for LinkParse();
        *&a1[v41[5]] = *&a2[v41[5]];
        *&a1[v41[6]] = *&a2[v41[6]];
        *&a1[v41[7]] = *&a2[v41[7]];
        goto LABEL_26;
      case 8u:
        v10 = sub_1DD0DD12C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for NLRouterParse();
        *&a1[v11[5]] = *&a2[v11[5]];
        v12 = v11[6];
        v13 = &a1[v12];
        v14 = &a2[v12];
        v15 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v14, 1, v15))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v13, v14, *(*(v16 - 8) + 64));
        }

        else
        {
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 32))(v13, v14, v31);
          v32 = v15[5];
          v33 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v33))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v32], &v14[v32], *(*(v34 - 8) + 64));
          }

          else
          {
            (*(*(v33 - 8) + 32))(&v13[v32], &v14[v32], v33);
            __swift_storeEnumTagSinglePayload(&v13[v32], 0, 1, v33);
          }

          *&v13[v15[6]] = *&v14[v15[6]];
          v42 = v15[7];
          v43 = &v13[v42];
          v44 = &v14[v42];
          v43[4] = v44[4];
          *v43 = *v44;
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
        }

        *&a1[v11[7]] = *&a2[v11[7]];
        goto LABEL_26;
      case 9u:
        v19 = sub_1DD0DD08C();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }

    v45 = type metadata accessor for SiriKitFlowFrameInput();
    a1[v45[5]] = a2[v45[5]];
    *&a1[v45[6]] = *&a2[v45[6]];
    v46 = v45[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    v51 = *(a3 + 16);
    v50 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

char *sub_1DCF09998(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v8 = sub_1DD0DC76C();
        (*(*(v8 - 8) + 32))(a1, a2, v8);
        goto LABEL_27;
      case 1u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
        goto LABEL_27;
      case 4u:
        v21 = sub_1DD0DB1EC();
        (*(*(v21 - 8) + 32))(a1, a2, v21);
        goto LABEL_27;
      case 6u:
        v22 = sub_1DD0DB4BC();
        (*(*(v22 - 8) + 32))(a1, a2, v22);
        v23 = type metadata accessor for USOParse();
        v24 = v23[5];
        v25 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v24], 1, v25))
        {
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v24], &a2[v24], *(*(v26 - 8) + 64));
        }

        else
        {
          (*(*(v25 - 8) + 32))(&a1[v24], &a2[v24], v25);
          __swift_storeEnumTagSinglePayload(&a1[v24], 0, 1, v25);
        }

        *&a1[v23[6]] = *&a2[v23[6]];
        v36 = v23[7];
        v37 = &a1[v36];
        v38 = &a2[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        goto LABEL_27;
      case 7u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(a1, a2, v27);
        v28 = type metadata accessor for USOParse();
        v29 = v28[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v29], &a2[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 32))(&a1[v29], &a2[v29], v30);
          __swift_storeEnumTagSinglePayload(&a1[v29], 0, 1, v30);
        }

        *&a1[v28[6]] = *&a2[v28[6]];
        v39 = v28[7];
        v40 = &a1[v39];
        v41 = &a2[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        v42 = type metadata accessor for LinkParse();
        *&a1[v42[5]] = *&a2[v42[5]];
        *&a1[v42[6]] = *&a2[v42[6]];
        *&a1[v42[7]] = *&a2[v42[7]];
        goto LABEL_27;
      case 8u:
        v11 = sub_1DD0DD12C();
        (*(*(v11 - 8) + 32))(a1, a2, v11);
        v12 = type metadata accessor for NLRouterParse();
        *&a1[v12[5]] = *&a2[v12[5]];
        v13 = v12[6];
        v14 = &a1[v13];
        v15 = &a2[v13];
        v16 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v15, 1, v16))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v14, v15, *(*(v17 - 8) + 64));
        }

        else
        {
          v32 = sub_1DD0DB4BC();
          (*(*(v32 - 8) + 32))(v14, v15, v32);
          v33 = v16[5];
          v34 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v33], 1, v34))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v33], &v15[v33], *(*(v35 - 8) + 64));
          }

          else
          {
            (*(*(v34 - 8) + 32))(&v14[v33], &v15[v33], v34);
            __swift_storeEnumTagSinglePayload(&v14[v33], 0, 1, v34);
          }

          *&v14[v16[6]] = *&v15[v16[6]];
          v43 = v16[7];
          v44 = &v14[v43];
          v45 = &v15[v43];
          v44[4] = v45[4];
          *v44 = *v45;
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
        }

        *&a1[v12[7]] = *&a2[v12[7]];
        goto LABEL_27;
      case 9u:
        v20 = sub_1DD0DD08C();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

    v46 = type metadata accessor for SiriKitFlowFrameInput();
    a1[v46[5]] = a2[v46[5]];
    *&a1[v46[6]] = *&a2[v46[6]];
    v47 = v46[7];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    *(v48 + 4) = *(v49 + 4);
    v52 = *(a3 + 16);
    v51 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

unint64_t sub_1DCF0A144()
{
  result = qword_1ECCA9A38[0];
  if (!qword_1ECCA9A38[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA9A30, qword_1DD101158);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA9A38);
  }

  return result;
}

uint64_t sub_1DCF0A1DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

uint64_t sub_1DCF0A234@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_99(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = *(v1 + 4);
  result = (*(v4 + 240))(&v1[v10], *&v1[(*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8], v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1DCF0A2E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DCF0A33C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t OUTLINED_FUNCTION_89_7()
{

  return sub_1DCEFF0BC(v0);
}

uint64_t OUTLINED_FUNCTION_106_5()
{
  result = v0;
  v4 = *(v1 - 160);
  v3 = *(v1 - 152);
  return result;
}

void OUTLINED_FUNCTION_109_5()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_113_5(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[121] = a2;
  v2[120] = a1;
  v2[117] = v3;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_117_5()
{

  return sub_1DCAFF9E8((v0 + 760), v0 + 1016);
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return sub_1DCAFF9E8((v0 + 544), v0 + 936);
}

void sub_1DCF0A468(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1DD0DCF8C();
}

_BYTE *storeEnumTagSinglePayload for RCHFlowFrameConstants(_BYTE *result, int a2, int a3)
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

void sub_1DCF0A714(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t ReactiveFlow.plan.getter()
{
  OUTLINED_FUNCTION_13();
  v3 = v0 + *(v1 + 96);
  return (*(*(*(v2 + 80) - 8) + 16))();
}

uint64_t ReactiveFlow.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 104);
  v5 = sub_1DD0DB04C();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 16);

  return v8(a1, v1 + v4, v6);
}

uint64_t sub_1DCF0A88C()
{
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 112);
  return OUTLINED_FUNCTION_2_95(v2);
}

uint64_t sub_1DCF0A8D4()
{
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 128);
  return OUTLINED_FUNCTION_2_95(v2);
}

uint64_t sub_1DCF0A8F8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  v4 = *(v3 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_59();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for ReactiveFlow.State();
  OUTLINED_FUNCTION_2(v9);
  return (*(v10 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCF0A9A0(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  v4 = *(v3 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_59();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for ReactiveFlow.State();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t ReactiveFlow.__allocating_init(plan:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ReactiveFlow.init(plan:)(a1);
  return v5;
}

uint64_t ReactiveFlow.init(plan:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  v5 = v1 + *(v4 + 104);
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_66();
  *(v1 + *(v6 + 112)) = 0;
  OUTLINED_FUNCTION_66();
  *(v1 + *(v7 + 128)) = 0;
  OUTLINED_FUNCTION_66();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v8 + 96), a1, *(v2 + 80));
  OUTLINED_FUNCTION_66();
  v10 = *(v9 + 136);
  v11 = *(v2 + 88);
  OUTLINED_FUNCTION_7_7();
  type metadata accessor for ReactiveFlow.State();
  swift_storeEnumTagMultiPayload();
  return v1;
}

void sub_1DCF0AB90()
{
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1DCF0A868();
}

void sub_1DCF0AE68()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 88);
  v3 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v32[2] = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v32[3] = v32 - v9;
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_0_1();
  v32[6] = v11;
  v32[7] = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v32[4] = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v32[5] = v32 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  OUTLINED_FUNCTION_0_1();
  v32[11] = v20;
  v32[12] = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19, v23);
  v32[8] = v32 - v24;
  v32[9] = v3;
  v32[10] = v1;
  v25 = type metadata accessor for ReactiveFlow.State();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  sub_1DCF0AB90();
}

uint64_t sub_1DCF0B610()
{
  if (qword_1ECCA13A8 != -1)
  {
    OUTLINED_FUNCTION_5_89();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1ECCD2748);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Starting subscription now...", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = *(v0 + 16);

  sub_1DCF0B718();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DCF0B718()
{
  OUTLINED_FUNCTION_13();
  (*(*(v2 + 88) + 48))(v0 + *(v2 + 96), *(v1 + 80), *(v2 + 88));
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  sub_1DD0DDC4C();

  return sub_1DCF0A8D4();
}

uint64_t sub_1DCF0B894(void **a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = type metadata accessor for ReactiveFlow.State();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v25 - v8);
  v10 = *a1;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1ECCD2748);
  v12 = v10;
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v10;
    v28 = v26;
    *v15 = 136315138;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9B48, &qword_1DD1014E0);
    v17 = sub_1DD0DE02C();
    HIDWORD(v25) = v14;
    v19 = sub_1DCB10E9C(v17, v18, &v28);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DCAFC000, v13, BYTE4(v25), "Subscription received completion signal %s", v15, 0xCu);
    v20 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A8390](v20, -1, -1);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  if (v10)
  {
    *v9 = v10;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v21 = v10;
  }

  else
  {
    sub_1DCF0E35C();
    v22 = swift_allocError();
    *v23 = 1;
    *v9 = v22;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return sub_1DCF0A9A0(v9);
}

uint64_t sub_1DCF0BBF0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v38 = type metadata accessor for ReactiveFlow.State();
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38, v7);
  v37 = v35 - v8;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for _FlowPlanEvent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v35 - v17;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1ECCD2748);
  v20 = *(v10 + 16);
  v20(v18, a1, v9);
  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35[0] = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v36 = v20;
    v26 = v25;
    v39 = v25;
    *v24 = 136315138;
    v36(v15, v18, v9);
    v27 = sub_1DD0DE02C();
    v35[1] = a2;
    v29 = v28;
    (*(v10 + 8))(v18, v9);
    v30 = sub_1DCB10E9C(v27, v29, &v39);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1DCAFC000, v21, v22, "Subscription received event %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v31 = v26;
    v20 = v36;
    MEMORY[0x1E12A8390](v31, -1, -1);
    v32 = v24;
    a1 = v35[0];
    MEMORY[0x1E12A8390](v32, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v18, v9);
  }

  v33 = v37;
  v20(v37, a1, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1DCF0A9A0(v33);
}

uint64_t ReactiveFlow.deinit()
{
  OUTLINED_FUNCTION_23_2();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 96), *(v1 + 80));
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 104);
  v5 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 8))(v0 + v4);
  OUTLINED_FUNCTION_66();
  v8 = *(v0 + *(v7 + 112));

  OUTLINED_FUNCTION_66();
  v10 = *(v0 + *(v9 + 128));

  OUTLINED_FUNCTION_66();
  v12 = *(v11 + 136);
  v13 = *(v1 + 88);
  v14 = type metadata accessor for ReactiveFlow.State();
  OUTLINED_FUNCTION_2(v14);
  (*(v15 + 8))(v0 + v12);
  return v0;
}

uint64_t ReactiveFlow.__deallocating_deinit()
{
  ReactiveFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void ReactiveFlow<>.handle(event:)()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);
  (*(v2 + 56))(v4, *(v3 + 80));
  OUTLINED_FUNCTION_15_56();
  OUTLINED_FUNCTION_15_56();
  OUTLINED_FUNCTION_131();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_131();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_131();
  swift_getAssociatedConformanceWitness();
  sub_1DD0DCF8C();
}

uint64_t ReactiveFlow<>.accept(input:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(*v2 + 80);
  v6 = v2 + *(*v2 + 96);
  return v4(a1, v5, a2);
}

uint64_t ReactiveFlow.description.getter()
{
  v1 = *v0;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x6576697463616552, 0xED00003C776F6C46);
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  v4 = *(*(v1 + 88) + 8);
  sub_1DD0DF08C();
  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1DCF0C454()
{
  result = qword_1EDE4D668;
  if (!qword_1EDE4D668)
  {
    sub_1DD0DB04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D668);
  }

  return result;
}

uint64_t sub_1DCF0C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DCF0C4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DCF0C4F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF0C530(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v12 = *(v3 - 8) + 64;
    v6 = sub_1DD0DB04C();
    if (v7 > 0x3F)
    {
      return v6;
    }

    else
    {
      v13 = *(v6 - 8) + 64;
      v8 = *(a1 + 88);
      v9 = type metadata accessor for ReactiveFlow.State();
      v4 = v9;
      if (v10 <= 0x3F)
      {
        v14 = *(v9 - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return v4;
}

uint64_t sub_1DCF0C6DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for _FlowPlanEvent();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    result = sub_1DD0DF22C();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DCF0C7E8(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v12 + 1 <= (v11 + 1))
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = v13 + 1;
  if ((*(v9 + 80) & 0x1000F8) != 0 || v14 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v16 = a2[v13];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    switch(v18)
    {
      case 1:
        v19 = *a2;
        goto LABEL_25;
      case 2:
        v19 = *a2;
        goto LABEL_25;
      case 3:
        v19 = *a2 | (a2[2] << 16);
        goto LABEL_25;
      case 4:
        v19 = *a2;
LABEL_25:
        v20 = (v19 | (v17 << (8 * v13))) + 2;
        v16 = v19 + 2;
        if (v13 < 4)
        {
          v16 = v20;
        }

        break;
      default:
        break;
    }
  }

  if (v16 == 1)
  {
    v25 = a2[v12];
    v26 = v25 - 2;
    if (v25 >= 2)
    {
      if (v12 <= 3)
      {
        v27 = v12;
      }

      else
      {
        v27 = 4;
      }

      switch(v27)
      {
        case 1:
          v28 = *a2;
          goto LABEL_57;
        case 2:
          v28 = *a2;
          goto LABEL_57;
        case 3:
          v28 = *a2 | (a2[2] << 16);
          goto LABEL_57;
        case 4:
          v28 = *a2;
LABEL_57:
          if (v12 < 4)
          {
            v25 = (v28 | (v26 << (8 * v12))) + 2;
          }

          else
          {
            v25 = v28 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v25 == 1)
    {
      v32 = *a2;
      v33 = v32;
      *a1 = v32;
      v34 = 1;
    }

    else
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v34 = 0;
    }

    a1[v12] = v34;
    a1[v13] = 1;
    return a1;
  }

  if (!v16)
  {
    v21 = a2[v11];
    v22 = v21 - 2;
    if (v21 >= 2)
    {
      if (v11 <= 3)
      {
        v23 = v11;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 1:
          v24 = *a2;
          goto LABEL_49;
        case 2:
          v24 = *a2;
          goto LABEL_49;
        case 3:
          v24 = *a2 | (a2[2] << 16);
          goto LABEL_49;
        case 4:
          v24 = *a2;
LABEL_49:
          if (v11 < 4)
          {
            v21 = (v24 | (v22 << (8 * v11))) + 2;
          }

          else
          {
            v21 = v24 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v21 == 1)
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v30 = 1;
    }

    else
    {
      v31 = *(a2 + 24);
      *(a1 + 24) = v31;
      (**(v31 - 8))(a1, a2);
      v30 = 0;
    }

    a1[v11] = v30;
    a1[v13] = 0;
    return a1;
  }

  return memcpy(a1, a2, v14);
}

void sub_1DCF0CB58(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = 40;
  if (v6 > 0x28)
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  if (v6 + 1 <= v7 + 1)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = *(a1 + v8);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *a1;
        goto LABEL_17;
      case 2:
        v12 = *a1;
        goto LABEL_17;
      case 3:
        v12 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_17;
      case 4:
        v12 = *a1;
LABEL_17:
        v13 = (v12 | (v10 << (8 * v8))) + 2;
        v9 = v12 + 2;
        if (v8 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 != 1)
  {
    if (v9)
    {
      return;
    }

    v14 = *(a1 + v7);
    v15 = v14 - 2;
    if (v14 >= 2)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      switch(v16)
      {
        case 1:
          v17 = *a1;
          goto LABEL_38;
        case 2:
          v17 = *a1;
          goto LABEL_38;
        case 3:
          v17 = *a1 | (*(a1 + 2) << 16);
          goto LABEL_38;
        case 4:
          v17 = *a1;
LABEL_38:
          v22 = (v17 | (v15 << (8 * v7))) + 2;
          v14 = v17 + 2;
          if (v7 < 4)
          {
            v14 = v22;
          }

          break;
        default:
          break;
      }
    }

    if (v14 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return;
    }

    goto LABEL_50;
  }

  v18 = *(a1 + v6);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v6 <= 3)
    {
      v20 = v6;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *a1;
        goto LABEL_44;
      case 2:
        v21 = *a1;
        goto LABEL_44;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_44;
      case 4:
        v21 = *a1;
LABEL_44:
        v23 = (v21 | (v19 << (8 * v6))) + 2;
        v18 = v21 + 2;
        if (v6 < 4)
        {
          v18 = v23;
        }

        break;
      default:
        break;
    }
  }

  if (v18 != 1)
  {
LABEL_50:
    v25 = *(*(AssociatedTypeWitness - 8) + 8);

    v25(a1, AssociatedTypeWitness);
    return;
  }

  v24 = *a1;
}

char *sub_1DCF0CDE0(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v12 + 1 <= (v11 + 1))
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = a2[v13];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *a2;
        goto LABEL_19;
      case 2:
        v17 = *a2;
        goto LABEL_19;
      case 3:
        v17 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v17 = *a2;
LABEL_19:
        v18 = (v17 | (v15 << (8 * v13))) + 2;
        v14 = v17 + 2;
        if (v13 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v23 = a2[v12];
    v24 = v23 - 2;
    if (v23 >= 2)
    {
      if (v12 <= 3)
      {
        v25 = v12;
      }

      else
      {
        v25 = 4;
      }

      switch(v25)
      {
        case 1:
          v26 = *a2;
          goto LABEL_50;
        case 2:
          v26 = *a2;
          goto LABEL_50;
        case 3:
          v26 = *a2 | (a2[2] << 16);
          goto LABEL_50;
        case 4:
          v26 = *a2;
LABEL_50:
          v31 = (v26 | (v24 << (8 * v12))) + 2;
          v23 = v26 + 2;
          if (v12 < 4)
          {
            v23 = v31;
          }

          break;
        default:
          break;
      }
    }

    if (v23 == 1)
    {
      v32 = *a2;
      v33 = v32;
      *a1 = v32;
      v34 = 1;
    }

    else
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v34 = 0;
    }

    a1[v12] = v34;
    a1[v13] = 1;
    return a1;
  }

  if (!v14)
  {
    v19 = a2[v11];
    v20 = v19 - 2;
    if (v19 >= 2)
    {
      if (v11 <= 3)
      {
        v21 = v11;
      }

      else
      {
        v21 = 4;
      }

      switch(v21)
      {
        case 1:
          v22 = *a2;
          goto LABEL_43;
        case 2:
          v22 = *a2;
          goto LABEL_43;
        case 3:
          v22 = *a2 | (a2[2] << 16);
          goto LABEL_43;
        case 4:
          v22 = *a2;
LABEL_43:
          v28 = (v22 | (v20 << (8 * v11))) + 2;
          v19 = v22 + 2;
          if (v11 < 4)
          {
            v19 = v28;
          }

          break;
        default:
          break;
      }
    }

    if (v19 == 1)
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v29 = 1;
    }

    else
    {
      v30 = *(a2 + 24);
      *(a1 + 24) = v30;
      (**(v30 - 8))(a1, a2);
      v29 = 0;
    }

    a1[v11] = v29;
    a1[v13] = 0;
    return a1;
  }

  return memcpy(a1, a2, v13 + 1);
}

unsigned __int8 *sub_1DCF0D104(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v12 + 1 <= (v11 + 1))
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = a1[v13];
  v15 = 8 * v13;
  v16 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v17 = v13;
    }

    else
    {
      v17 = 4;
    }

    switch(v17)
    {
      case 1:
        v18 = *a1;
        goto LABEL_20;
      case 2:
        v18 = *a1;
        goto LABEL_20;
      case 3:
        v18 = *a1 | (a1[2] << 16);
        goto LABEL_20;
      case 4:
        v18 = *a1;
LABEL_20:
        v19 = (v18 | (v16 << v15)) + 2;
        v14 = v18 + 2;
        if (v13 < 4)
        {
          v14 = v19;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v24 = a1[v12];
    v25 = v24 - 2;
    if (v24 >= 2)
    {
      if (v12 <= 3)
      {
        v26 = v12;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 1:
          v27 = *a1;
          goto LABEL_47;
        case 2:
          v27 = *a1;
          goto LABEL_47;
        case 3:
          v27 = *a1 | (a1[2] << 16);
          goto LABEL_47;
        case 4:
          v27 = *a1;
LABEL_47:
          if (v12 < 4)
          {
            v24 = (v27 | (v25 << (8 * v12))) + 2;
          }

          else
          {
            v24 = v27 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v24 == 1)
    {

      goto LABEL_53;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_53;
    }

    v20 = a1[v11];
    v21 = v20 - 2;
    if (v20 >= 2)
    {
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      switch(v22)
      {
        case 1:
          v23 = *a1;
          goto LABEL_41;
        case 2:
          v23 = *a1;
          goto LABEL_41;
        case 3:
          v23 = *a1 | (a1[2] << 16);
          goto LABEL_41;
        case 4:
          v23 = *a1;
LABEL_41:
          if (v11 < 4)
          {
            v20 = (v23 | (v21 << (8 * v11))) + 2;
          }

          else
          {
            v20 = v23 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v20 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_53;
    }
  }

  (*(v9 + 8))(a1, AssociatedTypeWitness);
LABEL_53:
  v28 = a2[v13];
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v13 <= 3)
    {
      v30 = v13;
    }

    else
    {
      v30 = 4;
    }

    switch(v30)
    {
      case 1:
        v31 = *a2;
        goto LABEL_62;
      case 2:
        v31 = *a2;
        goto LABEL_62;
      case 3:
        v31 = *a2 | (a2[2] << 16);
        goto LABEL_62;
      case 4:
        v31 = *a2;
LABEL_62:
        v32 = (v31 | (v29 << v15)) + 2;
        v28 = v31 + 2;
        if (v13 < 4)
        {
          v28 = v32;
        }

        break;
      default:
        break;
    }
  }

  if (v28 == 1)
  {
    v37 = a2[v12];
    v38 = v37 - 2;
    if (v37 >= 2)
    {
      if (v12 <= 3)
      {
        v39 = v12;
      }

      else
      {
        v39 = 4;
      }

      switch(v39)
      {
        case 1:
          v40 = *a2;
          goto LABEL_94;
        case 2:
          v40 = *a2;
          goto LABEL_94;
        case 3:
          v40 = *a2 | (a2[2] << 16);
          goto LABEL_94;
        case 4:
          v40 = *a2;
LABEL_94:
          if (v12 < 4)
          {
            v37 = (v40 | (v38 << (8 * v12))) + 2;
          }

          else
          {
            v37 = v40 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v37 == 1)
    {
      v44 = *a2;
      v45 = v44;
      *a1 = v44;
      v46 = 1;
    }

    else
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v46 = 0;
    }

    a1[v12] = v46;
    a1[v13] = 1;
    return a1;
  }

  if (!v28)
  {
    v33 = a2[v11];
    v34 = v33 - 2;
    if (v33 >= 2)
    {
      if (v11 <= 3)
      {
        v35 = v11;
      }

      else
      {
        v35 = 4;
      }

      switch(v35)
      {
        case 1:
          v36 = *a2;
          goto LABEL_86;
        case 2:
          v36 = *a2;
          goto LABEL_86;
        case 3:
          v36 = *a2 | (a2[2] << 16);
          goto LABEL_86;
        case 4:
          v36 = *a2;
LABEL_86:
          if (v11 < 4)
          {
            v33 = (v36 | (v34 << (8 * v11))) + 2;
          }

          else
          {
            v33 = v36 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v33 == 1)
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v42 = 1;
    }

    else
    {
      v43 = *(a2 + 3);
      *(a1 + 3) = v43;
      *(a1 + 4) = *(a2 + 4);
      (**(v43 - 8))(a1, a2);
      v42 = 0;
    }

    a1[v11] = v42;
    a1[v13] = 0;
    return a1;
  }

  return memcpy(a1, a2, v13 + 1);
}

_BYTE *sub_1DCF0D60C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v12 + 1 <= (v11 + 1))
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = a2[v13];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *a2;
        goto LABEL_19;
      case 2:
        v17 = *a2;
        goto LABEL_19;
      case 3:
        v17 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v17 = *a2;
LABEL_19:
        v18 = (v17 | (v15 << (8 * v13))) + 2;
        v14 = v17 + 2;
        if (v13 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v23 = a2[v12];
    v24 = v23 - 2;
    if (v23 >= 2)
    {
      if (v12 <= 3)
      {
        v25 = v12;
      }

      else
      {
        v25 = 4;
      }

      switch(v25)
      {
        case 1:
          v26 = *a2;
          goto LABEL_50;
        case 2:
          v26 = *a2;
          goto LABEL_50;
        case 3:
          v26 = *a2 | (a2[2] << 16);
          goto LABEL_50;
        case 4:
          v26 = *a2;
LABEL_50:
          v31 = (v26 | (v24 << (8 * v12))) + 2;
          v23 = v26 + 2;
          if (v12 < 4)
          {
            v23 = v31;
          }

          break;
        default:
          break;
      }
    }

    if (v23 == 1)
    {
      *a1 = *a2;
      v32 = 1;
    }

    else
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v32 = 0;
    }

    a1[v12] = v32;
    a1[v13] = 1;
    return a1;
  }

  if (!v14)
  {
    v19 = a2[v11];
    v20 = v19 - 2;
    if (v19 >= 2)
    {
      if (v11 <= 3)
      {
        v21 = v11;
      }

      else
      {
        v21 = 4;
      }

      switch(v21)
      {
        case 1:
          v22 = *a2;
          goto LABEL_43;
        case 2:
          v22 = *a2;
          goto LABEL_43;
        case 3:
          v22 = *a2 | (a2[2] << 16);
          goto LABEL_43;
        case 4:
          v22 = *a2;
LABEL_43:
          v28 = (v22 | (v20 << (8 * v11))) + 2;
          v19 = v22 + 2;
          if (v11 < 4)
          {
            v19 = v28;
          }

          break;
        default:
          break;
      }
    }

    if (v19 == 1)
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v29 = 1;
    }

    else
    {
      v29 = 0;
      v30 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v30;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v11] = v29;
    a1[v13] = 0;
    return a1;
  }

  return memcpy(a1, a2, v13 + 1);
}

unsigned __int8 *sub_1DCF0D8FC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v12 + 1 <= (v11 + 1))
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = a1[v13];
  v15 = 8 * v13;
  v16 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v17 = v13;
    }

    else
    {
      v17 = 4;
    }

    switch(v17)
    {
      case 1:
        v18 = *a1;
        goto LABEL_20;
      case 2:
        v18 = *a1;
        goto LABEL_20;
      case 3:
        v18 = *a1 | (a1[2] << 16);
        goto LABEL_20;
      case 4:
        v18 = *a1;
LABEL_20:
        v19 = (v18 | (v16 << v15)) + 2;
        v14 = v18 + 2;
        if (v13 < 4)
        {
          v14 = v19;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v24 = a1[v12];
    v25 = v24 - 2;
    if (v24 >= 2)
    {
      if (v12 <= 3)
      {
        v26 = v12;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 1:
          v27 = *a1;
          goto LABEL_47;
        case 2:
          v27 = *a1;
          goto LABEL_47;
        case 3:
          v27 = *a1 | (a1[2] << 16);
          goto LABEL_47;
        case 4:
          v27 = *a1;
LABEL_47:
          if (v12 < 4)
          {
            v24 = (v27 | (v25 << (8 * v12))) + 2;
          }

          else
          {
            v24 = v27 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v24 == 1)
    {

      goto LABEL_53;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_53;
    }

    v20 = a1[v11];
    v21 = v20 - 2;
    if (v20 >= 2)
    {
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      switch(v22)
      {
        case 1:
          v23 = *a1;
          goto LABEL_41;
        case 2:
          v23 = *a1;
          goto LABEL_41;
        case 3:
          v23 = *a1 | (a1[2] << 16);
          goto LABEL_41;
        case 4:
          v23 = *a1;
LABEL_41:
          if (v11 < 4)
          {
            v20 = (v23 | (v21 << (8 * v11))) + 2;
          }

          else
          {
            v20 = v23 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v20 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_53;
    }
  }

  (*(v9 + 8))(a1, AssociatedTypeWitness);
LABEL_53:
  v28 = a2[v13];
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v13 <= 3)
    {
      v30 = v13;
    }

    else
    {
      v30 = 4;
    }

    switch(v30)
    {
      case 1:
        v31 = *a2;
        goto LABEL_62;
      case 2:
        v31 = *a2;
        goto LABEL_62;
      case 3:
        v31 = *a2 | (a2[2] << 16);
        goto LABEL_62;
      case 4:
        v31 = *a2;
LABEL_62:
        v32 = (v31 | (v29 << v15)) + 2;
        v28 = v31 + 2;
        if (v13 < 4)
        {
          v28 = v32;
        }

        break;
      default:
        break;
    }
  }

  if (v28 == 1)
  {
    v37 = a2[v12];
    v38 = v37 - 2;
    if (v37 >= 2)
    {
      if (v12 <= 3)
      {
        v39 = v12;
      }

      else
      {
        v39 = 4;
      }

      switch(v39)
      {
        case 1:
          v40 = *a2;
          goto LABEL_94;
        case 2:
          v40 = *a2;
          goto LABEL_94;
        case 3:
          v40 = *a2 | (a2[2] << 16);
          goto LABEL_94;
        case 4:
          v40 = *a2;
LABEL_94:
          if (v12 < 4)
          {
            v37 = (v40 | (v38 << (8 * v12))) + 2;
          }

          else
          {
            v37 = v40 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v37 == 1)
    {
      *a1 = *a2;
      v44 = 1;
    }

    else
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v44 = 0;
    }

    a1[v12] = v44;
    a1[v13] = 1;
    return a1;
  }

  if (!v28)
  {
    v33 = a2[v11];
    v34 = v33 - 2;
    if (v33 >= 2)
    {
      if (v11 <= 3)
      {
        v35 = v11;
      }

      else
      {
        v35 = 4;
      }

      switch(v35)
      {
        case 1:
          v36 = *a2;
          goto LABEL_86;
        case 2:
          v36 = *a2;
          goto LABEL_86;
        case 3:
          v36 = *a2 | (a2[2] << 16);
          goto LABEL_86;
        case 4:
          v36 = *a2;
LABEL_86:
          if (v11 < 4)
          {
            v33 = (v36 | (v34 << (8 * v11))) + 2;
          }

          else
          {
            v33 = v36 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v33 == 1)
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v43 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v43;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v11] = v42;
    a1[v13] = 0;
    return a1;
  }

  return memcpy(a1, a2, v13 + 1);
}

uint64_t sub_1DCF0DDCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = 40;
  if (v8 > 0x28)
  {
    v9 = v8;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = v8 + 1;
  if (v10 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 253) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v16 < 2)
    {
LABEL_27:
      v18 = *(a1 + v11);
      if (v18 >= 3)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_27;
  }

LABEL_19:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return (v12 | v17) + 254;
}

void sub_1DCF0DF44(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = 40;
  if (v9 > 0x28)
  {
    v10 = v9;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v11 = v9 + 1;
  if (v11 <= v10 + 1)
  {
    v11 = v10 + 1;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if (a3 < 0xFE)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 + ~(-1 << v13) - 253) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFD)
  {
    v15 = a2 - 254;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v11 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v12] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCF0E144(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 40;
  if (v5 > 0x28)
  {
    v6 = v5;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v7 = v5 + 1;
  if (v7 <= v6 + 1)
  {
    v7 = v6 + 1;
  }

  result = a1[v7];
  if (result >= 2)
  {
    if (v7 <= 3)
    {
      v9 = v7;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a1;
        goto LABEL_16;
      case 2:
        v10 = *a1;
        goto LABEL_16;
      case 3:
        v10 = *a1 | (a1[2] << 16);
        goto LABEL_16;
      case 4:
        v10 = *a1;
LABEL_16:
        v11 = (v10 | ((result - 2) << (8 * v7))) + 2;
        v12 = v10 + 2;
        if (v7 >= 4)
        {
          result = v12;
        }

        else
        {
          result = v11;
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCF0E238(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = 40;
  if (v8 > 0x28)
  {
    v9 = v8;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = v8 + 1;
  if (v10 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v10;
  }

  if (a2 > 1)
  {
    v12 = a2 - 2;
    if (v11 < 4)
    {
      a1[v11] = (v12 >> (8 * v11)) + 2;
      if (v11)
      {
        v13 = v12 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v11 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      a1[v11] = 2;
      bzero(a1, v11);
      *a1 = v12;
    }
  }

  else
  {
    a1[v11] = a2;
  }
}

unint64_t sub_1DCF0E35C()
{
  result = qword_1ECCA9B40;
  if (!qword_1ECCA9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B40);
  }

  return result;
}

uint64_t sub_1DCF0E3B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9B58, &qword_1DD1014F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCF0E418(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB193FC;

  return sub_1DCF0B5F0(a1, a2, v2);
}

unint64_t sub_1DCF0E4C4()
{
  result = qword_1ECCA9B68;
  if (!qword_1ECCA9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA9B60, &qword_1DD101508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReactiveFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCF0E608()
{
  result = qword_1ECCA9B70;
  if (!qword_1ECCA9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B70);
  }

  return result;
}

uint64_t sub_1DCF0E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_bridgeObjectRetain_n();
  sub_1DD0DDC1C();
}

unint64_t ReactiveFlowPlan.description.getter()
{
  sub_1DD0DEC1C();

  swift_getAssociatedTypeWitness();
  v0 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v0);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t static ReactiveFlowPlan._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = v15 - v9;
  (*(a3 + 40))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 48))(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v10, AssociatedTypeWitness);
  v15[1] = v12;
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v13 = sub_1DD0DDBFC();

  return v13;
}

void sub_1DCF0EAB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1ECCD2748);
  sub_1DCB17CA0(a1, v17);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DCB10E9C(a2, a3, &v16);
    *(v9 + 12) = 2080;
    sub_1DCB17CA0(v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9B78, &qword_1DD101600);
    v11 = sub_1DD0DE02C();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v14 = sub_1DCB10E9C(v11, v13, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "[%s] receiveSubscription: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v10, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

void sub_1DCF0EC94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v25 - v13;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1ECCD2748);
  v16 = *(v6 + 16);
  v16(v14, a1, AssociatedTypeWitness);

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v19 = 136315394;
    *(v19 + 4) = sub_1DCB10E9C(v27, a3, &v28);
    *(v19 + 12) = 2080;
    v16(v11, v14, AssociatedTypeWitness);
    v20 = sub_1DD0DE02C();
    v22 = v21;
    (*(v6 + 8))(v14, AssociatedTypeWitness);
    v23 = sub_1DCB10E9C(v20, v22, &v28);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "[%s] receiveOutput: %s", v19, 0x16u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v24, -1, -1);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v14, AssociatedTypeWitness);
  }
}

void sub_1DCF0EF6C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1DCF0EC94(a1, v1[4], v1[5]);
}

void sub_1DCF0EF78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1DD0DDADC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v25 - v13;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1ECCD2748);
  v16 = *(v6 + 16);
  v16(v14, a1, v5);

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v19 = 136315394;
    *(v19 + 4) = sub_1DCB10E9C(v27, a3, &v28);
    *(v19 + 12) = 2080;
    v16(v11, v14, v5);
    v20 = sub_1DD0DE02C();
    v22 = v21;
    (*(v6 + 8))(v14, v5);
    v23 = sub_1DCB10E9C(v20, v22, &v28);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "[%s] receiveCompletion: %s", v19, 0x16u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v24, -1, -1);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v14, v5);
  }
}

void sub_1DCF0F284(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1DCF0EF78(a1, v1[4], v1[5]);
}

void sub_1DCF0F290(uint64_t a1, unint64_t a2)
{
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1ECCD2748);

  oslog = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DCB10E9C(a1, a2, &v9);
    _os_log_impl(&dword_1DCAFC000, oslog, v5, "[%s] receiveCancel", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }
}

void sub_1DCF0F3F0()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

void *sub_1DCF0F50C()
{
  result = 0;
  if ((*(v0 + 47) & 0x20) != 0)
  {
    v2 = *(v0 + 32);
    if (v2)
    {
      v3 = v2;
      return v2;
    }
  }

  return result;
}

uint64_t ReadingFlow.__allocating_init(source:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_3();
  v4 = swift_allocObject();
  ReadingFlow.init(source:)(a1, a2);
  return v4;
}

void *ReadingFlow.init(source:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  v7 = v6;
  swift_unknownObjectRelease();
  v2[4] = v5;
  v2[5] = v7;
  return v2;
}

uint64_t ReadingFlow.__allocating_init(source:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_3();
  v8 = swift_allocObject();
  ReadingFlow.init(source:delegate:)(a1, a2, a3, a4);
  return v8;
}

void *ReadingFlow.init(source:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = 0;
  v4[3] = 0;
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 8))(ObjectType, a2);
  v11 = v10;
  swift_unknownObjectRelease();
  v4[4] = v9;
  v4[5] = v11;
  v12 = v4[2];
  v4[2] = a3;
  v4[3] = a4;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1DCF0F6DC(uint64_t a1)
{
  if ((*(v1 + 47) & 0x20) != 0)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 56);
  swift_unknownObjectRetain();
  v5(&v10, a1, ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = v11;
  if ((~v11 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  *(v1 + 32) = v10;
  *(v1 + 40) = v6;
  sub_1DCB070D4(v8, v9);
  return 1;
}

uint64_t sub_1DCF0F7A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF0F7C4, 0, 0);
}

uint64_t sub_1DCF0F7C4()
{
  v11 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 40);
  if ((v3 & 0x2000000000000000) == 0)
  {
    v10[0] = *(v2 + 32);
    v10[1] = v3;
    type metadata accessor for GroupHandlingFlow();
    swift_allocObject();
    sub_1DCF0F92C(v10[0], v3);
    sub_1DCBFAABC(v10[0], v3);
    sub_1DCD6DED8(v10, 0, 0);
    sub_1DD0DCF8C();
  }

  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(v4 + 36);
  v6 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  *v1 = 1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = -4;
  v7 = (v1 + *(v4 + 40));
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v0[1];

  return v8();
}

id sub_1DCF0F92C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return a1;
  }

  else
  {
    return sub_1DCBFAABC(a1, a2);
  }
}

void sub_1DCF0F938(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a2 + 32) = v2;
  *(a2 + 40) = 0x2000000000000000;
  v5 = v2;

  sub_1DCB070D4(v3, v4);
}

unint64_t sub_1DCF0F988(uint64_t a1)
{
  result = sub_1DCF0F9B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCF0F9B0()
{
  result = qword_1ECCA9B80;
  if (!qword_1ECCA9B80)
  {
    type metadata accessor for ReadingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B80);
  }

  return result;
}

void sub_1DCF0FA28(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF0FAEC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCF0F7A4(a1);
}

void *sub_1DCF0FB88@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCF0F50C();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of ReadingFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCB193FC;

  return v8(a1);
}

uint64_t *assignWithCopy for State(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCF0F92C(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_1DCB070D4(v5, v6);
  return a1;
}

uint64_t *assignWithTake for State(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_1DCB070D4(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 16))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 4) & 1 | (2 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s11SiriKitFlow5StateOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0x3000000000000007;
    }
  }

  return result;
}

double ReadingFlowDelegate.handleInterruption(_:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1DD0E2F10;
  return result;
}

uint64_t static RecentDialog.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECCA9B90 = a1;
  return result;
}

uint64_t sub_1DCF10100@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECCA9B90;
  return result;
}

uint64_t sub_1DCF1014C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECCA9B90 = v1;
  return result;
}

uint64_t RecentDialog.expiresAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt;
  v4 = sub_1DD0DAFDC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t RecentDialog.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId + 8);

  return v1;
}

id RecentDialog.init(addViews:expiresAt:requestId:)()
{
  OUTLINED_FUNCTION_74_0();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_addViews] = v4;
  v6 = OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt;
  v7 = sub_1DD0DAFDC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], v3, v7);
  v9 = &v1[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId];
  *v9 = v2;
  *(v9 + 1) = v0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v8 + 8))(v3, v7);
  return v10;
}

id RecentDialog.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_1DD0DAFDC();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24A8, &qword_1DD0E5278);
  v19 = swift_allocObject();
  v37 = xmmword_1DD0E07C0;
  *(v19 + 16) = xmmword_1DD0E07C0;
  *(v19 + 32) = sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  sub_1DD0DE89C();

  if (!v42)
  {

LABEL_7:
    v23 = &dword_1ECCA3CE0;
    v24 = &unk_1DD0E4F80;
    v25 = v41;
LABEL_11:
    sub_1DCB0E9D8(v25, v23, v24);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v36 = ObjectType;
  v20 = v39;
  v21 = swift_allocObject();
  *(v21 + 16) = v37;
  *(v21 + 32) = sub_1DCB10E5C(0, &qword_1EDE4D6C0, 0x1E695DF00);
  sub_1DD0DE89C();

  if (!v42)
  {

    sub_1DCB0E9D8(v41, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    goto LABEL_10;
  }

  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v9, v22 ^ 1u, 1, v10);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

LABEL_10:
    v23 = &qword_1ECCA9BA0;
    v24 = &qword_1DD0E6280;
    v25 = v9;
    goto LABEL_11;
  }

  v35 = *(v13 + 32);
  v35(v18, v9, v10);
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  *(v30 + 32) = sub_1DCB10E5C(0, &qword_1EDE46098, 0x1E696AEC0);
  sub_1DD0DE89C();

  v31 = v36;
  if (!v42)
  {
    (*(v13 + 8))(v18, v10);

    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v32 = v39;
    v33 = v40;
    *&v2[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_addViews] = v20;
    v35(&v2[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt], v18, v10);
    v34 = &v2[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId];
    *v34 = v32;
    *(v34 + 1) = v33;
    v38.receiver = v2;
    v38.super_class = v31;
    v28 = objc_msgSendSuper2(&v38, sel_init);

    return v28;
  }

  (*(v13 + 8))(v18, v10);

LABEL_12:
  v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v27 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall RecentDialog.encode(with:)(NSCoder with)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_addViews);
  v4 = sub_1DD0DDF8C();
  v5 = OUTLINED_FUNCTION_1_108();
  [v5 v6];

  v7 = sub_1DD0DAF6C();
  v8 = sub_1DD0DDF8C();
  v9 = OUTLINED_FUNCTION_1_108();
  [v9 v10];

  v11 = *(v2 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId);
  v12 = *(v2 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId + 8);
  v13 = sub_1DD0DDF8C();
  v16 = sub_1DD0DDF8C();
  v14 = OUTLINED_FUNCTION_1_108();
  [v14 v15];
}

id RecentDialog.copy(withAddViews:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1DD0DAFDC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  (*(v10 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt);
  v11 = v1 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId;
  v12 = *(v1 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId);
  v13 = *(v11 + 8);
  objc_allocWithZone(ObjectType);

  v14 = a1;
  return RecentDialog.init(addViews:expiresAt:requestId:)();
}

id RecentDialog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentDialog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RecentDialog()
{
  result = qword_1EDE4EAC8;
  if (!qword_1EDE4EAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCF10CBC()
{
  result = sub_1DD0DAFDC();
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

uint64_t ReferenceResolutionClientProtocol.siriMentioned(entities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF10DD0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1DCF10EC8;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF10EC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF10FD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_65();

  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_1DCF11038(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 128) = a3;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_1DD0DD85C();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF11104, 0, 0);
}

void sub_1DCF11104()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 72);
  v3 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (OUTLINED_FUNCTION_26_31())
  {
    OUTLINED_FUNCTION_21_41();
    if ((v4 & 1) == 0)
    {
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_17_39();
        v8 = OUTLINED_FUNCTION_25_26(v7);
        OUTLINED_FUNCTION_4_99(&dword_1DCAFC000, v9, v10, v8, v11, "");
        OUTLINED_FUNCTION_37();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_59();
      if (v5)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_29();
      if (!(!v5 & v6))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v12 = OUTLINED_FUNCTION_1_109();
  v13(v12);
  v14 = sub_1DD0DD8CC();
  OUTLINED_FUNCTION_73_1(v14);
  v15 = OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_0_105(v15);
  v16 = v3[1];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_12_58(v17);
  *v18 = v19;
  v18[1] = sub_1DCF1125C;
  v20 = *(v0 + 64);
  OUTLINED_FUNCTION_152();

  v22(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1DCF1125C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF11358()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_65();

  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_19_3();

  return v3(v2);
}

uint64_t sub_1DCF113C0()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_5_90(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCF1145C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 72);
  v3 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (OUTLINED_FUNCTION_26_31())
  {
    OUTLINED_FUNCTION_21_41();
    if ((v4 & 1) == 0)
    {
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_17_39();
        v8 = OUTLINED_FUNCTION_25_26(v7);
        OUTLINED_FUNCTION_4_99(&dword_1DCAFC000, v9, v10, v8, v11, "");
        OUTLINED_FUNCTION_37();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_59();
      if (v5)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_29();
      if (!(!v5 & v6))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v12 = OUTLINED_FUNCTION_1_109();
  v13(v12);
  v14 = sub_1DD0DD8CC();
  OUTLINED_FUNCTION_73_1(v14);
  v15 = OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_0_105(v15);
  v16 = v3[1];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_12_58(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_3_102(v18);
  OUTLINED_FUNCTION_152();

  v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1DCF115A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t ReferenceResolutionClientProtocol.collectSalientEntities()()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1DD0DD85C();
  v1[5] = v4;
  OUTLINED_FUNCTION_99(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF11748()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_1DD0DD88C();
  v8 = *(v0 + 16);
  __swift_project_value_buffer(v3, qword_1EDE57DD0);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  sub_1DD0DD84C();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1DCF118A4;
  v6 = *(v0 + 56);

  return sub_1DCF11038("RRaaSEntityCollectionTime", 25, 2, v6, &unk_1DD101758, v4);
}

uint64_t sub_1DCF118A4()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v5[10] = v0;

  if (v0)
  {
    (*(v5[6] + 8))(v5[7], v5[5]);
    v11 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[8];
    (*(v5[6] + 8))(v5[7], v5[5]);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_1DCF11A18()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_29();
  v4 = v0[10];

  return v3();
}

uint64_t sub_1DCF11A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF11AA0, 0, 0);
}

uint64_t sub_1DCF11AA0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA8, &qword_1DD101780);
  *v4 = v0;
  v4[1] = sub_1DCF11BA8;
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF11BA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCF11CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BB0, &qword_1DD1017F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  (*(a4 + 8))(sub_1DCF128E0, v14, a3, a4);
}

uint64_t sub_1DCF11E38(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BB0, &qword_1DD1017F0);
    return sub_1DD0DE45C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BB0, &qword_1DD1017F0);
    return sub_1DD0DE46C();
  }
}

uint64_t ReferenceResolutionClientProtocol.collectSalientEntities(timeout:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v1[3] = v4;
  OUTLINED_FUNCTION_99(v3);
  v1[7] = v5;
  v1[8] = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF11F5C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v9 = *(v0 + 32);
  v3 = *(v0 + 32);
  (*(v2 + 16))(v1, *(v0 + 48), v3);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = v9;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = *(off_1E8648610 + 1);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA8, &qword_1DD101780);
  *v7 = v0;
  v7[1] = sub_1DCF120B4;
  v8 = *(v0 + 24);

    ;
  }
}

uint64_t sub_1DCF120B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF121B8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCF12214()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_29();
  v4 = v0[12];

  return v3();
}

uint64_t sub_1DCF12278(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCF12328;

  return ReferenceResolutionClientProtocol.collectSalientEntities()();
}

uint64_t sub_1DCF12328()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCF1246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC0, &qword_1DD0E8E08);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v23 - v17;
  v19 = sub_1DD0DD9CC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v9 + 16))(v13, a1, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, v13, v8);
  (*(a5 + 16))(a3, v18, sub_1DCF12908, v21, v24, a5);

  return sub_1DCF129C8(v18);
}

uint64_t sub_1DCF126D8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF11A7C(v3, v6, v4, v5);
}

uint64_t sub_1DCF12788()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 24);
  v3 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_152();

  return sub_1DCF12278(v5);
}

uint64_t sub_1DCF12930(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_1DCF129C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC0, &qword_1DD0E8E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCF12A3C()
{
  v1 = type metadata accessor for RelationshipLabel();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_1_110(v6, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v0;
  v8 = *(v0 + 1);
  if (EnumCaseMultiPayload != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v11 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2(v11);
    (*(v12 + 8))(&v0[v10]);
  }

  v13 = sub_1DD0DC86C();

  return v13;
}

uint64_t RelationshipLabel.asUnboundedSemanticValue.getter()
{
  v1 = type metadata accessor for RelationshipLabel();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_1_110(v6, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v0;
  v9 = *(v0 + 1);
  if (EnumCaseMultiPayload != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v11 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2(v11);
    (*(v12 + 8))(&v0[v10]);
  }

  return v8;
}

uint64_t type metadata accessor for RelationshipLabel()
{
  result = qword_1ECCA9BB8;
  if (!qword_1ECCA9BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RelationshipLabel.from(intentsRelationship:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD0DDFBC();
  sub_1DCB1C4D8();
  v2 = sub_1DD0DEA5C();
  v3 = sub_1DCCD2C74(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v9)
  {

    MEMORY[0x1E12A66E0](v3, v5, v7, v9);

    swift_bridgeObjectRelease_n();
  }

  v10 = sub_1DD0DE04C();
  v12 = v11;

  *a1 = v10;
  a1[1] = v12;
  type metadata accessor for RelationshipLabel();
  return swift_storeEnumTagMultiPayload();
}

char *initializeBufferWithCopyOfBuffer for RelationshipLabel(char *a1, char *a2, uint64_t a3)
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

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v8 = sub_1DD0DB0FC();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for RelationshipLabel(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(a1 + 8);

  if (EnumCaseMultiPayload != 1)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v6 = sub_1DD0DB0FC();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v5, v6);
  }

  return result;
}

char *initializeWithCopy for RelationshipLabel(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;

  if (EnumCaseMultiPayload != 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v7 = sub_1DD0DB0FC();
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for RelationshipLabel(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_1DCF13094(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v6 = sub_1DD0DB0FC();
      (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCF13094(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipLabel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *initializeWithTake for RelationshipLabel(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v9 = sub_1DD0DB0FC();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for RelationshipLabel(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCF13094(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v9 = sub_1DD0DB0FC();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DCF132D8()
{
  result = sub_1DD0DB0FC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = &unk_1DD101818;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCF13380(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DCF1340C(v2, v3);
}

uint64_t sub_1DCF133C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DCF1340C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *sub_1DCF134B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = 0;
  v7[2] = 0;
  v7[11] = a1;
  v7[12] = a2;
  swift_beginAccess();
  v7[2] = a3;
  v7[3] = a4;
  sub_1DCAFF9E8(a5, (v7 + 6));
  v7[4] = a6;
  v7[5] = a7;
  return v7;
}

uint64_t RenderResponseChunkAction.__allocating_init(_:nextState:renderer:debugDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1DCB17CA0(a4, v14);
  type metadata accessor for RenderResponseChunkAction();
  v12 = swift_allocObject();
  sub_1DCF134B0(sub_1DCC9E268, a1, a2, a3, v14, a5, a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v12;
}

uint64_t RenderResponseChunkAction.__allocating_init(_:nextState:renderer:debugDescription:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1DCB17CA0(a1, v16);
  v12 = swift_allocObject();
  sub_1DCAFF9E8(v16, v12 + 16);
  sub_1DCB17CA0(a4, v15);
  type metadata accessor for RenderResponseChunkAction();
  v13 = swift_allocObject();
  sub_1DCF134B0(sub_1DCC9E1E0, v12, a2, a3, v15, a5, a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

void sub_1DCF13700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 88);
  v6 = *(v2 + 96);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF137A0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if ((a2 & 1) == 0)
  {
    v8 = a5[10];
    __swift_project_boxed_opaque_existential_1(a5 + 6, a5[9]);
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = *(v8 + 8);
    sub_1DD0DCF8C();
  }

  return a3(a1);
}

void *RenderResponseChunkAction.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v3 = v0[12];

  return v0;
}

uint64_t RenderResponseChunkAction.__deallocating_deinit()
{
  RenderResponseChunkAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1390C(uint64_t a1)
{
  result = sub_1DCF13998(&qword_1ECCA9BC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF13954(uint64_t a1)
{
  result = sub_1DCF13998(&unk_1ECCA9BD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF13998(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RenderResponseChunkAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCF13B10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t RequestDeviceUnlockAndRestartFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RequestDeviceUnlockAndRestartFlowFrame.__allocating_init(deviceUnlockDialog:machineUtterance:deviceState:aceServiceInvoker:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  RequestDeviceUnlockAndRestartFlowFrame.init(deviceUnlockDialog:machineUtterance:deviceState:aceServiceInvoker:)(a1, a2, a3, a4, a5);
  return v10;
}

void *RequestDeviceUnlockAndRestartFlowFrame.init(deviceUnlockDialog:machineUtterance:deviceState:aceServiceInvoker:)(void *__src, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  v6 = v5;
  v5[2] = 0xD00000000000001DLL;
  v5[3] = 0x80000001DD116170;
  v5[21] = MEMORY[0x1E69E7CC0];
  v5[4] = a2;
  v5[5] = a3;
  memcpy(v5 + 6, __src, 0x48uLL);
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v9);
  v11 = (*(v10 + 96))(v9, v10);
  type metadata accessor for ViewFactory();
  v12 = swift_allocObject();
  *(v12 + 16) = v11 & 1;
  v6[15] = v12;
  sub_1DCB18FF0(a5, (v6 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v6;
}

uint64_t sub_1DCF13CC0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = *MEMORY[0x1E699F738];
  v12 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 104))(v10, v11);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCF13DC0(uint64_t a1, void *a2, void (*a3)(void *))
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7BD8]) init];
  v6 = a2[15];
  memcpy(__dst, a2 + 6, sizeof(__dst));
  memcpy(__src, a2 + 6, sizeof(__src));
  v7 = *(*v6 + 120);
  sub_1DCBBF670(__dst, v16);
  v8 = v7(__src, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 1);
  memcpy(v16, __src, sizeof(v16));
  sub_1DCBF48A4(v16);
  v9 = sub_1DCF14304();
  sub_1DCF14684(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E97E0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  v11 = a2[21];
  a2[21] = v10;
  v12 = v8;
  v13 = v5;

  __src[0] = 0;
  LOBYTE(__src[1]) = 0;
  a3(__src);
}

void sub_1DCF13F38(uint64_t a1, void (*a2)(void, void))
{
  v3 = v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7BD8]) init];
  v6 = *(v2 + 120);
  memcpy(__dst, (v3 + 48), sizeof(__dst));
  memcpy(__src, (v3 + 48), sizeof(__src));
  v7 = *(*v6 + 120);
  sub_1DCBBF670(__dst, v16);
  v8 = v7(__src, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 1);
  memcpy(v16, __src, sizeof(v16));
  sub_1DCBF48A4(v16);
  v9 = sub_1DCF14304();
  sub_1DCF14684(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E97E0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  v11 = *(v3 + 168);
  *(v3 + 168) = v10;
  v12 = v8;
  v13 = v5;

  a2(0, 0);
}

uint64_t sub_1DCF140A4(void (*a1)(char *), uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v3 = OUTLINED_FUNCTION_2(v23);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v20 - v7;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EDE57E18;
  sub_1DD0DE6DC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v9 = swift_allocObject();
  v21 = xmmword_1DD0E07C0;
  *(v9 + 16) = xmmword_1DD0E07C0;
  v11 = v2[4];
  v10 = v2[5];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1DCB34060();
  *(v9 + 64) = v12;
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  swift_bridgeObjectRetain_n();
  sub_1DD0DD7EC();

  v13 = v2[19];
  v14 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v13);
  v15 = v2[21];
  v16 = *(v14 + 56);

  v16(v17, v13, v14);

  sub_1DD0DE6DC();
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = v12;
  *(v18 + 32) = v11;
  *(v18 + 40) = v10;
  sub_1DD0DD7EC();

  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  v25(v8);
  return sub_1DCB0E9D8(v8, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCF14304()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C79D0]) init];
  sub_1DCB2C534(0x6E696874656D6F73, 0xE900000000000067, v1, &selRef_setRequestId_);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7898]) init];
  sub_1DCB2C534(0xD000000000000027, 0x80000001DD1231F0, v2, &selRef_setReason_);
  v3 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  v4 = [objc_allocWithZone(MEMORY[0x1E69C7AB0]) init];
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = sub_1DD0DDF8C();
  [v4 setUtterance_];

  [v4 setEyesFree_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD0E15D0;
  *(v8 + 32) = v4;
  v9 = v4;
  sub_1DCC6589C(v8, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E97E0;
  *(v10 + 32) = v3;
  *(v10 + 40) = v2;

  return v10;
}

void *RequestDeviceUnlockAndRestartFlowFrame.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[14];

  sub_1DCB409A8(v8, v9);

  v11 = v0[15];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v12 = v0[21];

  return v0;
}

uint64_t RequestDeviceUnlockAndRestartFlowFrame.__deallocating_deinit()
{
  RequestDeviceUnlockAndRestartFlowFrame.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF14638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  restarted = type metadata accessor for RequestDeviceUnlockAndRestartFlowFrame();

  return MEMORY[0x1EEE089D8](a1, restarted, a3);
}

void sub_1DCF14684(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();

  [a2 setSuccessCommands_];
}

unint64_t sub_1DCF14704(uint64_t a1)
{
  result = sub_1DCF1472C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCF1472C()
{
  result = qword_1ECCA9BF8;
  if (!qword_1ECCA9BF8)
  {
    type metadata accessor for RequestDeviceUnlockAndRestartFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9BF8);
  }

  return result;
}

void sub_1DCF14860(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE46630;
  sub_1DCB4E718(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v8[3] = type metadata accessor for RefreshableDeviceState();
  v8[4] = &protocol witness table for RefreshableDeviceState;
  v8[0] = v4;
  sub_1DCB17CA0(v8, v7);
  sub_1DCB17CA0(v8, v6);
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v6, v5 + 16);
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  sub_1DD0DCF8C();
}

void RequestDeviceUnlockFlowStrategy.makePromptForDeviceUnlock(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE46630;
  sub_1DCB4E718(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v8[3] = type metadata accessor for RefreshableDeviceState();
  v8[4] = &protocol witness table for RefreshableDeviceState;
  v8[0] = v4;
  sub_1DCB17CA0(v8, v7);
  sub_1DCB17CA0(v8, v6);
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v6, v5 + 16);
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF14AB8(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v91 = a4;
  v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v86 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v85 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v85 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v85 - v20;
  v90 = type metadata accessor for AceOutput();
  v22 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90, v23);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v33 = v85 - v32;
  v34 = *a1;
  v35 = *(a1 + 24);
  v108 = *(a1 + 8);
  v109 = v35;
  v36 = *(a1 + 56);
  v110 = *(a1 + 40);
  v111 = v36;
  v37 = *(a1 + 72);
  v112 = v108;
  v113 = v35;
  v114 = v110;
  v115 = v36;
  v88 = v37;
  if (v37)
  {
    v94 = v31;
    v98 = 0;
    *&v99 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v98 = 0xD000000000000030;
    *&v99 = 0x80000001DD123400;
    swift_getErrorValue();
    v71 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v71);

    v72 = v98;
    v73 = v99;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v74 = sub_1DD0DD8FC();
    v75 = __swift_project_value_buffer(v74, qword_1EDE57E00);
    v76 = *(v74 - 8);
    (*(v76 + 16))(v33, v75, v74);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v74);
    v77 = v94;
    sub_1DCB09910(v33, v94, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v77, 1, v74) == 1)
    {
      sub_1DCB0E9D8(v94, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v78 = sub_1DD0DD8EC();
      v79 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v98 = v93;
        *v80 = 136315650;
        v81 = sub_1DD0DEC3C();
        v83 = sub_1DCB10E9C(v81, v82, &v98);

        *(v80 + 4) = v83;
        *(v80 + 12) = 2048;
        *(v80 + 14) = 48;
        *(v80 + 22) = 2080;
        *(v80 + 24) = sub_1DCB10E9C(v72, v73, &v98);
        _os_log_impl(&dword_1DCAFC000, v78, v79, "FatalError at %s:%lu - %s", v80, 0x20u);
        v84 = v93;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v84, -1, -1);
        MEMORY[0x1E12A8390](v80, -1, -1);
      }

      (*(v76 + 8))(v94, v74);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v72, v73);
  }

  v38 = a2[3];
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v38);
  v40 = (*(v39 + 96))(v38, v39);
  v41 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  type metadata accessor for ViewFactory();
  memset(v106, 0, sizeof(v106));
  v107 = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = v40 & 1;
  v89 = v34;
  v98 = v34;
  v99 = v112;
  v100 = v113;
  v101 = v114;
  v102 = v115;
  v43 = MEMORY[0x1E69E7CC0];
  v85[1] = v42;
  v46 = sub_1DD0BEA00(&v98, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 1, v44, v45);
  v87 = v21;
  v47 = v21;
  v48 = v46;
  sub_1DCB09910(v47, v18, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB09910(v106, v105, &unk_1ECCA3280, &unk_1DD0E23D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1DD0E15D0;
  v93 = v18;
  v94 = v48;
  *(v49 + 32) = v48;
  v50 = v49;
  v104 = v43;
  sub_1DCB09910(v18, v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  v51 = v41;
  if (__swift_getEnumTagSinglePayload(v14, 1, v41) == 1)
  {
    v52 = v94;
    sub_1DCB0E9D8(v14, &unk_1ECCA3270, &qword_1DD0E0F70);
    v54 = v86;
    v53 = v87;
  }

  else
  {
    v98 = 0;
    v55 = v94;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(&v98);
    v56 = sub_1DCB42D14(v14, type metadata accessor for NLContextUpdate);
    MEMORY[0x1E12A6920](v56);
    v54 = v86;
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v53 = v87;
  }

  v57 = v93;
  sub_1DCB09910(v93, v54, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v54, 1, v51) == 1)
  {
    sub_1DCB0E9D8(v54, &unk_1ECCA3270, &qword_1DD0E0F70);
    v58 = v89;
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v59 = sub_1DCB42D14(v54, type metadata accessor for NLContextUpdate);
    MEMORY[0x1E12A6920](v59);
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v58 = v89;
    v57 = v93;
  }

  sub_1DCBB920C(v50);
  sub_1DCBB920C(MEMORY[0x1E69E7CC0]);

  sub_1DCB0E9D8(v106, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v53, &unk_1ECCA3270, &qword_1DD0E0F70);
  v60 = v104;
  v61 = v90;
  sub_1DCBB6C68(v57, &v25[*(v90 + 28)]);
  v62 = v61[9];
  v63 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(&v25[v62], 1, 1, v63);
  v64 = v61[8];
  v65 = *MEMORY[0x1E69D0678];
  v66 = sub_1DD0DD15C();
  (*(*(v66 - 8) + 104))(&v25[v64], v65, v66);
  *(v25 + 15) = 0;
  *(v25 + 104) = 0u;
  *(v25 + 88) = 0u;
  sub_1DCB6C5E8(v105, (v25 + 88));
  v25[v61[10]] = 0;
  *v25 = v60;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 9) = 0;
  *(v25 + 8) = 0u;
  v25[80] = 3;
  memcpy(v97, v25 + 8, 0x49uLL);
  v98 = v58;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  v102 = v111;
  v103 = v88;
  sub_1DCBBF670(&v98, v95);
  sub_1DCB431E0(v97);
  *(v25 + 1) = v58;
  v67 = v113;
  *(v25 + 1) = v112;
  *(v25 + 2) = v67;
  v68 = v115;
  *(v25 + 3) = v114;
  *(v25 + 4) = v68;
  v25[80] = 0;
  v95[3] = v61;
  v95[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v95);
  sub_1DCB6FF74(v25, boxed_opaque_existential_1Tm);
  v96 = 0;
  v92(v95);
  sub_1DCB42D14(v25, type metadata accessor for AceOutput);
  return sub_1DCB0E9D8(v95, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

void *RequestDeviceUnlockFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1DCB8D4CC(v1, *(v0 + 24));
  return v1;
}

void RequestDeviceUnlockFlow.exitValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  sub_1DCB79378(v5, v6);
}

uint64_t RequestDeviceUnlockFlow.__allocating_init(strategy:deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  RequestDeviceUnlockFlow.init(strategy:deviceState:metricsState:outputPublisher:)(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_1DCF15610(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  *(v4 + 32) = a1;
  sub_1DCB17CA0(a2, v4 + 40);
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  sub_1DCDD5204(v9, v10);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = (*(v12 + 16))(v11, v12);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *(v5 + 80) = v15;
  *(v5 + 88) = v16;
  sub_1DCB17CA0(a4, v5 + 96);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v17 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DCC7AE30();
  v18 = swift_allocError();
  *v19 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v5 + 16) = v18;
  *(v5 + 24) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

uint64_t RequestDeviceUnlockFlow.init(strategy:deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v10 = *(*v4 + 80);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + *(*v4 + 104), a1, v10);
  OUTLINED_FUNCTION_66();
  sub_1DCB17CA0(a2, v4 + *(v12 + 112));
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  sub_1DCDD5204(v13, v14);
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = (*(v16 + 16))(v15, v16);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v21 = (v5 + *(*v5 + 120));
  *v21 = v19;
  v21[1] = v20;
  sub_1DCB17CA0(a4, v5 + *(*v5 + 128));
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v22 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DCC7AE30();
  v23 = swift_allocError();
  *v24 = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v11 + 8))(a1, v10);
  *(v5 + 16) = v23;
  *(v5 + 24) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

uint64_t RequestDeviceUnlockFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF15A1C, 0, 0);
}

void sub_1DCF15B44(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  v10 = *(*v1 + 104);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = *(v3 + 80);
  v13 = *(v3 + 88);
  *(v12 + 3) = v13;
  *(v12 + 4) = v1;
  (*(v5 + 32))(&v12[v11], v9, v4);
  v14 = *(v13 + 16);
  sub_1DD0DCF8C();
}

void sub_1DCF15D68(uint64_t a1, char *a2, uint64_t a3)
{
  v93 = a3;
  v89 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v92 = *(v5 - 8);
  v90 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v91 = v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v87 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v86 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = v86 - v19;
  v21 = type metadata accessor for AceOutput();
  v22 = *(*(v21 - 1) + 64);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = (v86 - v28);
  v30 = type metadata accessor for ExecuteResponse(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB09910(a1, v101, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v102 != 1)
  {
    v88 = v5;
    sub_1DCAFF9E8(v101, v100);
    v99 = MEMORY[0x1E69E7CC0];
    sub_1DCB17CA0(v100, &v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9C88, &qword_1DD101B90);
    if (swift_dynamicCast())
    {
      sub_1DCB0E9D8(v94, &qword_1ECCA9C90, &qword_1DD101B98);
    }

    else
    {
      v95 = 0;
      memset(v94, 0, sizeof(v94));
      sub_1DCB0E9D8(v94, &qword_1ECCA9C90, &qword_1DD101B98);
      sub_1DCB17CA0(v100, &v96);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
        sub_1DCB0E9D8(v20, &qword_1ECCA1BD0, &qword_1DD0EB860);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v75 = sub_1DD0DD8FC();
        v76 = __swift_project_value_buffer(v75, qword_1EDE57E00);
        v77 = *(v75 - 8);
        (*(v77 + 16))(v15, v76, v75);
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v75);
        v78 = v87;
        sub_1DCB09910(v15, v87, &unk_1ECCA7470, &qword_1DD0E16E0);
        if (__swift_getEnumTagSinglePayload(v78, 1, v75) == 1)
        {
          sub_1DCB0E9D8(v87, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v79 = sub_1DD0DD8EC();
          v80 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *&v96 = v82;
            *v81 = 136315650;
            v83 = sub_1DD0DEC3C();
            v85 = sub_1DCB10E9C(v83, v84, &v96);

            *(v81 + 4) = v85;
            *(v81 + 12) = 2048;
            *(v81 + 14) = 107;
            *(v81 + 22) = 2080;
            *(v81 + 24) = sub_1DCB10E9C(0xD000000000000044, 0x80000001DD1232E0, &v96);
            _os_log_impl(&dword_1DCAFC000, v79, v80, "FatalError at %s:%lu - %s", v81, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A8390](v82, -1, -1);
            MEMORY[0x1E12A8390](v81, -1, -1);
          }

          (*(v77 + 8))(v87, v75);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000044, 0x80000001DD1232E0);
      }

      __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
      sub_1DCB6DF70(v20, v29);
      v42 = *v29;

      sub_1DCBB920C(v43);
      sub_1DCB42D14(v29, type metadata accessor for AceOutput);
    }

    sub_1DCF172AC();
    v44 = &a2[*(*a2 + 120)];
    v45 = *v44;
    v46 = v44[1];
    v47 = *(v89 + 88);
    v48 = *(v47 + 8);
    v49 = &a2[*(*a2 + 104)];
    v87 = *(v89 + 80);
    v89 = v47;
    v50 = v48();
    v52 = sub_1DCF78A20(v45, v46, v50, v51, &a2[*(*a2 + 112)]);

    v53 = v52;
    MEMORY[0x1E12A6920]();
    v54 = v93;
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v55 = v99;
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v56 = v21[7];
    v57 = type metadata accessor for NLContextUpdate();
    v86[2] = v53;
    __swift_storeEnumTagSinglePayload(&v26[v56], 1, 1, v57);
    v58 = v21[9];
    v59 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(&v26[v58], 1, 1, v59);
    v60 = v21[8];
    v61 = *MEMORY[0x1E69D0678];
    v62 = sub_1DD0DD15C();
    (*(*(v62 - 8) + 104))(&v26[v60], v61, v62);
    *(v26 + 15) = 0;
    *(v26 + 104) = 0u;
    *(v26 + 88) = 0u;
    sub_1DCB6C5E8(&v96, (v26 + 88));
    v26[v21[10]] = 1;
    *v26 = v55;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 9) = 0;
    v26[80] = 3;
    v63 = &a2[*(*a2 + 128)];
    v64 = *(v63 + 4);
    v86[1] = __swift_project_boxed_opaque_existential_1(v63, *(v63 + 3));
    *(&v97 + 1) = v21;
    v98 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v96);
    sub_1DCB6FF74(v26, boxed_opaque_existential_1Tm);
    v66 = v92;
    v67 = v91;
    v68 = v54;
    v69 = v88;
    (*(v92 + 16))(v91, v68, v88);
    sub_1DCB17CA0(v100, v94);
    v70 = (*(v66 + 80) + 40) & ~*(v66 + 80);
    v71 = (v90 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v73 = v89;
    *(v72 + 2) = v87;
    *(v72 + 3) = v73;
    *(v72 + 4) = a2;
    (*(v66 + 32))(&v72[v70], v67, v69);
    sub_1DCAFF9E8(v94, &v72[v71]);
    v74 = *(v64 + 8);
    sub_1DD0DCF8C();
  }

  v35 = *&v101[0];
  swift_beginAccess();
  v36 = *(a2 + 2);
  v37 = a2[24];
  *(a2 + 2) = v35;
  a2[24] = 1;
  v38 = v35;
  sub_1DCB79378(v36, v37);
  v39 = *(v30 + 36);
  v40 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v34[v39], 1, 1, v40);
  *v34 = 1;
  *(v34 + 1) = 0;
  v34[16] = 0;
  *(v34 + 4) = 0;
  *(v34 + 5) = 0;
  *(v34 + 3) = 0;
  v34[48] = -4;
  v41 = &v34[*(v30 + 40)];
  *v41 = 0u;
  *(v41 + 1) = 0u;
  sub_1DD0DE46C();
}

uint64_t sub_1DCF16840(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for ExecuteResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DD0E07C0;
    swift_getErrorValue();
    v15 = sub_1DD0DF18C();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1DCB34060();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1DD0DD7EC();

    swift_beginAccess();
    v18 = *(a3 + 16);
    v19 = *(a3 + 24);
    *(a3 + 16) = a1;
    *(a3 + 24) = 1;
    v20 = a1;
    sub_1DCB79378(v18, v19);
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    swift_beginAccess();
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    sub_1DCB79378(v21, v22);
    v23 = a5[3];
    __swift_project_boxed_opaque_existential_1(a5, v23);
    if (sub_1DCB651D0(v23))
    {
      if (qword_1EDE4F6A8 != -1)
      {
        swift_once();
      }

      type metadata accessor for SiriKitEvent(0);
      v32 = 32;
      v31 = 29;
      sub_1DCB17CA0(a5, v30);
      v24 = swift_allocObject();
      sub_1DCAFF9E8(v30, v24 + 16);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    }
  }

  v25 = *(v9 + 36);
  v26 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v13[v25], 1, 1, v26);
  *v13 = 1;
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 3) = 0;
  v13[48] = -4;
  v27 = &v13[*(v9 + 40)];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCF16C04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 8))(v6, v3, v4);
  swift_beginAccess();
  sub_1DCB6C5E8(v6, v2 + 168);
  return swift_endAccess();
}

uint64_t *RequestDeviceUnlockFlow.deinit()
{
  v1 = *v0;
  sub_1DCB79378(v0[2], *(v0 + 24));
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  v5 = *(v0 + *(v4 + 120) + 8);

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v6 + 128)));
  return v0;
}

uint64_t RequestDeviceUnlockFlow.__deallocating_deinit()
{
  RequestDeviceUnlockFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCF16DB4(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF16E50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return RequestDeviceUnlockFlow.execute()(a1);
}

void *sub_1DCF16EEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = RequestDeviceUnlockFlow.exitValue.getter();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t static SimpleRequestDeviceUnlockFlowHelper.makeUnlockFlow(deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SimpleRequestDeviceUnlockFlowHelper.SimpleRequestDeviceUnlockFlowStrategy();
  v6 = swift_allocObject();
  sub_1DCB17CA0(a1, v10);
  sub_1DCB17CA0(a2, v9);
  sub_1DCB17CA0(a3, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA9C00, &qword_1DD1019F0);
  swift_allocObject();
  return sub_1DCF15610(v6, v10, v9, v8);
}

uint64_t sub_1DCF17004(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF1706C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SimpleRequestDeviceUnlockFlowHelper(_BYTE *result, int a2, int a3)
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

void sub_1DCF1722C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1DCF15D68(a1, v4, v5);
}

unint64_t sub_1DCF172AC()
{
  result = qword_1ECCAB210;
  if (!qword_1ECCAB210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCAB210);
  }

  return result;
}

uint64_t sub_1DCF172F0(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 32);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DCF16840(a1, a2 & 1, v7, v2 + v6, v8);
}

uint64_t sub_1DCF17518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DCF17558()
{
  v0 = OUTLINED_FUNCTION_65_1();
  sub_1DCDE004C();
  return v0;
}

void sub_1DCF1758C()
{
  qword_1ECCA9C98 = 0;
  qword_1ECCA9CB8 = &type metadata for FeatureFlagDefinitions.Core;
  unk_1ECCA9CC0 = &off_1F585CB38;
  byte_1ECCA9CA0 = 0;
}

uint64_t sub_1DCF175B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DCF175DC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDB478();
}

uint64_t sub_1DCF17668()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DCF17688()
{
  sub_1DCF17668();
  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF176D0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF1777C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF175DC();
}

id sub_1DCF17814()
{
  v1 = *v0;
  v2 = (v0 + *(*v0 + 128));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  if (v5 == 3)
  {
    v10 = OUTLINED_FUNCTION_50_18();

    return v10;
  }

  else if (v5 == 4)
  {
    v6 = OUTLINED_FUNCTION_51_26();

    return sub_1DCBF9BE8(v6, v7, v8);
  }

  else
  {
    v11 = *(v1 + 80);
    v12 = *(v1 + 88);
    type metadata accessor for ServerHandledTCCFlow.TCCFlowError();
    OUTLINED_FUNCTION_32_27();
    v13 = OUTLINED_FUNCTION_64_16();
    v15 = OUTLINED_FUNCTION_42_26(v13, v14);

    return sub_1DCF211E0(v15, v16, v17);
  }
}

uint64_t sub_1DCF17918()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_78_0();
  sub_1DCF1795C();
  return v0;
}

uint64_t sub_1DCF1795C()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_13();
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_4_50(v7, v8, *(v6 + 80));
  (*(v9 + 32))(v1 + v10);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v11 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v12 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v13 + 120));
  OUTLINED_FUNCTION_66();
  v15 = v1 + *(v14 + 128);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 5;
  return v1;
}

uint64_t sub_1DCF17A48()
{
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "ServerHandledTCCFlow received input. Since rejections and cancellations are handled on the server we assume the user confirmed. Moving to completion.", v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  v6 = (v1 + *(*v1 + 128));
  v7 = *v6;
  v8 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  OUTLINED_FUNCTION_61_21(v6);
  sub_1DCF212A0(v9, v10, v11);
  return 1;
}

uint64_t sub_1DCF17B24()
{
  OUTLINED_FUNCTION_42();
  v1[44] = v2;
  v1[45] = v0;
  v3 = *v0;
  OUTLINED_FUNCTION_104();
  v1[46] = v4;
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v1[47] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[48] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_104();
  v1[49] = *(v8 + 80);
  OUTLINED_FUNCTION_0_1();
  v1[50] = v9;
  v11 = *(v10 + 64);
  v1[51] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCF17C1C()
{
  v2 = v0[45];
  v3 = *v2;
  v4 = *(*v2 + 128);
  v0[52] = v4;
  v5 = *(v2 + v4);
  v0[53] = v5;
  v0[54] = *(v2 + v4 + 8);
  switch(*(v2 + v4 + 16))
  {
    case 0:
      v6 = v2 + *(v3 + 112);
      OUTLINED_FUNCTION_70_13();
      v7 = *(v1 + 8);
      v8 = OUTLINED_FUNCTION_11_60();
      sub_1DCF211E0(v8, v9, v10);
      sub_1DD0DCF8C();
    case 2:
      v25 = *(v3 + 96);
      v26 = *(*(v0[46] + 88) + 16);
      v27 = OUTLINED_FUNCTION_20();
      sub_1DCF211E0(v27, v28, 2);
      sub_1DD0DCF8C();
    case 3:
      v11 = v5;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v12 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v14))
      {
        v15 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v15);
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
        OUTLINED_FUNCTION_37();
      }

      v21 = v0[44];
      v22 = OUTLINED_FUNCTION_20();
      v24 = 3;
      break;
    case 4:
      v29 = OUTLINED_FUNCTION_20();
      sub_1DCBF9BE8(v29, v30, v31);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      v13 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v33))
      {
        v34 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v34);
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_37();
      }

      v40 = v0[44];
      v22 = OUTLINED_FUNCTION_20();
      v24 = 4;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        v44 = v0[45];
      }

      v41 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  sub_1DCF212A0(v22, v23, v24);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF18678()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[56] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v3[57] = v12;
    *v12 = v13;
    v12[1] = sub_1DCF187CC;
    v14 = v3[45];

    return sub_1DCF19D70((v3 + 2));
  }
}

uint64_t sub_1DCF187CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 464) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF188C4()
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (OUTLINED_FUNCTION_46_21((v1 + 16)))
  {
    v5 = *(v1 + 424);
    v4 = *(v1 + 432);
    v7 = *(v1 + 376);
    v6 = *(v1 + 384);
    OUTLINED_FUNCTION_79_15(*(v1 + 360));
    v10 = v9 + *(v8 + 104);
    v12 = [v11 typeName];
    sub_1DD0DDFBC();

    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0;
    *(v1 + 56) = 0u;
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_72_18();

  static ExecuteResponse.ongoing(requireInput:)(1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DCF18B78()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[60];
  v6 = v4[59];
  v7 = v4[53];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB16D50(v2 + 56, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 256, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF18CC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_72_18();

  static ExecuteResponse.ongoing(requireInput:)(1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF18D4C()
{
  OUTLINED_FUNCTION_125();
  v1 = v0[56];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[53];
  v7 = v0[54];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_151();
    v10 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_92_12(4.8149e-34);
    v12 = v0[36];
    v11 = v0[37];
    v13 = v0[38];
    v14 = sub_1DD0DF18C();
    v22 = OUTLINED_FUNCTION_200(v14, v15, v16, v17, v18, v19, v20, v21, v10);

    *(v9 + 4) = v22;
    OUTLINED_FUNCTION_94_8(&dword_1DCAFC000, v23, v24, "Unable to publish output due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  sub_1DCF212A0(v8, v7, 2);

  OUTLINED_FUNCTION_47_20();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v25();
}

uint64_t sub_1DCF18ECC()
{
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[58];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[53];
  v7 = v0[54];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_151();
    v10 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_92_12(4.8149e-34);
    v12 = v0[36];
    v11 = v0[37];
    v13 = v0[38];
    v14 = sub_1DD0DF18C();
    v22 = OUTLINED_FUNCTION_200(v14, v15, v16, v17, v18, v19, v20, v21, v10);

    *(v9 + 4) = v22;
    OUTLINED_FUNCTION_94_8(&dword_1DCAFC000, v23, v24, "Unable to publish output due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  sub_1DCF212A0(v8, v7, 2);

  OUTLINED_FUNCTION_47_20();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v25();
}

uint64_t sub_1DCF19054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1DCF1F048(a1, a2, a3);
}

void sub_1DCF19110(void *a1, char a2)
{
  v3 = *v2;
  v4 = v2 + *(*v2 + 128);
  if (*(v4 + 16) != 5 || (!*(v4 + 8) ? (v5 = *v4 == 1) : (v5 = 0), !v5))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    v8 = a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v32);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "ServerHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    v18 = *v4;
    v19 = *(v4 + 8);
    *v4 = a1;
    *(v4 + 8) = 0;
    v20 = *(v4 + 16);
    *(v4 + 16) = 3;
    sub_1DCF212A0(v18, v19, v20);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "ServerHandledTCCFlow handed session off to companion device.", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    v25 = *(v3 + 80);
    v26 = *(v3 + 88);
    type metadata accessor for ServerHandledTCCFlow.TCCFlowError();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = -1;
    v30 = *v4;
    v29 = *(v4 + 8);
    *v4 = v27;
    *(v4 + 8) = 1;
    v31 = *(v4 + 16);
    *(v4 + 16) = 3;

    sub_1DCF212A0(v30, v29, v31);
  }
}

void sub_1DCF19638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v4);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v11, v10, a3);
  *(v13 + v12) = a1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  DynamicType = swift_getDynamicType();
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  swift_allocObject();
  sub_1DD01C898(sub_1DCF1EE90, 0, sub_1DCD799A4, 0, &unk_1DD1020D0, v13, DynamicType);
  sub_1DD0DCF8C();
}

void sub_1DCF19878(void *a1, char a2)
{
  v3 = v2 + *(*v2 + 128);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  if ((a2 & 1) == 0)
  {
    v20 = *v3;
    sub_1DD0DCF8C();
  }

  sub_1DCF211E0(*v3, *(v3 + 8), 1);
  sub_1DCB8D4CC(a1, 1);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  v8 = a1;
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6EC();
  sub_1DCB79378(a1, 1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1DD0DF18C();
    v15 = sub_1DCB10E9C(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "ServerHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A8390](v12, -1, -1);
    MEMORY[0x1E12A8390](v11, -1, -1);
  }

  v16 = *v3;
  v17 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = 0;
  v18 = *(v3 + 16);
  *(v3 + 16) = 3;
  sub_1DCF212A0(v16, v17, v18);
}

uint64_t sub_1DCF19D70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF19D90, 0, 0);
}

uint64_t sub_1DCF19D90()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[4] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = v0[3];

  v11 = (v10 + *(*v10 + 120));
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v13 = *(v12 + 8);
  OUTLINED_FUNCTION_24_0();
  v20 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_1DCF19F44;
  v18 = OUTLINED_FUNCTION_10_66(v0[2]);

  return v20(v18);
}

uint64_t sub_1DCF19F44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DCF1A05C()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_29_29(v4, *(v3 + 80));
  (*(v5 + 8))(v0 + v6);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_13_65(*(v7 + 104));
  OUTLINED_FUNCTION_13_65(*(v8 + 112));
  OUTLINED_FUNCTION_13_65(*(v9 + 120));
  sub_1DCF212A0(*(v0 + *(v10 + 128)), *(v0 + *(v10 + 128) + 8), *(v0 + *(v10 + 128) + 16));
  return v0;
}

uint64_t sub_1DCF1A13C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF1A1E8()
{
  v1 = *v0;
  sub_1DCF17A48();
  return 1;
}

uint64_t sub_1DCF1A23C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF17B24();
}

id sub_1DCF1A2FC()
{
  v1 = *v0;
  v2 = (v0 + *(*v0 + 136));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  if (v5 == 4)
  {
    v10 = OUTLINED_FUNCTION_50_18();

    return v10;
  }

  else if (v5 == 5)
  {
    v6 = OUTLINED_FUNCTION_51_26();

    return sub_1DCBF9BE8(v6, v7, v8);
  }

  else
  {
    v11 = *(v1 + 80);
    v12 = *(v1 + 88);
    type metadata accessor for ClientHandledTCCFlow.TCCFlowError();
    OUTLINED_FUNCTION_1_111();
    swift_getWitnessTable();
    v13 = OUTLINED_FUNCTION_64_16();
    v15 = OUTLINED_FUNCTION_42_26(v13, v14);

    return sub_1DCF20F60(v15, v16, v17);
  }
}

uint64_t sub_1DCF1A40C()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_65_1();
  sub_1DCF1A464();
  return v0;
}

uint64_t sub_1DCF1A464()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_4_50(v8, v9, *(v7 + 80));
  (*(v10 + 32))(v1 + v11);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v12 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v13 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v14 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v15 + 128));
  OUTLINED_FUNCTION_66();
  v17 = v1 + *(v16 + 136);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 6;
  return v1;
}

uint64_t sub_1DCF1A5CC()
{
  OUTLINED_FUNCTION_42();
  v1[46] = v2;
  v1[47] = v0;
  v3 = *v0;
  OUTLINED_FUNCTION_104();
  v1[48] = v4;
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v1[49] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[50] = OUTLINED_FUNCTION_38();
  v8 = sub_1DD0DB04C();
  v1[51] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[52] = v10;
  v12 = *(v11 + 64);
  v1[53] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_104();
  v1[54] = *(v13 + 80);
  OUTLINED_FUNCTION_0_1();
  v1[55] = v14;
  v16 = *(v15 + 64);
  v1[56] = OUTLINED_FUNCTION_38();
  v17 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DCF1A714()
{
  v71 = v0;
  v1 = v0[47];
  v2 = *v1;
  v3 = *(*v1 + 136);
  v0[57] = v3;
  v4 = *(v1 + v3);
  v0[58] = v4;
  v5 = *(v1 + v3 + 8);
  v0[59] = v5;
  switch(*(v1 + v3 + 16))
  {
    case 0:
      v69 = v0[54];
      v6 = *(v2 + 96);
      v7 = v1 + *(v2 + 120);
      v8 = *(*(v0[48] + 88) + 32);
      v9 = OUTLINED_FUNCTION_11_60();
      sub_1DCF20F60(v9, v10, v11);
      sub_1DD0DCF8C();
    case 2:
      sub_1DD0DCF8C();
    case 3:
      v13 = OUTLINED_FUNCTION_20();
      sub_1DCF20F60(v13, v14, 3);
      sub_1DD0DCF8C();
    case 4:
      v15 = v4;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v16 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
      v17 = sub_1DD0DD8EC();
      v18 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v18))
      {
        v19 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v19);
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        OUTLINED_FUNCTION_37();
      }

      v25 = v0[46];
      v26 = OUTLINED_FUNCTION_20();
      sub_1DCF21020(v26, v27, 4);

      break;
    case 5:
      v28 = OUTLINED_FUNCTION_19_41();
      sub_1DCF20F60(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_20();
      sub_1DCBF9BE8(v31, v32, v5 >> 8);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v33 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v33, qword_1EDE57E00);
      v34 = OUTLINED_FUNCTION_20();
      sub_1DCBF9BE8(v34, v35, v5 >> 8);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      v38 = OUTLINED_FUNCTION_19_41();
      sub_1DCF21020(v38, v39, v40);
      if (os_log_type_enabled(v36, v37))
      {
        v41 = OUTLINED_FUNCTION_151();
        v42 = OUTLINED_FUNCTION_83();
        v70 = v42;
        *v41 = 136315138;
        v43 = OUTLINED_FUNCTION_20();
        v45 = sub_1DCC32D8C(v43, v44);
        v47 = sub_1DCB10E9C(v45, v46, &v70);

        *(v41 + 4) = v47;
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37();
        v53 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v53, v54, v55);
        v56 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v56, v57, v58);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v59, v60, v61);

        v62 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v62, v63, v64);
      }

      v65 = v0[46];
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        v68 = v0[47];
      }

      v12 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_74_17();

  OUTLINED_FUNCTION_29();

  return v66();
}

uint64_t sub_1DCF1B8C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[63];
  v6 = v4[62];
  v7 = v4[58];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB16D50(v2 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 296, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF1BA14()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_79_15(*(v0 + 376));
  v3 = (v2 + *(v1 + 104));
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = swift_task_alloc();
  *(v0 + 512) = v5;
  sub_1DCF21AB8();
  *v5 = v0;
  v5[1] = sub_1DCF1BAF0;
  v6 = *(v0 + 480);

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCF1BAF0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 512);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v5[65] = v0;

  if (v0)
  {
    v12 = v5[58];
    v11 = v5[59];
    v13 = swift_task_alloc();
    v5[66] = v13;
    *v13 = v9;
    v13[1] = sub_1DCF1BD84;
    v14 = v0;
    v15 = v5[47];

    return sub_1DCF1D078(v12, v11, v14);
  }

  else
  {

    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1DCF1BC78()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 488);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = *(v0 + 472);
  v11 = *(v0 + 480);
  v12 = *(v0 + 368);
  v13 = *(v0 + 376) + *(v0 + 456);
  sub_1DCF21020(*(v0 + 464), v10, 3);

  v14 = *v13;
  v15 = *(v13 + 8);
  *v13 = 0;
  *(v13 + 8) = 0;
  v16 = *(v13 + 16);
  *(v13 + 16) = 5;
  sub_1DCF21020(v14, v15, v16);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_74_17();

  OUTLINED_FUNCTION_29();

  return v17();
}

uint64_t sub_1DCF1BD84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 528);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF1BE68()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 368);

  sub_1DCF21020(v3, v1, 3);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_74_17();

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCF1BF78(void *a1, char a2)
{
  v3 = *v2;
  v4 = v2 + *(*v2 + 136);
  if (*(v4 + 16) != 6 || (!*(v4 + 8) ? (v5 = *v4 == 1) : (v5 = 0), !v5))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    v8 = a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v32);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "ClientHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    v18 = *v4;
    v19 = *(v4 + 8);
    *v4 = a1;
    *(v4 + 8) = 0;
    v20 = *(v4 + 16);
    *(v4 + 16) = 4;
    sub_1DCF21020(v18, v19, v20);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "ClientHandledTCCFlow handed session off to companion device.", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    v25 = *(v3 + 80);
    v26 = *(v3 + 88);
    type metadata accessor for ClientHandledTCCFlow.TCCFlowError();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = -64;
    v30 = *v4;
    v29 = *(v4 + 8);
    *v4 = v27;
    *(v4 + 8) = 1;
    v31 = *(v4 + 16);
    *(v4 + 16) = 4;

    sub_1DCF21020(v30, v29, v31);
  }
}

void sub_1DCF1C508(void *a1, char a2)
{
  v3 = v2 + *(*v2 + 136);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  if ((a2 & 1) == 0)
  {
    v20 = *v3;
    sub_1DD0DCF8C();
  }

  sub_1DCF20F60(*v3, *(v3 + 8), 1);
  sub_1DCB8D4CC(a1, 1);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  v8 = a1;
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6EC();
  sub_1DCB79378(a1, 1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1DD0DF18C();
    v15 = sub_1DCB10E9C(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "ClientHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A8390](v12, -1, -1);
    MEMORY[0x1E12A8390](v11, -1, -1);
  }

  v16 = *v3;
  v17 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = 0;
  v18 = *(v3 + 16);
  *(v3 + 16) = 4;
  sub_1DCF21020(v16, v17, v18);
}

uint64_t sub_1DCF1CA00()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_78_0();
  sub_1DCF1F4DC();
  return v0;
}

void sub_1DCF1CA44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v4 = a2;
  v6 = *a2;
  v7 = *(*a2 + 88);
  v63 = *(v6 + 80);
  v64 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v65 = &v57 - v12;
  v13 = type metadata accessor for PromptResult();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v57 - v20;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  v23 = __swift_project_value_buffer(v22, qword_1EDE57E00);
  v24 = *(v14 + 16);
  v68 = a1;
  v66 = v24;
  v24(v21, a1, v13);
  v62 = v23;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v58 = AssociatedTypeWitness;
    v28 = v27;
    v29 = swift_slowAlloc();
    v59 = v4;
    v30 = v29;
    v69 = v29;
    *v28 = 136315138;
    v31 = PromptResult.description.getter(v13);
    v57 = v9;
    v33 = v32;
    (*(v14 + 8))(v21, v13);
    v34 = sub_1DCB10E9C(v31, v33, &v69);
    v9 = v57;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "ClientHandledTCCFlow got prompt response: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v35 = v30;
    v4 = v59;
    MEMORY[0x1E12A8390](v35, -1, -1);
    v36 = v28;
    AssociatedTypeWitness = v58;
    MEMORY[0x1E12A8390](v36, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v21, v13);
  }

  v37 = v67;
  v66(v67, v68, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = v37[8] | 0x100;
      v47 = v4 + *(*v4 + 136);
      v43 = *v47;
      v44 = *(v47 + 8);
      *v47 = *v37;
      *(v47 + 8) = v46;
      v48 = *(v47 + 16);
      *(v47 + 16) = 5;
      goto LABEL_15;
    case 2u:
      v42 = v4 + *(*v4 + 136);
      v43 = *v42;
      v44 = *(v42 + 8);
      v45 = xmmword_1DD101BB0;
      goto LABEL_14;
    case 3u:
      goto LABEL_11;
    default:
      (*(v9 + 32))(v65, v37, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 8))(&v70, AssociatedTypeWitness, AssociatedConformanceWitness);
      if (v70 == 2)
      {
        v39 = sub_1DD0DD8EC();
        v40 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1DCAFC000, v39, v40, "ClientHandledTCCFlow Got nil confirmation response. Treating as unanswered...", v41, 2u);
          MEMORY[0x1E12A8390](v41, -1, -1);
        }

        (*(v9 + 8))(v65, AssociatedTypeWitness);
LABEL_11:
        v42 = v4 + *(*v4 + 136);
        v43 = *v42;
        v44 = *(v42 + 8);
        v45 = xmmword_1DD101BA0;
      }

      else
      {
        if ((v70 & 1) == 0)
        {
          v49 = sub_1DD0DD8EC();
          v50 = sub_1DD0DE6DC();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_1DCAFC000, v49, v50, "ClientHandledTCCFlow Got accepted TCC prompt, will transition state to change TCC", v51, 2u);
            MEMORY[0x1E12A8390](v51, -1, -1);
          }

          (*(v9 + 8))(v65, AssociatedTypeWitness);
          v52 = (v4 + *(*v4 + 136));
          v53 = *v52;
          v54 = v52[1];
          v55 = v61;
          *v52 = v60;
          v52[1] = v55;
          v56 = *(v52 + 16);
          *(v52 + 16) = 3;
          sub_1DD0DCF8C();
        }

        (*(v9 + 8))(v65, AssociatedTypeWitness);
        v42 = v4 + *(*v4 + 136);
        v43 = *v42;
        v44 = *(v42 + 8);
        v45 = xmmword_1DD0E5100;
      }

LABEL_14:
      *v42 = v45;
      v48 = *(v42 + 16);
      *(v42 + 16) = 5;
LABEL_15:
      sub_1DCF21020(v43, v44, v48);
      return;
  }
}

uint64_t sub_1DCF1D078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[32] = *v3;
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v4[33] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF1D138, 0, 0);
}

uint64_t sub_1DCF1D138()
{
  OUTLINED_FUNCTION_125();
  v34 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[30];
  v2 = sub_1DD0DD8FC();
  v0[35] = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v33 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[24];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v33);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "ClientHandledTCCFlow got error changing tcc: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  v16 = v0[31];
  v15 = v0[32];
  OUTLINED_FUNCTION_66();
  v18 = *(v17 + 96);
  v20 = *(v19 + 88);
  v0[36] = v20;
  v21 = *(v20 + 72);
  v22 = *(v19 + 80);
  v0[37] = v22;
  OUTLINED_FUNCTION_24_0();
  v32 = (v23 + *v23);
  v25 = *(v24 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[38] = v26;
  *v26 = v27;
  v26[1] = sub_1DCF1D388;
  v29 = v0[29];
  v28 = v0[30];
  v30 = v0[28];

  return (v32)(v0 + 2, v28, v30, v29, v22, v20);
}

uint64_t sub_1DCF1D388()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[39] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v3[40] = v12;
    *v12 = v13;
    v12[1] = sub_1DCF1D4DC;
    v14 = v3[31];

    return sub_1DCF1DD0C((v3 + 2));
  }
}

uint64_t sub_1DCF1D4DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF1D5D4()
{
  v3 = *(v0 + 240);
  OUTLINED_FUNCTION_79_15(*(v0 + 248));
  v6 = v5 + *(v4 + 136);
  v8 = *v6;
  v7 = *(v6 + 8);
  *v6 = v9;
  *(v6 + 8) = 1;
  v10 = *(v6 + 16);
  *(v6 + 16) = 4;
  v11 = v9;
  sub_1DCF21020(v8, v7, v10);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  if (OUTLINED_FUNCTION_46_21((v0 + 16)))
  {
    v14 = *(v0 + 272);
    v33 = *(v0 + 264);
    v15 = *(v0 + 240);
    v16 = *(v0 + 232);
    v32 = *(v0 + 224);
    OUTLINED_FUNCTION_79_15(*(v0 + 248));
    v19 = (v18 + *(v17 + 112));
    v21 = [v20 typeName];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_84_12();

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_getErrorValue();
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);
    v24 = *(v0 + 168);
    v25 = sub_1DD0DF18C();
    v27 = v26;
    v28 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    type metadata accessor for SiriKitEvent(0);
    *v14 = 6;
    *(v14 + 8) = v1;
    *(v14 + 16) = v2;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 24) = v32;
    sub_1DCB28B08(v0 + 96, v14 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    sub_1DCB28B08(v0 + 56, v14 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v14 + 136) = 0u;
    *(v14 + 152) = 0u;
    *(v14 + 168) = v25;
    *(v14 + 176) = v27;
    *(v14 + 184) = 52;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v29 = *(v0 + 272);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF1D8CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB16D50(v2 + 56, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 96, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF1D9F4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 272);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF1DD0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF1DD2C, 0, 0);
}

uint64_t sub_1DCF1DD2C()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[4] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = v0[3];

  v11 = (v10 + *(*v10 + 128));
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v13 = *(v12 + 8);
  OUTLINED_FUNCTION_24_0();
  v20 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_1DCF1DEE0;
  v18 = OUTLINED_FUNCTION_10_66(v0[2]);

  return v20(v18);
}

uint64_t sub_1DCF1DEE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DCF1DFF8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}