uint64_t sub_2312D8E00()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v10 = *(v9 + 280);
  v11 = *v1;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  v7[36] = v0;

  if (!v0)
  {
    v7[37] = v3;
    v7[38] = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v7 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v7 + 2);
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2312D8F24()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[31];
  v1 = v0[32];

  OUTLINED_FUNCTION_63_7();
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[31];
  v6 = v0[29];

  OUTLINED_FUNCTION_130();
  v7 = OUTLINED_FUNCTION_27();

  return v8(v7);
}

uint64_t sub_2312D8FA4()
{
  v40 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 312);

  OUTLINED_FUNCTION_63_7();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v0 + 168);
  if (v3)
  {
    v38 = sub_2313686A0();
    v6 = v5;
    v7 = 0xE600000000000000;
    v8 = 0x6E656B6F7073;
  }

  else
  {
    v38 = sub_231368690();
    v6 = v9;
    v7 = 0xE700000000000000;
    v8 = 0x79616C70736964;
  }

  v10 = *(v0 + 288);
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  sub_2313690F0();
  sub_231369EE0();
  sub_231369EE0();

  v13 = v10;
  v14 = sub_2313698A0();
  v15 = sub_23136A3A0();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 288);
  if (v16)
  {
    v18 = v8;
    v19 = *(v0 + 264);
    v34 = *(v0 + 272);
    v35 = *(v0 + 224);
    v36 = *(v0 + 216);
    v37 = *(v0 + 232);
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v20 = 136315906;
    v21 = sub_2311CFD58(v18, v7, &v39);

    *(v20 + 4) = v21;
    *(v20 + 12) = 2080;
    v22 = v38;
    *(v20 + 14) = sub_2311CFD58(v38, v6, &v39);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_2311CFD58(v19, v34, &v39);
    *(v20 + 32) = 2080;
    *(v0 + 160) = v17;
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v24 = sub_23136A010();
    v26 = sub_2311CFD58(v24, v25, &v39);

    *(v20 + 34) = v26;
    _os_log_impl(&dword_2311CB000, v14, v15, "Failed to decorate %s exampleUtterance=%s with using CATTemplate: %s. Error: %s", v20, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_88_0();

    (*(v35 + 8))(v37, v36);
  }

  else
  {
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);

    (*(v28 + 8))(v27, v29);
    v22 = v38;
  }

  v30 = *(v0 + 248);
  v31 = *(v0 + 232);

  OUTLINED_FUNCTION_130();

  return v32(v22, v6);
}

uint64_t sub_2312D92AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_231367560();
  v34 = *(v36 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for IntentDetails();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_2313682F0();
  sub_231210C60(0x6544746E65746E69, 0xED0000736C696174, v22);

  if (!v39)
  {
    sub_2311D1F18(v38, &qword_27DD443C0, &unk_23136E000);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v23 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v23 ^ 1u, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_2311D1F18(v16, &qword_27DD436F0, &unk_23136D510);
LABEL_8:
    v32 = sub_2313699E0();
    v30 = v37;
    v31 = 1;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v32);
  }

  sub_2312DC61C(v16, v20, type metadata accessor for IntentDetails);
  (*(v4 + 16))(v7, v20, v3);
  sub_2312DC5C4(v20, type metadata accessor for IntentDetails);
  if ((*(v4 + 88))(v7, v3) != *MEMORY[0x277D60920])
  {
    (*(v4 + 8))(v7, v3);
    goto LABEL_8;
  }

  (*(v4 + 96))(v7, v3);
  v24 = v34;
  v25 = *(v34 + 32);
  v26 = v36;
  v25(v12, v7, v36);
  v27 = v35;
  v25(v35, v12, v26);
  if ((*(v24 + 88))(v27, v26) != *MEMORY[0x277D60950])
  {
    (*(v24 + 8))(v27, v26);
    goto LABEL_8;
  }

  (*(v24 + 96))(v27, v26);
  v28 = sub_2313699E0();
  v29 = v37;
  (*(*(v28 - 8) + 32))(v37, v27, v28);
  v30 = v29;
  v31 = 0;
  v32 = v28;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v32);
}

uint64_t sub_2312D9770(uint64_t a1, unint64_t a2)
{
  sub_231369EE0();
  sub_2312EECB4(1);
  sub_2312DC73C();
  v4 = sub_23136A4F0();

  sub_231369EE0();
  v5 = sub_2312DAF34(1uLL, a1, a2);
  v6 = MEMORY[0x23192A6F0](v5);
  v8 = v7;

  sub_231369EE0();
  MEMORY[0x23192A730](v6, v8);

  return v4;
}

uint64_t sub_2312D9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2313698C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311D1D6C(a3, v28);
  sub_2312DC674(v28, &v26, &qword_27DD443C0, &unk_23136E000);
  if (*(&v27 + 1))
  {
    sub_231368540();
    if (swift_dynamicCast())
    {

      sub_231369120();
      v13 = sub_2313698A0();
      v14 = sub_23136A3A0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24[0] = v22;
        *v15 = 136315138;
        swift_beginAccess();
        v23 = a1;
        sub_2312DC674(v28, &v26, &qword_27DD443C0, &unk_23136E000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
        v16 = sub_23136A010();
        v18 = sub_2311CFD58(v16, v17, v24);
        a1 = v23;

        *(v15 + 4) = v18;
        _os_log_impl(&dword_2311CB000, v13, v14, "value %s is being nilled out", v15, 0xCu);
        v19 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x23192B930](v19, -1, -1);
        MEMORY[0x23192B930](v15, -1, -1);
      }

      (*(v9 + 8))(v12, v8);
      v26 = 0u;
      v27 = 0u;
      swift_beginAccess();
      sub_2312DC6CC(&v26, v28);
    }
  }

  else
  {
    sub_2311D1F18(&v26, &qword_27DD443C0, &unk_23136E000);
  }

  swift_beginAccess();
  sub_2312DC674(v28, v24, &qword_27DD443C0, &unk_23136E000);
  if (v25)
  {
    sub_2312250F8(v24, &v26);
    *a4 = a1;
    *(a4 + 8) = a2;
    sub_2312250F8(&v26, (a4 + 16));
    sub_231369EE0();
  }

  else
  {
    sub_2311D1F18(v24, &qword_27DD443C0, &unk_23136E000);
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return sub_2311D1F18(v28, &qword_27DD443C0, &unk_23136E000);
}

uint64_t *ConfigurablePresentationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return v0;
}

uint64_t ConfigurablePresentationService.__deallocating_deinit()
{
  ConfigurablePresentationService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312D9C30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D05C8;

  return ConfigurablePresentationService.getView(rankedCandidate:environment:)();
}

char *sub_2312D9CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;
  *(v5 + 5) = a4;
  v7 = OBJC_IVAR____TtC15SiriSuggestions25ExampleUtteranceDecorator_platformRootLocation;
  v8 = sub_231366690();
  OUTLINED_FUNCTION_7_0(v8);
  (*(v9 + 32))(&v5[v7], a5);
  return v5;
}

uint64_t sub_2312D9D50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC15SiriSuggestions25ExampleUtteranceDecorator_platformRootLocation;
  v4 = sub_231366690();
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_2312D9DB8()
{
  sub_2312D9D50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2312D9E10()
{
  v1 = (v0 + *(type metadata accessor for DefaultDialogIdProvider(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_231369EE0();
  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2312D9E4C()
{
  v1 = (v0 + *(type metadata accessor for DefaultDialogIdProvider(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_231369EE0();
  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2312D9E88()
{
  v0 = sub_231366690();
  OUTLINED_FUNCTION_11(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_64();

  return v4(v3);
}

uint64_t sub_2312D9F00(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];
  sub_231369EE0();
  return v3;
}

uint64_t sub_2312D9F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F7073 && a2 == 0xE600000000000000;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL;
          if (v9 || (sub_23136A900() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79726576696C6564 && a2 == 0xEF656C6369686556;
            if (v10 || (sub_23136A900() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F666E496B6E6172 && a2 == 0xE800000000000000;
              if (v11 || (sub_23136A900() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
                if (v12 || (sub_23136A900() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_23136A900();

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

uint64_t sub_2312DA208(char a1)
{
  result = 0x6E656B6F7073;
  switch(a1)
  {
    case 1:
      result = 0x79616C70736964;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0x6974736567677573;
      break;
    case 5:
      result = 0x79726576696C6564;
      break;
    case 6:
      result = 0x6F666E496B6E6172;
      break;
    case 7:
      result = 0x6E6F69746361;
      break;
    case 8:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2312DA304(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44768, &qword_231375428);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v40[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312DC4B0();
  sub_23136AA40();
  v14 = *v3;
  v15 = v3[1];
  v40[15] = 0;
  OUTLINED_FUNCTION_43_12();
  sub_23136A840();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v40[14] = 1;
    OUTLINED_FUNCTION_43_12();
    sub_23136A840();
    v18 = v3[4];
    v19 = v3[5];
    v40[13] = 2;
    OUTLINED_FUNCTION_43_12();
    sub_23136A830();
    v20 = type metadata accessor for ViewDetails(0);
    v21 = v20[7];
    v40[12] = 3;
    sub_231369090();
    OUTLINED_FUNCTION_53_9();
    sub_2312DC504(v22, v23);
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6();
    v24 = (v3 + v20[8]);
    v25 = *v24;
    v26 = v24[1];
    v40[11] = 4;
    OUTLINED_FUNCTION_43_12();
    sub_23136A840();
    v27 = v20[9];
    v40[10] = 5;
    sub_231367D80();
    OUTLINED_FUNCTION_52_9();
    sub_2312DC504(v28, v29);
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6();
    v30 = v20[10];
    v40[9] = 6;
    sub_231367300();
    OUTLINED_FUNCTION_51_9();
    sub_2312DC504(v31, v32);
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6();
    v33 = v20[11];
    v40[8] = 7;
    sub_231369050();
    OUTLINED_FUNCTION_50_7();
    sub_2312DC504(v34, v35);
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6();
    v36 = (v3 + v20[12]);
    v37 = *v36;
    v38 = v36[1];
    v40[7] = 8;
    OUTLINED_FUNCTION_43_12();
    sub_23136A840();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2312DA608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_231369050();
  v3 = OUTLINED_FUNCTION_0_0(v66);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v63 = v7 - v6;
  v67 = sub_231367300();
  v8 = OUTLINED_FUNCTION_0_0(v67);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v64 = v12 - v11;
  v68 = sub_231367D80();
  v13 = OUTLINED_FUNCTION_0_0(v68);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = sub_231369090();
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44738, &qword_231375420);
  v23 = OUTLINED_FUNCTION_0_0(v65);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v70 = type metadata accessor for ViewDetails(0);
  v26 = OUTLINED_FUNCTION_11(v70);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v31 = (v30 - v29);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312DC4B0();
  sub_23136AA20();
  if (v69)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  *v31 = sub_23136A7D0();
  v31[1] = v33;
  v31[2] = sub_23136A7D0();
  v31[3] = v34;
  v31[4] = sub_23136A7C0();
  v31[5] = v35;
  OUTLINED_FUNCTION_53_9();
  sub_2312DC504(v36, v37);
  sub_23136A820();
  v38 = OUTLINED_FUNCTION_125(v70[7]);
  v39(v38);
  v40 = sub_23136A7D0();
  v41 = (v31 + v70[8]);
  *v41 = v40;
  v41[1] = v42;
  OUTLINED_FUNCTION_52_9();
  sub_2312DC504(v43, v44);
  OUTLINED_FUNCTION_141();
  v45 = OUTLINED_FUNCTION_125(v70[9]);
  v46(v45, v18, v68);
  OUTLINED_FUNCTION_51_9();
  sub_2312DC504(v47, v48);
  OUTLINED_FUNCTION_141();
  v49 = OUTLINED_FUNCTION_125(v70[10]);
  v50(v49, v64, v67);
  OUTLINED_FUNCTION_50_7();
  sub_2312DC504(v51, v52);
  sub_23136A820();
  v53 = OUTLINED_FUNCTION_125(v70[11]);
  v54(v53, v63, v66);
  v55 = sub_23136A7D0();
  v57 = v56;
  v58 = OUTLINED_FUNCTION_21_19();
  v59(v58);
  v60 = (v31 + v70[12]);
  *v60 = v55;
  v60[1] = v57;
  sub_2312DC54C(v31, a2, type metadata accessor for ViewDetails);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2312DC5C4(v31, type metadata accessor for ViewDetails);
}

uint64_t sub_2312DAE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312D9F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2312DAE64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2312DA200();
  *a1 = result;
  return result;
}

uint64_t sub_2312DAE8C(uint64_t a1)
{
  v2 = sub_2312DC4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2312DAEC8(uint64_t a1)
{
  v2 = sub_2312DC4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2312DAF34(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_23136A070();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_23136A0F0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312DB008(uint64_t a1, char a2, uint64_t a3)
{
  v49 = a3;
  v36 = *(a1 + 16);
  if (!v36)
  {
  }

  v35 = v3;
  v6 = 0;
  v7 = a1 + 32;
  while (v6 < *(a1 + 16))
  {
    sub_2312DC674(v7, &v43, &qword_27DD43FE8, &qword_231370E98);
    v9 = v43;
    v8 = v44;
    sub_2312250F8(&v45, &v40);
    v10 = *v49;
    v18 = sub_231215F6C(v9, v8);
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_20;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a2)
      {
        if (v11)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        sub_23136A710();
        if (v22)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v23 = v49;
      sub_2312B4F48(v21, a2 & 1, v12, v13, v14, v15, v16, v17, v35, v36, v37, *(&v37 + 1), v38, v39, v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
      v24 = *v23;
      v25 = sub_231215F6C(v9, v8);
      if ((v22 & 1) != (v26 & 1))
      {
        goto LABEL_22;
      }

      v18 = v25;
      if (v22)
      {
LABEL_11:
        v27 = *v49;
        sub_2311D1D6C(*(*v49 + 56) + 32 * v18, &v37);
        __swift_destroy_boxed_opaque_existential_1Tm(&v40);

        v28 = (*(v27 + 56) + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        sub_2312250F8(&v37, v28);
        goto LABEL_15;
      }
    }

    v29 = *v49;
    v29[(v18 >> 6) + 8] |= 1 << v18;
    v30 = (v29[6] + 16 * v18);
    *v30 = v9;
    v30[1] = v8;
    sub_2312250F8(&v40, (v29[7] + 32 * v18));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_21;
    }

    v29[2] = v33;
LABEL_15:
    ++v6;
    v7 += 48;
    a2 = 1;
    if (v36 == v6)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2312DB234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a2;
  v7[19] = a3;
  v13 = sub_2313698C0();
  v7[20] = v13;
  v14 = *(v13 - 8);
  v7[21] = v14;
  v15 = *(v14 + 64) + 15;
  v7[22] = swift_task_alloc();
  v16 = sub_231368890();
  v17 = MEMORY[0x277D61038];
  v7[5] = v16;
  v7[6] = v17;
  v7[2] = a1;
  v18 = *(MEMORY[0x277D60AB0] + 4);

  v19 = swift_task_alloc();
  v7[23] = v19;
  *v19 = v7;
  v19[1] = sub_2312DB39C;

  return MEMORY[0x2821C6A90](a6, a4, a5, a7, v16, v17);
}

uint64_t sub_2312DB39C()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v10 = *(v9 + 184);
  v11 = *v1;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  v7[24] = v0;

  if (!v0)
  {
    v7[25] = v3;
    v7[26] = v5;
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2312DB4B0()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_130();
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t sub_2312DB524()
{
  v34 = v0;
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[19];
  sub_231369120();
  sub_2311CF388((v0 + 2), (v0 + 7));
  sub_231369EE0();
  v4 = v1;
  v5 = sub_2313698A0();
  v6 = sub_23136A390();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v30 = v0[21];
    v8 = v0[19];
    v31 = v0[20];
    v32 = v0[22];
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v10 = 136315650;
    v11 = sub_2311CFD58(v9, v8, &v33);
    v0[17] = v7;
    *(v10 + 4) = v11;
    *(v10 + 12) = 2080;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v13 = sub_23136A010();
    v15 = sub_2311CFD58(v13, v14, &v33);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    sub_2311CF388((v0 + 7), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44780, &qword_231375450);
    v16 = sub_23136A010();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v19 = sub_2311CFD58(v16, v18, &v33);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_2311CB000, v5, v6, "[warning] Unable to generate dialog for suggestion: %s due to error: %s using dialogCallback: %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29();

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v20 = v0[24];
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[20];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v24 = *(v22 + 8);
    v25 = OUTLINED_FUNCTION_26_1();
    v26(v25);
  }

  v27 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_130();

  return v28(0, 0);
}

uint64_t sub_2312DB7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a2;
  v7[19] = a3;
  v13 = sub_2313698C0();
  v7[20] = v13;
  v14 = *(v13 - 8);
  v7[21] = v14;
  v15 = *(v14 + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[5] = v21;
  v7[6] = v22;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7 + 2);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, a1);
  v17 = *(MEMORY[0x277D60AB0] + 4);
  v18 = swift_task_alloc();
  v7[23] = v18;
  *v18 = v7;
  v18[1] = sub_2312DB94C;

  return MEMORY[0x2821C6A90](a6, a4, a5, a7);
}

uint64_t sub_2312DB94C()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v10 = *(v9 + 184);
  v11 = *v1;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  v7[24] = v0;

  if (!v0)
  {
    v7[25] = v3;
    v7[26] = v5;
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2312DBA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v15);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  (*(v19 + 16))(v22, a1, a5);
  (*(v13 + 16))(v17, a2, a6);
  v24 = sub_2312DBC40(v22, v17, a3, v23, a5, a6, v26, v27);
  (*(v13 + 8))(a2, a6);
  (*(v19 + 8))(a1, a5);
  return v24;
}

uint64_t sub_2312DBC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a3;
  v15 = sub_231366690();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a5;
  v34[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v34);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v33[3] = a6;
  v33[4] = a8;
  v21 = __swift_allocate_boxed_opaque_existential_1Tm(v33);
  (*(*(a6 - 8) + 32))(v21, a2, a6);
  sub_2311CF388(v34, a4 + 16);
  sub_2311CF388(v33, a4 + 56);
  v22 = v32;
  (*(v16 + 16))(v19, v32, v15);
  v23 = type metadata accessor for ExampleUtteranceDecorator(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  sub_2312D9CE4(0xD00000000000001CLL, 0x80000002313802B0, 0x676F6C616964, 0xE600000000000000, v19);
  *(a4 + 104) = v26;
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v27 = *(v23 + 48);
  v28 = *(v23 + 52);
  v29 = swift_allocObject();
  sub_2312D9CE4(0xD000000000000022, 0x80000002313802D0, 0xD00000000000001ALL, 0x8000000231380300, v22);
  *(a4 + 96) = v29;
  return a4;
}

uint64_t sub_2312DBEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of PresentationService.getView(rankedCandidate:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v5 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_2311D05C8;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_2312DC128()
{
  result = sub_231366690();
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

void sub_2312DC1EC()
{
  type metadata accessor for ViewDetails(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RankedCandidateSuggestion();
    if (v1 <= 0x3F)
    {
      sub_2312D32E0(319, &qword_280F7C9E0);
      if (v2 <= 0x3F)
      {
        sub_2312D32E0(319, &qword_280F7C958);
        if (v3 <= 0x3F)
        {
          sub_2312DC2F0();
          if (v4 <= 0x3F)
          {
            sub_2312DC354();
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

void sub_2312DC2F0()
{
  if (!qword_280F7C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44730, &qword_2313753B8);
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C9D8);
    }
  }
}

void sub_2312DC354()
{
  if (!qword_280F7C890)
  {
    sub_2313699E0();
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C890);
    }
  }
}

void sub_2312DC3D4()
{
  sub_2312AFEC4();
  if (v0 <= 0x3F)
  {
    sub_231369090();
    if (v1 <= 0x3F)
    {
      sub_231367D80();
      if (v2 <= 0x3F)
      {
        sub_231367300();
        if (v3 <= 0x3F)
        {
          sub_231369050();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2312DC4B0()
{
  result = qword_27DD44740;
  if (!qword_27DD44740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44740);
  }

  return result;
}

uint64_t sub_2312DC504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2312DC54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_64();
  v8(v7);
  return a2;
}

uint64_t sub_2312DC5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2312DC61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7_0(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_64();
  v8(v7);
  return a2;
}

uint64_t sub_2312DC674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return a2;
}

uint64_t sub_2312DC6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2312DC73C()
{
  result = qword_280F7C878;
  if (!qword_280F7C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C878);
  }

  return result;
}

uint64_t sub_2312DC7B8()
{
  result = sub_231366690();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewDetails.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewDetails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2312DC9A8()
{
  result = qword_27DD44790;
  if (!qword_27DD44790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44790);
  }

  return result;
}

unint64_t sub_2312DCAD8()
{
  result = qword_27DD44798;
  if (!qword_27DD44798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44798);
  }

  return result;
}

unint64_t sub_2312DCB30()
{
  result = qword_27DD447A0;
  if (!qword_27DD447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD447A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *v30 = a20;
  v30[1] = a19;
  v30[2] = a18;
  v30[3] = a17;
  v30[4] = a26;
  v30[5] = a27;
  v34 = (v30 + *(v32 + 32));
  *v34 = a25;
  v34[1] = v31;
  v35 = (v30 + *(v32 + 48));
  *v35 = v28;
  v35[1] = v27;

  return sub_2311CF388(v29 + 56, v29 + 456);
}

uint64_t OUTLINED_FUNCTION_17_14(uint64_t a1)
{
  *(v1 + 1928) = a1;
  v3 = *(v2 - 136);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(v2 - 128);

  return sub_2313682B0();
}

void OUTLINED_FUNCTION_24_17()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[127];
  v4 = v0[126];
}

uint64_t OUTLINED_FUNCTION_55_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(a15 + 28);
  v18 = *(v15 + 44);

  return sub_231369050();
}

void OUTLINED_FUNCTION_59_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_63_7()
{

  return sub_2312DC5C4(v0, type metadata accessor for DefaultDialogIdProvider);
}

uint64_t OUTLINED_FUNCTION_68_5(uint64_t a1, int a2)
{
  *(v3 + 1952) = a2;
  *(v3 + 1464) = *(v4 + 104);
  *(v3 + 1472) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return v2;
}

void OUTLINED_FUNCTION_71_5()
{
  v3 = v1[164];
  v4 = v1[160];
  v5 = v1[147];
  v6 = v1[144];
  v7 = v1[143];
}

void OUTLINED_FUNCTION_74_5()
{
  v2 = v0[190];
  v5 = v0[189];
  v3 = v0[186];
  *(v1 - 136) = v0[185];
  v6 = v0[178];
  v4 = v0[171];
}

uint64_t OUTLINED_FUNCTION_77_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x79726576696C6564;
  a1[2].n128_u64[1] = 0xEF656C6369686556;

  return sub_231367D40();
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  v2 = v0[170];
  v7 = v0[160];
  v8 = v0[164];
  v3 = v0[144];
  v4 = v0[143];
  v6 = v0[147];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  *(v1 + 1480) = *(v2 + 8);
  *(v1 + 1488) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void OUTLINED_FUNCTION_81_3()
{
  v2 = v0[190];
  v3 = v0[189];
  v4 = v0[186];
  *(v1 - 136) = v0[185];
  *(v1 - 128) = v4;
  v6 = v0[178];
  v5 = v0[171];
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return sub_2311D1F18(v2 + 616, v1, v0);
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_2311D1F18(v2 + 536, v1, v0);
}

void OUTLINED_FUNCTION_88_0()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1448) = *(a1 + 104);
  *(v2 + 1456) = (a1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_93_0()
{
  v3 = *(v0 + 1144);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_94_0(float a1)
{
  *v3 = a1;

  return sub_2311CFD58(v2, v1, (v4 - 120));
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  v2 = v0[144];
  v3 = v0[143];
  v5 = v0[149];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  v2 = v0[180];
  v3 = v0[179];
  v4 = v0[160];
  v5 = *(v0[161] + 96);
  return v1;
}

uint64_t OUTLINED_FUNCTION_100(uint64_t a1)
{
  *(v2 + 1880) = a1;
  v4 = *(*(v1 + 8) + 8);

  return sub_23136A260();
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_110()
{
  v3 = v1[164];
  v4 = v1[160];
  v5 = v1[148];
  v6 = v1[144];
  v7 = v1[143];
}

void OUTLINED_FUNCTION_115()
{
  v2 = v0[189];
  *(v1 - 144) = v0[186];
  v3 = v0[185];
  v4 = v0[178];
}

void OUTLINED_FUNCTION_116()
{
  v3 = v1[164];
  v4 = v1[160];
  v5 = v1[149];
  v6 = v1[144];
  v7 = v1[143];
}

uint64_t OUTLINED_FUNCTION_117()
{
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1176);

  return sub_2313690F0();
}

uint64_t OUTLINED_FUNCTION_118()
{
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
}

uint64_t OUTLINED_FUNCTION_119()
{
  v2 = *(v0 + 40);

  return sub_231367300();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_2313676F0();
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2312DC674(v4 + 536, v4 + 616, a3, a4);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_231368140();
}

void OUTLINED_FUNCTION_126()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[161];
  v4 = v0[160];
}

uint64_t OUTLINED_FUNCTION_136()
{
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[160];
  return v1;
}

void OUTLINED_FUNCTION_138(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_139(float a1)
{
  *v3 = a1;

  return sub_2311CFD58(v2, v1, (v4 - 80));
}

void OUTLINED_FUNCTION_140(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_141()
{

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_142()
{
  v2 = *(v0 + 1168);

  return sub_2313690F0();
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2)
{
  *(v2 + 1864) = a1;
  *(v2 + 1872) = a2;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2)
{
  *(v2 + 1840) = a1;
  *(v2 + 1848) = a2;

  return swift_getObjectType();
}

BOOL OUTLINED_FUNCTION_146()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_147()
{
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_231369EE0();
}

uint64_t ConfigLoader.__allocating_init(dataFileLocation:serializer:)()
{
  OUTLINED_FUNCTION_38_1();
  v1 = sub_231366690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = type metadata accessor for FileBasedConfigBackingStore();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v5, v1);
  v11[4] = v6;
  v11[5] = sub_2312DE084(&qword_280F85B48, 255, type metadata accessor for FileBasedConfigBackingStore);
  v11[1] = v9;
  (*(v2 + 8))(v0, v1);
  return ConfigLoader.__allocating_init(backingStore:serializer:)();
}

uint64_t ConfigLoader.loadConfig()()
{
  v2 = *v0;
  sub_2311CF324((v0 + 7), v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    (*(v4 + 8))(*(v2 + 80), v7, v8, *(v2 + 80), *(v2 + 88), v3, v4);
    sub_231225224(v9, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t FileBasedConfigBackingStore.__allocating_init(dataFileLocation:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  v7 = sub_231366690();
  OUTLINED_FUNCTION_11(v7);
  (*(v8 + 32))(v5 + v6, a1);
  return v5;
}

uint64_t type metadata accessor for FileBasedConfigBackingStore()
{
  result = qword_280F85B38;
  if (!qword_280F85B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfigLoader.__allocating_init(backingStore:serializer:)()
{
  OUTLINED_FUNCTION_38_1();
  v2 = swift_allocObject();
  ConfigLoader.init(backingStore:serializer:)(v1, v0);
  return v2;
}

uint64_t ConfigLoader.init(backingStore:serializer:)(__int128 *a1, __int128 *a2)
{
  sub_2311D38A8(a1, v2 + 16);
  sub_2311D38A8(a2, v2 + 56);
  return v2;
}

uint64_t ConfigLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t ConfigLoader.__deallocating_deinit()
{
  ConfigLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312DD960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = a6(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  a7();
  a8(a1, a2, a3, a4, a5);
}

uint64_t sub_2312DDA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  a5();
  v14 = a6(a1, a2, a3);

  return v14;
}

uint64_t FileBasedConfigBackingStore.dataFileLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  v4 = sub_231366690();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t FileBasedConfigBackingStore.init(dataFileLocation:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  v4 = sub_231366690();
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t FileBasedConfigBackingStore.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  v2 = sub_231366690();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t FileBasedConfigBackingStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  v2 = sub_231366690();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t InMemoryConfigBackingStore.__allocating_init(data:)()
{
  OUTLINED_FUNCTION_38_1();
  v0 = swift_allocObject();
  InMemoryConfigBackingStore.init(data:)();
  return v0;
}

void *InMemoryConfigBackingStore.init(data:)()
{
  OUTLINED_FUNCTION_38_1();
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[3] = v0;
  v1[4] = v3;
  v1[2] = v2;
  return v1;
}

uint64_t InMemoryConfigBackingStore.loadRawData()()
{
  v1 = v0[4];
  [v1 lock];
  v2 = v0[2];
  sub_23122527C(v2, v0[3]);
  [v1 unlock];
  return v2;
}

id InMemoryConfigBackingStore.saveRawData(data:)(uint64_t a1, unint64_t a2)
{
  v5 = v2[4];
  [v5 lock];
  v6 = v2[2];
  v7 = v2[3];
  v2[2] = a1;
  v2[3] = a2;
  sub_23122527C(a1, a2);
  sub_231225224(v6, v7);
  return [v5 unlock];
}

uint64_t InMemoryConfigBackingStore.deinit()
{
  sub_231225224(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t InMemoryConfigBackingStore.__deallocating_deinit()
{
  InMemoryConfigBackingStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312DDFAC(uint64_t a1)
{
  result = sub_2312DE084(qword_280F85B50, 255, type metadata accessor for FileBasedConfigBackingStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312DE02C(uint64_t a1, uint64_t a2)
{
  result = sub_2312DE084(qword_280F7FD00, a2, type metadata accessor for InMemoryConfigBackingStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312DE084(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static CustomContinuersBridgeFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_231367AB0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312DE3DC, 0, 0);
}

uint64_t sub_2312DE3DC()
{
  v1 = v0[7];
  v2 = sub_231367780();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_231367790();
  v0[5] = v2;
  v0[6] = sub_2312DF468(&qword_280F7CAA8, 255, MEMORY[0x277D60A20]);
  v0[2] = v5;
  v10 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2312DE55C;
  v8 = v0[8];

  return v10(v0 + 2);
}

uint64_t sub_2312DE55C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2312DE664, 0, 0);
}

uint64_t sub_2312DE664()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = type metadata accessor for IntentDetailsDialogProvider();
  v7 = swift_allocObject();
  v2[3] = v6;
  v2[4] = sub_2312DF468(qword_280F7F570, 255, type metadata accessor for IntentDetailsDialogProvider);
  *v2 = v7;
  (*(v3 + 104))(v2, *MEMORY[0x277D60A88], v4);
  *(swift_task_alloc() + 16) = v5;
  sub_231368EC0();

  (*(v3 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23136B670;
  sub_231368ED0();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2312DE820(uint64_t a1)
{
  v31 = sub_2313673A0();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 40);
  v30 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v7 = sub_231367D80();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23136B670;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x277D60B78], v7);
  v43 = v30;
  v44 = v6;
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_231368B30();

  v12 = v44;
  v30 = v43;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v13 = type metadata accessor for IntentDetailsActionKeyMapper();
  inited = swift_initStaticObject();
  *&v37 = v13;
  *(&v37 + 1) = sub_2312DF468(&unk_280F7EF30, 255, type metadata accessor for IntentDetailsActionKeyMapper);
  v36[0] = inited;
  v40 = v30;
  v41 = v12;
  __swift_allocate_boxed_opaque_existential_1(v39);
  sub_231368B20();
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v15 = v41;
  v30 = v40;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v16 = type metadata accessor for CustomContinuersBridgeAssetProvider();
  v17 = swift_allocObject();
  *&v34 = v16;
  *(&v34 + 1) = sub_2312DF468(qword_280F7D468, v18, type metadata accessor for CustomContinuersBridgeAssetProvider);
  v33[0] = v17;
  v37 = v30;
  v38 = v15;
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_231368AF0();
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v19 = v38;
  v30 = v37;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v20 = type metadata accessor for ContextValuesIntentDetailsResolver();
  v21 = swift_allocObject();
  *(v21 + 16) = 0xD000000000000015;
  *(v21 + 24) = 0x8000000231380510;
  v32[3] = v20;
  v32[4] = sub_2312DF468(&qword_280F7D730, 255, type metadata accessor for ContextValuesIntentDetailsResolver);
  v32[0] = v21;
  sub_231368540();
  sub_231368510();
  v34 = v30;
  v35 = v19;
  __swift_allocate_boxed_opaque_existential_1(v33);
  sub_231368B60();

  sub_231228E9C(v32, &qword_27DD43878, &unk_23136E490);
  v22 = v34;
  v23 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 0xD000000000000015;
  v5[1] = 0x8000000231380530;
  v28 = v31;
  (*(v2 + 104))(v5, *MEMORY[0x277D60880], v31);
  sub_231368AC0();
  (*(v2 + 8))(v5, v28);
  (*(v24 + 8))(v27, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  return __swift_destroy_boxed_opaque_existential_1Tm(v42);
}

uint64_t sub_2312DEDFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return static CustomContinuersBridgeFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t sub_2312DEEDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_231368290();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v65 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v64 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  MEMORY[0x28223BE20](v15);
  v68 = &v59 - v18;
  v19 = sub_231368F50();
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v69 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v63 = v25 - v24;
  v26 = sub_2313698C0();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v66 = v28;
  v67 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  v34 = *a1;
  sub_2313678D0();
  sub_2313690F0();
  sub_231369EE0();
  v35 = sub_2313698A0();
  v36 = sub_23136A3A0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v62 = v14;
    v38 = v37;
    v60 = swift_slowAlloc();
    v71[0] = v60;
    *v38 = 136315138;
    v39 = v3;
    v40 = v19;
    v41 = v17;
    v42 = sub_231369E90();
    v61 = v34;
    v44 = v43;

    v45 = v42;
    v17 = v41;
    v19 = v40;
    v3 = v39;
    v46 = sub_2311CFD58(v45, v44, v71);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_2311CB000, v35, v36, "CustomContinuersBridgeAssetProvider: view context - %s", v38, 0xCu);
    v47 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x23192B930](v47, -1, -1);
    MEMORY[0x23192B930](v38, -1, -1);
  }

  else
  {
  }

  (*(v66 + 8))(v33, v67);
  v48 = sub_2313678D0();
  sub_231210C60(0x6974736567677573, 0xEE006E6F63496E6FLL, v48);

  if (v71[3])
  {
    v49 = v68;
    v50 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v49, v50 ^ 1u, 1, v19);
    if (__swift_getEnumTagSinglePayload(v49, 1, v19) != 1)
    {
      v51 = v69;
      v52 = v63;
      (*(v69 + 32))(v63, v49, v19);
      (*(v51 + 16))(v17, v52, v19);
      OUTLINED_FUNCTION_1_31();
      return (*(v51 + 8))(v52, v19);
    }
  }

  else
  {
    sub_231228E9C(v71, &qword_27DD443C0, &unk_23136E000);
    v49 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v19);
  }

  sub_231228E9C(v49, &qword_27DD436D0, &qword_23136D3E0);
  v55 = v64;
  v54 = v65;
  (*(v65 + 104))(v64, *MEMORY[0x277D60E90], v3);
  v56 = sub_231368280();
  v58 = v57;
  (*(v54 + 8))(v55, v3);
  *v17 = v56;
  v17[1] = v58;
  (*(v69 + 104))(v17, *MEMORY[0x277D61238], v19);
  return OUTLINED_FUNCTION_1_31();
}

uint64_t sub_2312DF468(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t DenyLists.init(suggestionIds:loggingIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_231255354(a1);
  result = sub_231255354(a2);
  a3[1] = result;
  return result;
}

uint64_t DenyLists.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_231369EE0();
  sub_231369EE0();
  sub_23136A650();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447A8, &qword_231375950);
  sub_2312DFC4C();
  sub_231207C1C();
  v3 = OUTLINED_FUNCTION_3_29();
  v5 = v4;

  MEMORY[0x23192A730](v3, v5);

  MEMORY[0x23192A730](10, 0xE100000000000000);
  strcpy(v10, "LoggingIds:\n");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  v6 = OUTLINED_FUNCTION_3_29();
  v8 = v7;

  MEMORY[0x23192A730](v6, v8);

  sub_231369EE0();
  MEMORY[0x23192A730](v10[0], v10[1]);

  return 0x6974736567677553;
}

uint64_t sub_2312DF6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xED00007364496E6FLL;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49676E6967676F6CLL && a2 == 0xEA00000000007364)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_2312DF788(char a1)
{
  if (a1)
  {
    return 0x49676E6967676F6CLL;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_2312DF7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312DF6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2312DF800(uint64_t a1)
{
  v2 = sub_2312DFCB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2312DF83C(uint64_t a1)
{
  v2 = sub_2312DFCB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DenyLists.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447B8, &qword_231375958);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v15 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_2312DFCB0();
  sub_231369EE0();
  sub_23136AA40();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447A8, &qword_231375950);
  sub_2312DFD04(&qword_27DD447C0);
  OUTLINED_FUNCTION_2_22();

  if (!v13)
  {
    v17 = v15;
    v16 = 1;
    OUTLINED_FUNCTION_2_22();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t DenyLists.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447C8, &unk_231375960);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312DFCB0();
  sub_23136AA20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447A8, &qword_231375950);
  v19 = 0;
  sub_2312DFD04(&qword_280F85D08);
  OUTLINED_FUNCTION_1_32();
  v14 = v20;
  v19 = 1;
  OUTLINED_FUNCTION_1_32();
  (*(v8 + 8))(v12, v5);
  v15 = v20;
  v16 = v18;
  *v18 = v14;
  v16[1] = v15;
  sub_231369EE0();
  sub_231369EE0();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2312DFC4C()
{
  result = qword_27DD447B0;
  if (!qword_27DD447B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD447A8, &qword_231375950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD447B0);
  }

  return result;
}

unint64_t sub_2312DFCB0()
{
  result = qword_280F85D18[0];
  if (!qword_280F85D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F85D18);
  }

  return result;
}

uint64_t sub_2312DFD04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD447A8, &qword_231375950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double DefaultDenyListsProvider.getDenyLists()@<D0>(_OWORD *a1@<X8>)
{
  v54 = a1;
  v59 = sub_2313698C0();
  v1 = OUTLINED_FUNCTION_0_0(v59);
  v57 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231366690();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  sub_231367340();
  sub_231366620();
  v26 = *(v10 + 8);
  v58 = v23;
  v63 = v10 + 8;
  v62 = v26;
  v26(v23, v7);
  v64 = v25;
  sub_231366620();
  sub_231369100();
  v61 = v10;
  v27 = *(v10 + 16);
  v65 = v20;
  v55 = v27;
  v27(v17, v20, v7);
  v56 = v6;
  v28 = sub_2313698A0();
  v29 = sub_23136A3A0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v69 = v53;
    *v30 = 136315138;
    v31 = sub_2313665A0();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_19();
    v35 = v62;
    (v62)(v34);
    v36 = sub_2311CFD58(v31, v33, &v69);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_2311CB000, v28, v29, "Loading default deny lists from path: %s", v30, 0xCu);
    v37 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x23192B930](v37, -1, -1);
    MEMORY[0x23192B930](v30, -1, -1);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_19();
    v35 = v62;
    (v62)(v38);
  }

  (*(v57 + 8))(v56, v59);
  v39 = v60;
  v40 = v55;
  v55(v60, v65, v7);
  v41 = type metadata accessor for JsonSerializer();
  v42 = swift_allocObject();
  v70 = v41;
  v71 = &protocol witness table for JsonSerializer;
  *&v69 = v42;
  v43 = v58;
  v40(v58, v39, v7);
  v44 = type metadata accessor for FileBasedConfigBackingStore();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  (*(v61 + 32))(v47 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v43, v7);
  v67 = v44;
  v68 = sub_2312E0314();
  *&v66 = v47;
  v35(v39, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B8, &qword_23136C390);
  inited = swift_initStackObject();
  sub_2311D38A8(&v66, inited + 16);
  sub_2311D38A8(&v69, inited + 56);
  v49 = v73;
  sub_23127E69C();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
  v50 = OUTLINED_FUNCTION_19();
  (v35)(v50);
  v35(v64, v7);
  if (!v49)
  {
    result = *&v72;
    *v54 = v72;
  }

  return result;
}

unint64_t sub_2312E0314()
{
  result = qword_280F85B48;
  if (!qword_280F85B48)
  {
    type metadata accessor for FileBasedConfigBackingStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85B48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DenyLists.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2312E0504()
{
  result = qword_27DD447D0;
  if (!qword_27DD447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD447D0);
  }

  return result;
}

unint64_t sub_2312E055C()
{
  result = qword_280F85E90;
  if (!qword_280F85E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85E90);
  }

  return result;
}

unint64_t sub_2312E05B4()
{
  result = qword_280F85D10;
  if (!qword_280F85D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85D10);
  }

  return result;
}

uint64_t type metadata accessor for IntentDetails()
{
  result = qword_280F84BE0;
  if (!qword_280F84BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312E067C()
{
  result = sub_231367550();
  if (v1 <= 0x3F)
  {
    result = sub_231367490();
    if (v2 <= 0x3F)
    {
      result = sub_231369050();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2312E0720(uint64_t a1, uint64_t a2)
{
  if ((sub_231367540() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for IntentDetails();
  v5 = v4[5];
  if ((sub_231367460() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((sub_231369000() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_23136A900();
}

uint64_t sub_2312E07DC(char a1)
{
  result = 0x457070416B6F6F42;
  switch(a1)
  {
    case 1:
    case 8:
    case 21:
      return 0xD000000000000012;
    case 2:
      v4 = 0x6C6946434F44;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000011;
    case 5:
      return 0x6472616F424C5243;
    case 6:
      return 0xD000000000000011;
    case 7:
      v5 = 0x456563616C50;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 9:
      v4 = 0x67617373654DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 10:
      return 0xD000000000000016;
    case 11:
      return 0x69726953676E6F53;
    case 12:
      v4 = 0x6C6369747241;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 13:
      v6 = 1702129486;
      goto LABEL_29;
    case 14:
      v3 = 0x7265646C6F46;
      goto LABEL_9;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x7469746E45676154;
    case 17:
      v5 = 0x457465737341;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 18:
      v5 = 0x456D75626C41;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 19:
      v6 = 2003789907;
      goto LABEL_29;
    case 20:
      v6 = 1953720652;
LABEL_29:
      result = v6 | 0x69746E4500000000;
      break;
    case 22:
      result = 0x7469746E45626154;
      break;
    case 23:
      result = 0x6B72616D6B6F6F42;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      v3 = 0x6C6F626D7953;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 26:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2312E0A7C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2312E0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_231367550();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_231369050();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312E0C50, 0, 0);
}

uint64_t sub_2312E0C50()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D60928])
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[2];
    (*(v0[7] + 96))(v7, v0[6]);
    (*(v5 + 32))(v4, v7, v6);
    v11 = sub_231369010();
    v12 = sub_231210CBC(v9, v8, v11);
    v14 = v13;

    v10[3] = MEMORY[0x277D837D0];
    if (v14)
    {
      v15 = v12;
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

    *v10 = v15;
    v10[1] = v16;
    (*(v5 + 8))(v4, v6);
    v17 = *MEMORY[0x277D60C38];
    v18 = sub_231367DC0();
    OUTLINED_FUNCTION_11(v18);
    (*(v19 + 104))(v10, v17);
  }

  else
  {
    v20 = v0[2];
    (*(v0[7] + 8))(v0[8], v0[6]);
    v21 = *MEMORY[0x277D60C40];
    v22 = sub_231367DC0();
    OUTLINED_FUNCTION_11(v22);
    (*(v23 + 104))(v20, v21);
  }

  v24 = v0[11];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

void sub_2312E0EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_231367EA0();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2313685A0();
  v34 = OUTLINED_FUNCTION_0_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  v41 = v40 - v39;
  sub_231367E70();
  (*(v29 + 16))(v32, v23, v26);
  v42 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v43 = swift_allocObject();
  (*(v29 + 32))(v43 + v42, v32, v26);
  sub_2313692F0();
  sub_231369200();
  (*(v29 + 8))(v23, v26);
  (*(v36 + 8))(v41, v33);
  v44 = (v25 + *(type metadata accessor for BaseModelSignals.SignalWithFilter() + 20));
  *v44 = sub_2312E182C;
  v44[1] = v43;
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312E1088@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_231367E10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2312E10F0()
{
  sub_2313692F0();
  result = sub_231369210();
  qword_280F8E710 = result;
  return result;
}

uint64_t sub_2312E1124()
{
  sub_2313692F0();
  result = sub_231369260();
  qword_280F8E708 = result;
  return result;
}

void sub_2312E116C()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B7C0);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EA0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

uint64_t type metadata accessor for BaseModelSignals.SignalWithFilter()
{
  result = qword_280F84368;
  if (!qword_280F84368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2312E132C()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B7D8);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EA0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E14EC()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B808);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EB0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E165C()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B820);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EB0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312E182C(uint64_t a1)
{
  v3 = sub_231367EA0();
  OUTLINED_FUNCTION_40_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return MEMORY[0x2821C6BF0](a1, v5);
}

void sub_2312E1898()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B860);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60F28];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E1C08()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B890);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60F30];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E1FDC()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B920);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EC0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2544()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_280F8E6C0);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60F48];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E26BC()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_280F8E6A8);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60F48];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2840()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B980);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EE0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E29B8()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B998);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EE0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2B38()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B9B0);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EE0];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2CD0()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B9D0);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EE8];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2E44()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_231368290();
  v1 = OUTLINED_FUNCTION_4_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_33();
  v4 = sub_2313685A0();
  v5 = OUTLINED_FUNCTION_1_33(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v8, qword_27DD4B9E8);
  OUTLINED_FUNCTION_10_24();
  v9 = *MEMORY[0x277D60EE8];
  v10 = OUTLINED_FUNCTION_6_20();
  v11(v10);
  sub_231368280();
  v12 = OUTLINED_FUNCTION_4_22();
  v13(v12);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v14 = OUTLINED_FUNCTION_13_19();
  v15(v14);
  OUTLINED_FUNCTION_17_15();
  *v16 = sub_23122DA98;
  v16[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312E2FE8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v7 = sub_231368290();
  v8 = OUTLINED_FUNCTION_4_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_23();
  sub_2313692F0();
  v13 = sub_231367D20();
  v16[3] = v13;
  v16[4] = sub_2312C4F18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v13);
  (*(v10 + 104))(v4, *a2, v3);
  sub_231368280();
  (*(v10 + 8))(v4, v3);
  result = sub_231369230();
  *a3 = result;
  return result;
}

unint64_t sub_2312E332C()
{
  result = sub_231367E10();
  if (v1 <= 0x3F)
  {
    result = sub_2312E33B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2312E33B0()
{
  result = qword_280F7C780;
  if (!qword_280F7C780)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280F7C780);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return type metadata accessor for BaseModelSignals.SignalWithFilter();
}

void OUTLINED_FUNCTION_28_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_2312E0EA4(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2312E34B0(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  result = sub_23125D7A0(a3);
  v6 = 0;
  v24 = a3 & 0xC000000000000001;
  v25 = result;
  v22 = a3 & 0xFFFFFFFFFFFFFF8;
  v23 = a3;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v6)
    {
      return v7;
    }

    if (v24)
    {
      result = MEMORY[0x23192AD10](v6, v23);
      v8 = result;
    }

    else
    {
      if (v6 >= *(v22 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v23 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v30 = v8;
    v21(&v26, &v30);
    if (v3)
    {

      return v7;
    }

    if (v27)
    {
      sub_2311E6A28(&v26, v29);
      sub_2311E6A28(v29, &v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v7 + 16);
        sub_23126DF64();
        v7 = v19;
        v31 = v19;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_23126DF64();
        v7 = v20;
        v31 = v20;
      }

      v12 = v27;
      v11 = v28;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
      v14 = *(*(v12 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_2312E6494(v10, v16, &v31, v12, v11);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    }

    else
    {
      result = sub_2311D1F18(&v26, &qword_27DD42F50, &qword_23136D440);
    }

    ++v6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2312E3730(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447E0, &qword_231375D60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v45 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  v46 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v44 = &v41 - v18;
  v19 = 0;
  v20 = *(a3 + 16);
  v21 = a3 + 32;
  v47 = MEMORY[0x277D84F90];
  for (i = a3 + 32; ; v21 = i)
  {
    v22 = ~v19;
    v23 = v21 + 40 * v19;
    v24 = v20 - v19;
    if (!v24)
    {
      break;
    }

    while (1)
    {
      a1(v23);
      if (v3)
      {
        v39 = v47;

        return v39;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        break;
      }

      sub_2311D1F18(v9, &qword_27DD447E0, &qword_231375D60);
      --v22;
      v23 += 40;
      if (!--v24)
      {
        return v47;
      }
    }

    v25 = v44;
    sub_2312E6588(v9, v44);
    sub_2312E6588(v25, v46);
    v26 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v26 + 16);
      v34 = OUTLINED_FUNCTION_23();
      sub_23126E29C(v34, v35, v36, v26);
      v26 = v37;
    }

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v42 = v28 + 1;
      sub_23126E29C(v27 > 1, v28 + 1, 1, v26);
      v29 = v42;
      v47 = v38;
    }

    else
    {
      v47 = v26;
    }

    v19 = -v22;
    *(v47 + 16) = v29;
    OUTLINED_FUNCTION_1_34();
    sub_2312E6588(v32, v30 + v31 * v28);
  }

  return v47;
}

uint64_t sub_2312E39AC(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446F0, &unk_231375D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_5_23();
  v9 = sub_231368090();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22();
  v42 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v40 = v17;
  v41 = v37 - v16;
  v18 = 0;
  v19 = *(a3 + 16);
  v43 = (v17 + 32);
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v19 == v18)
    {
      return v44;
    }

    v20 = *(sub_231366B10() - 8);
    a1(a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
    {
      sub_2311D1F18(v4, &qword_27DD446F0, &unk_231375D70);
      ++v18;
    }

    else
    {
      v21 = *v43;
      (*v43)(v41, v4, v9);
      v39 = v21;
      v21(v42, v41, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v44 + 16);
        v29 = OUTLINED_FUNCTION_23();
        sub_23126E388(v29, v30, v31, v32);
        v44 = v33;
      }

      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v37[1] = *(v44 + 16);
        v38 = v23 + 1;
        sub_23126E388(v22 > 1, v23 + 1, 1, v44);
        v24 = v38;
        v44 = v34;
      }

      ++v18;
      *(v44 + 16) = v24;
      OUTLINED_FUNCTION_1_34();
      v39((v25 + v26 * v27), v42, v9);
    }
  }

  v35 = v44;

  return v35;
}

uint64_t sub_2312E3C94(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v48 = a1;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447E8, &qword_231375D68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_5_23();
  v50 = sub_231369D90();
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  OUTLINED_FUNCTION_22();
  v47 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v42 = &v41 - v14;
  v43 = v13;
  v15 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 56);
  v19 = (v16 + 63) >> 6;
  v46 = (v13 + 32);
  result = sub_231369EE0();
  v21 = 0;
  v52 = MEMORY[0x277D84F90];
  v44 = a3;
  if (v18)
  {
LABEL_8:
    while (1)
    {
      v23 = (*(a3 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v18)))));
      v24 = v23[1];
      v51[0] = *v23;
      v51[1] = v24;
      sub_231369EE0();
      v48(v51);
      if (v5)
      {
        break;
      }

      v25 = v50;
      if (__swift_getEnumTagSinglePayload(v4, 1, v50) == 1)
      {
        result = sub_2311D1F18(v4, &qword_27DD447E8, &qword_231375D68);
      }

      else
      {
        v45 = 0;
        v26 = v4;
        v27 = *v46;
        v28 = v42;
        v29 = v26;
        (*v46)(v42);
        (v27)(v47, v28, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = *(v52 + 16);
          v35 = OUTLINED_FUNCTION_23();
          sub_23126F00C(v35, v36, v37, v38);
          v52 = v39;
        }

        v31 = *(v52 + 16);
        v30 = *(v52 + 24);
        v5 = v45;
        if (v31 >= v30 >> 1)
        {
          sub_23126F00C(v30 > 1, v31 + 1, 1, v52);
          v52 = v40;
        }

        *(v52 + 16) = v31 + 1;
        OUTLINED_FUNCTION_1_34();
        result = (v27)(v32 + v33 * v31, v47, v50);
        a3 = v44;
        v4 = v29;
      }

      v18 &= v18 - 1;
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    return v52;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return v52;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2312E3FC8(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = sub_231368180();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x23192A830](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23136A1C0();
      }

      result = sub_23136A240();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2312E4134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = a3;
  v44 = a5;
  v42 = a4;
  v9 = sub_231367E50();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2313698C0();
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v5 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_pool);
  SuggestionPool.getSuggestions(identifier:)();
  if (v26)
  {
    v27 = v26;
    MEMORY[0x28223BE20](v26);
    v29 = v42;
    v28 = v43;
    *(&v41 - 6) = v6;
    *(&v41 - 5) = v29;
    *(&v41 - 4) = a2;
    *(&v41 - 3) = v28;
    *(&v41 - 2) = v44;
    v30 = sub_2312E34B0(sub_2312E6074, (&v41 - 8), v27);
  }

  else
  {
    v43 = v20;
    v44 = v17;
    sub_231369110();
    v31 = v12;
    (*(v12 + 16))(v16, a1, v9);
    v32 = sub_2313698A0();
    v33 = sub_23136A3B0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      sub_2312E601C();
      v36 = sub_23136A8B0();
      v38 = v37;
      (*(v31 + 8))(v16, v9);
      v39 = sub_2311CFD58(v36, v38, &v45);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2311CB000, v32, v33, "Did not find suggestion of id: '%s' in the suggestion pool. Don't create candidate suggestion.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x23192B930](v35, -1, -1);
      MEMORY[0x23192B930](v34, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v9);
    }

    (*(v43 + 8))(v24, v44);
    return 0;
  }

  return v30;
}

void sub_2312E4454(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v184 = a6;
  v183 = a5;
  v185 = a4;
  v199 = a3;
  v205 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v195 = &v175 - v11;
  v182 = sub_2313694E0();
  v181 = *(v182 - 8);
  v12 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v194 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v193 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v198 = &v175 - v18;
  v209 = sub_231367D80();
  v220 = *(v209 - 8);
  v19 = *(v220 + 64);
  v20 = MEMORY[0x28223BE20](v209);
  v212 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v215 = &v175 - v22;
  v204 = sub_2313698C0();
  v203 = *(v204 - 8);
  v23 = *(v203 + 64);
  v24 = MEMORY[0x28223BE20](v204);
  v200 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v206 = &v175 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v177 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v202 = &v175 - v31;
  v190 = sub_231368BC0();
  v189 = *(v190 - 8);
  v32 = *(v189 + 64);
  v33 = MEMORY[0x28223BE20](v190);
  v176 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v186 = &v175 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v179 = &v175 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v178 = &v175 - v40;
  MEMORY[0x28223BE20](v39);
  v207 = &v175 - v41;
  v42 = sub_2313689A0();
  v223 = *(v42 - 8);
  v43 = *(v223 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v208 = &v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v227 = &v175 - v46;
  v219 = sub_231367890();
  v188 = *(v219 - 8);
  v47 = *(v188 + 8);
  MEMORY[0x28223BE20](v219);
  v218 = &v175 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447D8, &qword_231375D58);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = (&v175 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED0, &unk_23136B7C0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v180 = &v175 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v201 = &v175 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v175 - v59;
  v61 = sub_231368180();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v175 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = *a1;
  sub_2313676F0();
  v224 = sub_231368130();
  v225 = v66;
  v67 = *(v62 + 8);
  v191 = v65;
  v192 = v61;
  v197 = v62 + 8;
  v196 = v67;
  v67(v65, v61);
  v221 = a2;
  v213 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment;
  sub_2311CF324(a2 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment, v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  v68 = type metadata accessor for Environment();
  v69 = swift_dynamicCast();
  v222 = v42;
  v216 = v60;
  if (v69)
  {
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v68);
    v70 = *(v52 + *(v68 + 60));

    v71 = sub_2312E652C(v52);
    v72 = MEMORY[0x231928390](v71);

    v73 = *(v72 + 64);
    v187 = v72 + 64;
    v74 = 1 << *(v72 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & v73;
    v77 = (v74 + 63) >> 6;
    v78 = v188;
    v210 = v188 + 8;
    v211 = v188 + 16;
    v217 = v72;
    sub_231369EE0();
    v60 = 0;
    v79 = MEMORY[0x277D84F90];
    v80 = v223;
    while (v76)
    {
LABEL_10:
      v82 = v218;
      v83 = v219;
      v78[2](v218, *(v217 + 56) + v78[9] * (__clz(__rbit64(v76)) | (v60 << 6)), v219);
      v84 = sub_231367860();
      v52 = v78;
      (v78[1])(v82, v83);
      v68 = *(v84 + 16);
      v85 = *(v79 + 16);
      v86 = v85 + v68;
      if (__OFADD__(v85, v68))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v86 > *(v79 + 24) >> 1)
      {
        if (v85 <= v86)
        {
          v88 = v85 + v68;
        }

        else
        {
          v88 = v85;
        }

        sub_23126DA08(isUniquelyReferenced_nonNull_native, v88, 1, v79);
        v79 = v89;
      }

      v80 = v223;
      v78 = v52;
      v76 &= v76 - 1;
      if (*(v84 + 16))
      {
        v90 = *(v79 + 16);
        if ((*(v79 + 24) >> 1) - v90 < v68)
        {
          goto LABEL_68;
        }

        v91 = v79 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v90;
        v92 = v222;
        swift_arrayInitWithCopy();
        v42 = v92;
        v80 = v223;

        if (v68)
        {
          v93 = *(v79 + 16);
          v94 = __OFADD__(v93, v68);
          v95 = v93 + v68;
          if (v94)
          {
            goto LABEL_69;
          }

          *(v79 + 16) = v95;
        }
      }

      else
      {

        v42 = v222;
        if (v68)
        {
          __break(1u);
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
      v81 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v81 >= v77)
      {
        break;
      }

      v76 = *(v187 + 8 * v81);
      ++v60;
      if (v76)
      {
        v60 = v81;
        goto LABEL_10;
      }
    }

    v96 = 0;
    v97 = *(v79 + 16);
    while (1)
    {
      if (v97 == v96)
      {

        v60 = v216;
        v101 = v216;
        v102 = 1;
        goto LABEL_37;
      }

      if (v96 >= *(v79 + 16))
      {
        goto LABEL_66;
      }

      (*(v80 + 16))(v227, v79 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v96, v42);
      if (sub_231368980() == v224 && v98 == v225)
      {
        break;
      }

      v100 = sub_23136A900();

      if (v100)
      {
        goto LABEL_36;
      }

      (*(v80 + 8))(v227, v42);
      ++v96;
    }

LABEL_36:

    v60 = v216;
    (*(v80 + 32))(v216, v227, v42);
    v101 = v60;
    v102 = 0;
LABEL_37:
    __swift_storeEnumTagSinglePayload(v101, v102, 1, v42);
  }

  else
  {
LABEL_24:
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v68);
    sub_2311D1F18(v52, &qword_27DD447D8, &qword_231375D58);
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v42);
    v80 = v223;
  }

  v103 = v206;
  v104 = v208;
  v105 = v207;
  v106 = v202;
  v107 = v201;
  sub_2311E66F0(v60, v201, &qword_27DD42ED0, &unk_23136B7C0);
  if (__swift_getEnumTagSinglePayload(v107, 1, v42) == 1)
  {
    v108 = &qword_27DD42ED0;
    v109 = &unk_23136B7C0;
    v110 = v107;
LABEL_42:
    sub_2311D1F18(v110, v108, v109);
    goto LABEL_43;
  }

  (*(v80 + 32))(v104, v107, v42);
  sub_231368990();
  v111 = v80;
  v112 = sub_231368600();
  if (__swift_getEnumTagSinglePayload(v106, 1, v112) == 1)
  {
    (*(v111 + 8))(v104, v42);
    v108 = &qword_27DD42ED8;
    v109 = &qword_23136EBD0;
    v110 = v106;
    goto LABEL_42;
  }

  v148 = v178;
  sub_2313685E0();
  (*(*(v112 - 8) + 8))(v106, v112);
  v149 = v189;
  v150 = v190;
  (*(v189 + 32))(v105, v148, v190);
  v151 = v179;
  (*(v149 + 104))(v179, *MEMORY[0x277D61120], v150);
  v152 = sub_231312274(v105, v151);
  v153 = *(v149 + 8);
  v153(v151, v150);
  if ((v152 & 1) == 0)
  {
    v153(v105, v150);
    (*(v223 + 8))(v208, v42);
LABEL_43:
    v113 = v221;
    v114 = *(v221 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider + 24);
    v115 = *(v221 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider + 32);
    __swift_project_boxed_opaque_existential_1((v221 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider), v114);
    v116 = *(v113 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner + 32);
    __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner), *(v113 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner + 24));
    sub_231367AD0();
    v117 = v215;
    (*(v115 + 8))(v226, v113 + v213, v113 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformInvocationType, 0, 0, v114, v115);
    __swift_destroy_boxed_opaque_existential_1Tm(v226);
    v118 = v198;
    sub_2311E66F0(v199, v198, &qword_27DD42F18, &unk_23136B810);
    v119 = v209;
    if (__swift_getEnumTagSinglePayload(v118, 1, v209) == 1)
    {
      (*(v220 + 16))(v212, v117, v119);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v118, 1, v119);
      v121 = v192;
      v122 = v191;
      if (EnumTagSinglePayload != 1)
      {
        sub_2311D1F18(v118, &qword_27DD42F18, &unk_23136B810);
      }
    }

    else
    {
      (*(v220 + 32))(v212, v118, v119);
      v121 = v192;
      v122 = v191;
    }

    sub_2313676F0();
    sub_231368120();
    v196(v122, v121);
    __swift_project_boxed_opaque_existential_1(v226, v226[3]);
    LODWORD(v123) = sub_231367A50();
    v125 = v124;
    v127 = v126;
    __swift_destroy_boxed_opaque_existential_1Tm(v226);
    v128 = v200;
    sub_231369110();
    v129 = v225;
    sub_231369EE0();
    sub_231369EE0();
    v130 = sub_2313698A0();
    v131 = sub_23136A3A0();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      LODWORD(v227) = v123;
      v123 = v133;
      v226[0] = v133;
      *v132 = 136315394;
      v134 = sub_2311CFD58(v224, v129, v226);

      *(v132 + 4) = v134;
      v42 = v222;
      *(v132 + 12) = 2080;
      v135 = sub_2311CFD58(v125, v127, v226);
      v136 = v128;
      v137 = v135;

      *(v132 + 14) = v137;
      _os_log_impl(&dword_2311CB000, v130, v131, "SuggestionId '%s' %s", v132, 0x16u);
      swift_arrayDestroy();
      v138 = v123;
      LOBYTE(v123) = v227;
      MEMORY[0x23192B930](v138, -1, -1);
      v139 = v132;
      v119 = v209;
      MEMORY[0x23192B930](v139, -1, -1);

      (*(v203 + 8))(v136, v204);
    }

    else
    {

      (*(v203 + 8))(v128, v204);
    }

    v140 = v215;
    v141 = v212;
    if ((v123 & 1) == 0)
    {
      v146 = *(v220 + 8);
      v146(v212, v119);
      v146(v140, v119);
      sub_2311D1F18(v216, &qword_27DD42ED0, &unk_23136B7C0);
      v147 = v205;
      *v205 = 0u;
      *(v147 + 1) = 0u;
      v147[4] = 0;
      return;
    }

    v142 = v193;
    (*(v220 + 16))(v193, v212, v119);
    __swift_storeEnumTagSinglePayload(v142, 0, 1, v119);
    (*(v181 + 16))(v194, v183, v182);
    sub_2311E66F0(v184, v195, &qword_27DD432D8, &unk_23136BED0);
    v143 = v180;
    sub_2311E66F0(v216, v180, &qword_27DD42ED0, &unk_23136B7C0);
    v144 = __swift_getEnumTagSinglePayload(v143, 1, v42);

    if (v144 == 1)
    {
      sub_2311D1F18(v143, &qword_27DD42ED0, &unk_23136B7C0);
      v145 = v190;
    }

    else
    {
      v161 = v177;
      sub_231368990();
      v162 = v143;
      v163 = v161;
      (*(v223 + 8))(v162, v42);
      v164 = sub_231368600();
      v165 = __swift_getEnumTagSinglePayload(v163, 1, v164);
      v145 = v190;
      if (v165 != 1)
      {
        v166 = v176;
        sub_2313685E0();
        (*(*(v164 - 8) + 8))(v163, v164);
        (*(v189 + 32))(v186, v166, v145);
        goto LABEL_62;
      }

      sub_2311D1F18(v163, &qword_27DD42ED8, &qword_23136EBD0);
    }

    (*(v189 + 104))(v186, *MEMORY[0x277D61118], v145);
LABEL_62:
    v167 = sub_231368C60();
    v169 = *(v221 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationContext);
    v168 = *(v221 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationContext + 8);
    swift_unknownObjectRetain();
    sub_231369EE0();
    v170 = sub_231368C40();
    v171 = MEMORY[0x277D61158];
    v172 = v205;
    v205[3] = v167;
    v172[4] = v171;
    *v172 = v170;
    v173 = *(v220 + 8);
    v173(v141, v119);
    v173(v140, v119);
    sub_2311D1F18(v216, &qword_27DD42ED0, &unk_23136B7C0);
    return;
  }

  sub_231369110();
  v154 = v225;
  sub_231369EE0();
  v155 = sub_2313698A0();
  v156 = sub_23136A390();

  if (os_log_type_enabled(v155, v156))
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v226[0] = v158;
    *v157 = 136315138;
    v159 = sub_2311CFD58(v224, v154, v226);

    *(v157 + 4) = v159;
    _os_log_impl(&dword_2311CB000, v155, v156, "suggestion - %s was disabled through config", v157, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v158);
    MEMORY[0x23192B930](v158, -1, -1);
    MEMORY[0x23192B930](v157, -1, -1);

    (*(v203 + 8))(v206, v204);
    v153(v207, v190);
    (*(v223 + 8))(v208, v42);
    v160 = v216;
  }

  else
  {

    (*(v203 + 8))(v103, v204);
    v153(v207, v190);
    (*(v223 + 8))(v208, v42);
    v160 = v60;
  }

  sub_2311D1F18(v160, &qword_27DD42ED0, &unk_23136B7C0);
  v174 = v205;
  v205[4] = 0;
  *v174 = 0u;
  *(v174 + 1) = 0u;
}

uint64_t sub_2312E5AD4()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationId;
  v2 = sub_2313667A0();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_pool);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment));
  v5 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformInvocationType;
  v6 = sub_231367C70();
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 8))(v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider));
  v8 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationContext);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2312E5BB4()
{
  sub_2312E5AD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PooledCandidateSuggestionFactory()
{
  result = qword_280F7DAB0;
  if (!qword_280F7DAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312E5C60()
{
  result = sub_2313667A0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_231367C70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2312E5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(MEMORY[0x277D61148] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2312E65EC;
  v17.n128_f64[0] = a7;

  return MEMORY[0x2821C73B8](a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_2312E5E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(MEMORY[0x277D61140] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_23120B320;
  v17.n128_f64[0] = a7;

  return MEMORY[0x2821C73A8](a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_2312E5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(MEMORY[0x277D61150] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2312E65EC;
  v17.n128_f64[0] = a7;

  return MEMORY[0x2821C73C0](a1, a2, a3, a4, a5, a6, v17);
}

unint64_t sub_2312E601C()
{
  result = qword_280F7CA08;
  if (!qword_280F7CA08)
  {
    sub_231367E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA08);
  }

  return result;
}

uint64_t sub_2312E6098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a6;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_22();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  (*(v15 + 32))(&v30 - v21, v23, v24);
  v25 = *(a7 + 48);
  v26 = *(a7 + 52);
  v27 = swift_allocObject();
  (*(v15 + 16))(v19, v22, a8);
  v28 = sub_2312E6220(a1, a2, v19, a4, a5, v31, v27, a8, a9);
  (*(v15 + 8))(v22, a8);
  return v28;
}

uint64_t sub_2312E6220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[3] = a8;
  v30[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a8 - 8) + 32))();
  v15 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationId;
  v28 = sub_2313667A0();
  v16 = *(v28 - 8);
  (*(v16 + 16))(a7 + v15, a1, v28);
  *(a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_pool) = a2;
  sub_2311CF324(v30, a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner);
  sub_2311CF324(a4, a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment);
  v17 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformInvocationType;
  v18 = sub_231367C70();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a7 + v17, a5, v18);
  sub_2311CF324(a6, a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider);
  sub_231367ED0();

  sub_231367AD0();
  v20 = sub_231367EC0();
  v22 = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  (*(v19 + 8))(a5, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(a1, v28);
  sub_2311D1F18(v29, &qword_27DD43D30, qword_231375200);
  v23 = (a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationContext);
  *v23 = v20;
  v23[1] = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return a7;
}

uint64_t sub_2312E6494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2311E6A28(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2312E652C(uint64_t a1)
{
  v2 = type metadata accessor for Environment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2312E6588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312E6604(uint64_t *a1, void *a2)
{
  v4 = sub_231368290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  v16 = *a1;
  sub_231367900();
  v17 = sub_2312663F4();
  if (v17 == 163)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D60E90], v4);
    v18 = sub_231368280();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    *v15 = v18;
    v15[1] = v20;
    v21 = *MEMORY[0x277D61238];
    v22 = sub_231368F50();
    (*(*(v22 - 8) + 104))(v15, v21, v22);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  }

  else
  {
    v23 = v17;
    v24 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v25 = sub_2313682F0();
    sub_231264AEC(v25, v23, v15);

    v22 = sub_231368F50();
  }

  __swift_storeEnumTagSinglePayload(v13, 1, 1, v22);
  return sub_231369060();
}

uint64_t sub_2312E688C()
{
  sub_2313686F0();
  sub_2313686E0();
  v0 = sub_2313686C0();

  byte_280F8E728 = v0 & 1;
  return result;
}

uint64_t static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_2313698C0();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312E69BC, 0, 0);
}

uint64_t sub_2312E69BC()
{
  if (qword_280F855E0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = qword_280F8E720;
  v0[5] = sub_231367980();
  v0[6] = sub_2312E86C0(&qword_280F7CA98, 255, MEMORY[0x277D60A60]);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_2312E6B40;
  v5 = v0[23];

  return v7(v0 + 2);
}

uint64_t sub_2312E6B40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(v2 + 248) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2312E6C48, 0, 0);
}

uint64_t sub_2312E6C48()
{
  v64 = v1;
  v2 = *(v1 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43810, &qword_23136E028);
  v3 = sub_231368EF0();
  if (v3)
  {
    sub_23121CD80(v3, v1 + 96);

    if (*(v1 + 120))
    {
      v4 = *(v1 + 200);
      sub_2311D38A8((v1 + 96), v1 + 56);
      v5 = (v4 + 8);
      v6 = 0x20u;
      v61 = (v4 + 8);
      while (1)
      {
        v7 = byte_2845F2408[v6];
        switch(byte_2845F2408[v6])
        {
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0xCu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
          case 0x14u:
          case 0x15u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
          case 0x32u:
          case 0x33u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x3Bu:
          case 0x3Cu:
          case 0x40u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
          case 0x4Bu:
          case 0x4Cu:
          case 0x4Du:
          case 0x4Eu:
          case 0x4Fu:
          case 0x50u:
          case 0x51u:
          case 0x52u:
          case 0x53u:
          case 0x54u:
          case 0x55u:
          case 0x57u:
          case 0x58u:
          case 0x59u:
          case 0x5Au:
          case 0x5Bu:
          case 0x5Cu:
          case 0x5Du:
          case 0x5Eu:
          case 0x5Fu:
          case 0x60u:
          case 0x61u:
          case 0x62u:
          case 0x63u:
          case 0x64u:
          case 0x65u:
          case 0x6Au:
          case 0x6Bu:
          case 0x6Cu:
          case 0x6Du:
          case 0x6Eu:
          case 0x6Fu:
          case 0x70u:
          case 0x72u:
          case 0x73u:
          case 0x74u:
          case 0x75u:
          case 0x76u:
          case 0x7Au:
          case 0x7Bu:
          case 0x7Cu:
          case 0x7Du:
          case 0x7Eu:
          case 0x7Fu:
          case 0x80u:
          case 0x81u:
          case 0x94u:
          case 0xA0u:
            if (qword_280F85690 != -1)
            {
              swift_once();
            }

            if (byte_280F8E728)
            {
              goto LABEL_8;
            }

            v9 = *(v1 + 232);
            sub_231369100();
            v10 = sub_2313698A0();
            v11 = sub_23136A390();
            v12 = OUTLINED_FUNCTION_1_35(v11);
            v13 = *(v1 + 232);
            v14 = *(v1 + 192);
            if (v12)
            {
              v15 = swift_slowAlloc();
              v16 = swift_slowAlloc();
              v62 = v16;
              *v15 = 136315138;
              v17 = sub_23125DB88(v7);
              v19 = sub_2311CFD58(v17, v18, &v62);

              *(v15 + 4) = v19;
              _os_log_impl(&dword_2311CB000, v10, v0, "BaseSuggestionsOwnerDefinitionFactory:: AppIntent suggestion '%s' not added due to feature flag 'handCraftedAppIntentSuggestions' is off", v15, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v16);
              v5 = v61;
              OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_29();
            }

            goto LABEL_34;
          default:
LABEL_8:
            v0 = *(v1 + 80);
            __swift_project_boxed_opaque_existential_1((v1 + 56), v0);
            sub_23126036C(v7);
            v8 = sub_2313694C0();

            if (v8)
            {
              switch(v7)
              {
                case 0x4Du:
                case 0x4Fu:
                case 0x56u:
                case 0x64u:
                case 0x66u:
                case 0x67u:
                case 0x68u:
                case 0x69u:
                case 0x77u:
                case 0x78u:
                case 0x79u:
                case 0x80u:
                case 0x82u:
                case 0x83u:
                case 0x87u:
                case 0x88u:
                case 0x89u:
                case 0x8Au:
                case 0x8Bu:
                case 0x8Eu:
                case 0x8Fu:
                case 0x90u:
                case 0x91u:
                case 0x92u:
                case 0x93u:
                case 0x96u:
                case 0x97u:
                case 0x98u:
                case 0x99u:
                case 0x9Au:
                case 0x9Bu:
                case 0x9Du:
                case 0x9Eu:
                case 0x9Fu:
                case 0xA2u:
                  goto LABEL_17;
                case 0x4Eu:
                case 0x50u:
                case 0x51u:
                case 0x52u:
                case 0x53u:
                case 0x54u:
                case 0x55u:
                case 0x57u:
                case 0x58u:
                case 0x59u:
                case 0x5Au:
                case 0x5Bu:
                case 0x5Cu:
                case 0x5Du:
                case 0x5Eu:
                case 0x5Fu:
                case 0x60u:
                case 0x61u:
                case 0x62u:
                case 0x63u:
                case 0x65u:
                case 0x6Au:
                case 0x6Bu:
                case 0x6Cu:
                case 0x6Du:
                case 0x6Eu:
                case 0x6Fu:
                case 0x70u:
                case 0x71u:
                case 0x72u:
                case 0x73u:
                case 0x74u:
                case 0x75u:
                case 0x76u:
                case 0x7Au:
                case 0x7Bu:
                case 0x7Cu:
                case 0x7Du:
                case 0x7Eu:
                case 0x7Fu:
                case 0x81u:
                case 0x84u:
                case 0x85u:
                case 0x86u:
                case 0x8Cu:
                case 0x8Du:
                case 0x94u:
                case 0x95u:
                case 0x9Cu:
                case 0xA0u:
                case 0xA1u:
                  goto LABEL_32;
                default:
                  if (v7 <= 0x3F && ((1 << v7) & 0xC612000000000305) != 0 || v7 == 65 || v7 == 69)
                  {
LABEL_17:
                    sub_23125DB88(v7);
                    if (!(!v31 & v30))
                    {
                      v0 = 0x8000000231380770;
                      switch(v7)
                      {
                        case 'H':
                        case 'M':
                          goto LABEL_26;
                        case 'I':
                        case 'J':
                        case 'K':
                          goto LABEL_28;
                        case 'L':
                          goto LABEL_29;
                        case 'N':
                          goto LABEL_27;
                        default:
                          JUMPOUT(0);
                      }
                    }

                    if (v7 - 119 >= 2)
                    {
                      if (v7 == 63 || v7 == 128)
                      {
LABEL_26:
                        OUTLINED_FUNCTION_2_23();
                        v0 = 0x80000002313807A0;
                      }

                      else if (v7 == 129)
                      {
LABEL_27:
                        OUTLINED_FUNCTION_2_23();
                        v0 = 0x8000000231380740;
                      }

                      else
                      {
LABEL_28:
                        v62 = 0;
                        v63 = 0xE000000000000000;
                        sub_23136A650();

                        OUTLINED_FUNCTION_2_23();
                        v62 = v32;
                        v63 = 0x80000002313806F0;
                        v33 = sub_23125DB88(v7);
                        MEMORY[0x23192A730](v33);

                        LOBYTE(v0) = v63;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_23();
                      v0 = 0x8000000231380710;
                    }

LABEL_29:
                    v34 = *(v1 + 248);
                    *(swift_task_alloc() + 16) = v7;
                    sub_231368EB0();

                    goto LABEL_35;
                  }

LABEL_32:
                  v35 = *(v1 + 216);
                  sub_231369100();
                  v10 = sub_2313698A0();
                  v36 = sub_23136A390();
                  v37 = OUTLINED_FUNCTION_1_35(v36);
                  v13 = *(v1 + 216);
                  v14 = *(v1 + 192);
                  if (!v37)
                  {
                    goto LABEL_34;
                  }

                  v60 = *(v1 + 216);
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v62 = v39;
                  *v38 = 136315138;
                  v40 = sub_23125DB88(v7);
                  v42 = sub_2311CFD58(v40, v41, &v62);

                  *(v38 + 4) = v42;
                  v5 = v61;
                  _os_log_impl(&dword_2311CB000, v10, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to 'addToSuggestionPool' is false", v38, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v39);
                  OUTLINED_FUNCTION_29();
                  break;
              }

              goto LABEL_14;
            }

            v20 = *(v1 + 224);
            sub_231369100();
            v10 = sub_2313698A0();
            v21 = sub_23136A390();
            v22 = OUTLINED_FUNCTION_1_35(v21);
            v13 = *(v1 + 224);
            v14 = *(v1 + 192);
            if (v22)
            {
              v23 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v23 = 136315394;
              v24 = sub_23125DB88(v7);
              v60 = v13;
              v26 = sub_2311CFD58(v24, v25, &v62);

              *(v23 + 4) = v26;
              *(v23 + 12) = 2080;
              v27 = sub_23126036C(v7);
              v29 = sub_2311CFD58(v27, v28, &v62);

              *(v23 + 14) = v29;
              _os_log_impl(&dword_2311CB000, v10, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to related app '%s' is not installed", v23, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_29();
              v5 = v61;
LABEL_14:
              OUTLINED_FUNCTION_29();

              (*v5)(v60, v14);
              goto LABEL_35;
            }

LABEL_34:

            (*v5)(v13, v14);
LABEL_35:
            if (++v6 == 195)
            {
              v43 = *(v1 + 248);
              sub_231368ED0();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_23136B670;
              sub_2311D38A8((v1 + 136), v44 + 32);

              __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
              goto LABEL_41;
            }

            break;
        }
      }
    }
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  v45 = *(v1 + 208);
  sub_231228E9C(v1 + 96, &qword_27DD43818, &unk_23136E030);
  sub_2313690F0();
  v46 = sub_2313698A0();
  v47 = sub_23136A3B0();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v1 + 248);
  v51 = *(v1 + 200);
  v50 = *(v1 + 208);
  v52 = *(v1 + 192);
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_2311CB000, v46, v47, "BaseSuggestionsOwnerDefinitionFactory: No appUtils instance in the lifecycle container.\nSo we cannot check if an app is installed before showing BaseSuggestions. Not building any BaseSuggestions", v53, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v51 + 8))(v50, v52);

  v44 = MEMORY[0x277D84F90];
LABEL_41:
  v55 = *(v1 + 224);
  v54 = *(v1 + 232);
  v57 = *(v1 + 208);
  v56 = *(v1 + 216);

  v58 = *(v1 + 8);

  return v58(v44);
}

uint64_t sub_2312E73EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447F0, &qword_231375E68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = (v94 - v6);
  v113 = sub_231368950();
  v7 = *(v113 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v113);
  v97 = (v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447F8, &unk_231375E70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = v94 - v12;
  v114 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  v13 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v112 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 40);
  v117 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v117);
  sub_231265670(a2);
  v123 = v117;
  v124 = v15;
  __swift_allocate_boxed_opaque_existential_1(&v122);
  sub_231368B10();

  v16 = v123;
  v17 = __swift_project_boxed_opaque_existential_1(&v122, v123);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231265158(a2);
  sub_231368B00();

  (*(v18 + 8))(v21, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  sub_231260464(a2, &v119);
  if (v120)
  {
    sub_2311D38A8(&v119, &v122);
    v22 = *(a1 + 24);
    v23 = *(a1 + 40);
    v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_231368AD0();
    (*(v25 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  }

  else
  {
    sub_231228E9C(&v119, &qword_27DD43E50, &unk_2313708D8);
  }

  v29 = sub_23125E754(a2);
  v30 = *(v29 + 16);
  if (v30)
  {
    v95 = a2;
    v94[1] = v29;
    v31 = v29 + 32;
    v110 = (v7 + 104);
    v96 = (v7 + 8);
    v109 = *MEMORY[0x277D60B78];
    v108 = *MEMORY[0x277D60B98];
    v107 = *MEMORY[0x277D61060];
    v106 = xmmword_23136B670;
    v105 = xmmword_23136C1C0;
    v111 = a1;
    v32 = v115;
    v33 = v114;
    do
    {
      *&v117 = v30;
      sub_2311CF324(v31, &v122);
      sub_2311CF324(&v122, &v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44800, &qword_231375E80);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
        v34 = v112;
        sub_2312E85F8(v32, v112);
        v35 = *(a1 + 24);
        v101 = v35;
        v103 = *(a1 + 32);
        v102 = __swift_project_boxed_opaque_existential_1(a1, v35);
        v116 = v94;
        v104 = *(v35 - 8);
        v36 = *(v104 + 64);
        MEMORY[0x28223BE20](v102);
        v100 = v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D40, &qword_231370668);
        v38 = sub_231367E10();
        v39 = *(v38 - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v106;
        v43 = v34;
        (*(v39 + 16))(v42 + v41, v34, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
        v44 = sub_231367D80();
        v45 = *(v44 - 8);
        v46 = *(v45 + 72);
        v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = v105;
        v49 = *(v45 + 104);
        v49(v48 + v47, v109, v44);
        v49(v48 + v47 + v46, v108, v44);
        v50 = v98;
        *v98 = v48;
        v51 = v113;
        (*v110)(v50, v107, v113);
        __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
        v52 = (v43 + *(v33 + 20));
        v53 = v52[1];
        v99 = *v52;
        *&v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44810, &unk_231375E90);
        *(&v120 + 1) = sub_2312E865C();
        __swift_allocate_boxed_opaque_existential_1(&v119);
        sub_231367EA0();
        v54 = MEMORY[0x277D60CF0];
        sub_2312E86C0(&qword_280F7C9E8, 255, MEMORY[0x277D60CF0]);
        sub_2312E86C0(&qword_280F7C9F0, 255, v54);
        sub_2312E86C0(&qword_280F7CA00, 255, v54);
        sub_2312E86C0(&qword_280F7C9F8, 255, v54);

        sub_2313679E0();
        v55 = v100;
        v56 = v101;
        sub_231366FC0();

        sub_231228E9C(v50, &qword_27DD447F0, &qword_231375E68);
        (*(v104 + 8))(v55, v56);
        sub_2312E8708(v112);
        __swift_destroy_boxed_opaque_existential_1Tm(&v119);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
        sub_231228E9C(v32, &qword_27DD447F8, &unk_231375E70);
        v57 = *(a1 + 24);
        v103 = *(a1 + 32);
        v102 = __swift_project_boxed_opaque_existential_1(a1, v57);
        v116 = v94;
        v104 = *(v57 - 8);
        v58 = *(v104 + 64);
        MEMORY[0x28223BE20](v102);
        v60 = v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D40, &qword_231370668);
        v61 = *(sub_231367E10() - 8);
        v62 = *(v61 + 72);
        v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        *(swift_allocObject() + 16) = v106;
        v64 = v123;
        __swift_project_boxed_opaque_existential_1(&v122, v123);
        (*(*(&v64 + 1) + 8))(v64, *(&v64 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
        v65 = sub_231367D80();
        v66 = *(v65 - 8);
        v67 = *(v66 + 72);
        v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v105;
        v70 = v69 + v68;
        v71 = *(v66 + 104);
        v71(v70, v109, v65);
        v71(v70 + v67, v108, v65);
        v72 = v97;
        *v97 = v69;
        v73 = v113;
        (*v110)(v72, v107, v113);
        sub_231366FD0();

        (*v96)(v72, v73);
        (*(v104 + 8))(v60, v57);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v122);
      v31 += 40;
      v30 = v117 - 1;
      a1 = v111;
      v32 = v115;
      v33 = v114;
    }

    while (v117 != 1);

    a2 = v95;
  }

  else
  {
  }

  v74 = *(a1 + 40);
  v117 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v117);
  v123 = v117;
  v124 = v74;
  __swift_allocate_boxed_opaque_existential_1(&v122);
  sub_231368AE0();
  v75 = v124;
  v117 = v123;
  __swift_project_boxed_opaque_existential_1(&v122, v123);
  sub_2312653A8(a2);
  v120 = v117;
  v121 = v75;
  __swift_allocate_boxed_opaque_existential_1(&v119);
  sub_231368B30();

  v76 = v120;
  v77 = __swift_project_boxed_opaque_existential_1(&v119, v120);
  v78 = *(v76 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v81 = v94 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for BaseSuggestionsAssetProvider();
  v83 = swift_allocObject();
  v118[3] = v82;
  v118[4] = sub_2312E86C0(qword_280F85730, v84, type metadata accessor for BaseSuggestionsAssetProvider);
  v118[0] = v83;
  sub_231368AF0();
  (*(v78 + 8))(v81, v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  sub_231262A24(a2);
  sub_2312E83AC(v85, a1);

  sub_2312646B4(a2, &v119);
  if (!v120)
  {
    return sub_231228E9C(&v119, &qword_27DD44808, &qword_231375E88);
  }

  sub_2311D38A8(&v119, &v122);
  v86 = *(a1 + 24);
  v87 = *(a1 + 40);
  v88 = __swift_project_boxed_opaque_existential_1(a1, v86);
  v89 = *(v86 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v92 = v94 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231368B40();
  (*(v89 + 8))(v92, v86);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v122);
}

uint64_t sub_2312E83AC(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_231215FE4(a2, v14);
    v5 = v15;
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(i - 16);
    v12 = *(i - 8);
    v13 = *(i + 40);
    sub_231368B60();
    (*(v7 + 8))(v10, v5);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
    i += 64;
  }

  return result;
}

uint64_t sub_2312E84F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t sub_2312E85F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2312E865C()
{
  result = qword_280F7CA90;
  if (!qword_280F7CA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44810, &unk_231375E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA90);
  }

  return result;
}

uint64_t sub_2312E86C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2312E8708(uint64_t a1)
{
  v2 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2312E8768()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2311F5E50(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      sub_231368A90();
      v11 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2311F5E50(v7 > 1, v8 + 1, 1);
        v3 = v11;
      }

      *(v3 + 16) = v8 + 1;
      sub_2311D38A8(&v10, v3 + 40 * v8 + 32);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_2312E886C()
{
  v2 = *v0;
  v3 = sub_2312E8768();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_2312E88CC(uint64_t a1)
{
  v1[7] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312E8974, 0, 0);
}

uint64_t sub_2312E8974()
{
  sub_23128DC20(v0[7], (v0 + 2));
  if (v0[5])
  {
    v1 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_231368300();
    v4 = v3;
    v0[10] = v2;
    v0[11] = v3;
    v0[12] = swift_getObjectType();
    v5 = *(*(v4 + 8) + 8);
    v7 = sub_23136A260();

    return MEMORY[0x2822009F8](sub_2312E8A88, v7, v6);
  }

  else
  {
    sub_23128DC90((v0 + 2));
    v9 = v0[8];
    v8 = v0[9];

    v10 = v0[1];

    return v10(0xF000000000000007);
  }
}

uint64_t sub_2312E8A88()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_23126C1F0(v0[9]);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2312E8AFC, 0, 0);
}

uint64_t sub_2312E8AFC()
{
  v1 = v0[8];
  sub_2312E8CC0(v0[9], v1);
  v2 = sub_231369330();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = 0xF000000000000007;
  }

  else
  {
    v4 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44818, &qword_231375F60);
    v5 = swift_allocBox();
    (*(*(v2 - 8) + 32))(v6, v4, v2);
    v3 = v5 | 0x6000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_2312E8C2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2312E88CC(a1);
}

uint64_t sub_2312E8CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312E8D30(__int128 *a1, uint64_t a2, char a3)
{
  v4 = a2 * 60.0 * 60.0;
  v5 = a3 & 1;
  if (a3)
  {
    v4 = 0.0;
  }

  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = a2;
  *(v3 + 40) = v5;
  sub_2311D38A8(a1, v3 + 48);
  return v3;
}

uint64_t sub_2312E8D80@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v53 = sub_231368260();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v52 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v40 - v12;
  v13 = sub_231368090();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v20 = type metadata accessor for RankedCandidateSuggestion();
  result = sub_231254598(a1 + *(v20 + 28), v19, v18);
  v50 = *(result + 16);
  if (v50)
  {
    v40 = a3;
    v41 = v4;
    v22 = 0;
    v23 = *(v4 + 2);
    v47 = *(v4 + 24);
    v46 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v45 = v14 + 16;
    v44 = *MEMORY[0x277D60E38];
    v24 = (v8 + 8);
    v48 = v14;
    v49 = v13;
    v42 = (v14 + 8);
    v43 = (v8 + 104);
    while (v22 < *(result + 16))
    {
      v25 = result;
      (*(v48 + 16))(v17, v46 + *(v48 + 72) * v22, v13);
      if (v47)
      {
        v26 = 0;
      }

      else
      {
        v27 = v41[10];
        __swift_project_boxed_opaque_existential_1(v41 + 6, v41[9]);
        sub_231368F20();
        v29 = v28;
        sub_231368050();
        v26 = v29 - v30 >= v23;
      }

      v31 = v51;
      sub_231368060();
      v33 = v52;
      v32 = v53;
      (*v43)(v52, v44, v53);
      v34 = sub_231368240();
      v35 = *v24;
      (*v24)(v33, v32);
      v35(v31, v32);
      v13 = v49;
      (*v42)(v17, v49);
      if ((v34 & 1) == 0 || v26)
      {
        ++v22;
        result = v25;
        if (v50 != v22)
        {
          continue;
        }
      }

      v4 = v41;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    v36 = 0xE000000000000000;
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_23136A650();

    strcpy(v57, "alreadyEngaged");
    HIBYTE(v57[1]) = -18;
    if (v4[5])
    {
      v37 = 0;
    }

    else
    {
      v38 = v4[4];
      v55 = 35;
      v56 = 0xE100000000000000;
      v54 = v38;
      v39 = sub_23136A8B0();
      MEMORY[0x23192A730](v39);

      MEMORY[0x23192A730](0x7372756F68, 0xE500000000000000);
      v37 = v55;
      v36 = v56;
    }

    MEMORY[0x23192A730](v37, v36);

    return sub_231366E50();
  }

  return result;
}

uint64_t sub_2312E91C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_2312E9240(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 25) = 0;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2312E9250(char a1)
{
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  *(v1 + 25) = a1;
  return OUTLINED_FUNCTION_0_3();
}

BOOL sub_2312E9264()
{
  v0 = sub_231368260();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231368060();
  v5 = (*(v1 + 88))(v4, v0);
  v6 = *MEMORY[0x277D60E30];
  if (v5 == *MEMORY[0x277D60E30])
  {
    (*(v1 + 96))(v4, v0);
    v7 = sub_231367D80();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  else
  {
    (*(v1 + 8))(v4, v0);
  }

  return v5 == v6;
}

uint64_t sub_2312E93C0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v79 = sub_231368260();
  v7 = *(v79 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v79);
  v78 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v62 - v11;
  v12 = sub_231368090();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v67 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v76 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v80 = v3;
  if (*(v3 + 25))
  {

    return sub_231366E50();
  }

  else
  {
    v72 = v7;
    v73 = a2;
    v69 = v20;
    v65 = a3;
    v23 = a2[3];
    v24 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v23);
    v25 = *(type metadata accessor for RankedCandidateSuggestion() + 28);
    v74 = a1;
    v66 = v25;
    result = sub_231254598(a1 + v25, v23, v24);
    v27 = result;
    v28 = 0;
    v29 = *(result + 16);
    v81 = (v13 + 8);
    v68 = (v13 + 32);
    v75 = MEMORY[0x277D84F90];
    while (v29 != v28)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v31 = *(v13 + 72);
      (*(v13 + 16))(v22, v27 + v30 + v31 * v28, v12);
      if (sub_2312E9264())
      {
        v64 = *v68;
        v64(v76, v22, v12);
        v32 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = *(v32 + 16);
          sub_2311F5BD4();
          v32 = v82;
        }

        v35 = *(v32 + 16);
        v36 = v35 + 1;
        if (v35 >= *(v32 + 24) >> 1)
        {
          v75 = v35 + 1;
          v63 = v35;
          sub_2311F5BD4();
          v36 = v75;
          v35 = v63;
          v32 = v82;
        }

        ++v28;
        *(v32 + 16) = v36;
        v75 = v32;
        result = (v64)(v32 + v30 + v35 * v31, v76, v12);
      }

      else
      {
        result = (*v81)(v22, v12);
        ++v28;
      }
    }

    v64 = *(v75 + 16);

    v37 = v73[3];
    v38 = v73[4];
    __swift_project_boxed_opaque_existential_1(v73, v37);
    result = sub_231254598(v74 + v66, v37, v38);
    v39 = 0;
    v76 = *(result + 16);
    LODWORD(v74) = *MEMORY[0x277D60E38];
    v40 = v72++;
    v73 = v40 + 13;
    v66 = MEMORY[0x277D84F90];
    v41 = v69;
    v75 = result;
    v70 = v13 + 16;
    v71 = v13;
    while (v76 != v39)
    {
      if (v39 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v69 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v42 = *(v13 + 72);
      (*(v13 + 16))(v41, result + v69 + v42 * v39, v12);
      v43 = v77;
      sub_231368060();
      v44 = v41;
      v46 = v78;
      v45 = v79;
      (*v73)(v78, v74, v79);
      v47 = sub_231368240();
      v48 = v12;
      v49 = *v72;
      (*v72)(v46, v45);
      v49(v43, v45);
      if (v47)
      {
        v50 = v42;
        v51 = v69;
        v52 = *v68;
        (*v68)(v67, v44, v48);
        v53 = v66;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v53;
        v12 = v48;
        v41 = v44;
        if ((v54 & 1) == 0)
        {
          v55 = *(v53 + 16);
          sub_2311F5BD4();
          v53 = v82;
        }

        v13 = v71;
        v56 = *(v53 + 16);
        v57 = v56 + 1;
        if (v56 >= *(v53 + 24) >> 1)
        {
          v69 = v56 + 1;
          sub_2311F5BD4();
          v57 = v69;
          v53 = v82;
        }

        ++v39;
        *(v53 + 16) = v57;
        v66 = v53;
        v52((v53 + v51 + v56 * v50), v67, v12);
        result = v75;
      }

      else
      {
        (*v81)(v44, v48);
        ++v39;
        v12 = v48;
        v13 = v71;
        v41 = v44;
        result = v75;
      }
    }

    v58 = *(v66 + 16);

    v59 = *(v80 + 16);
    v60 = __OFSUB__(v59, v64);
    v61 = v59 - v64;
    if (v60)
    {
      goto LABEL_30;
    }

    if (!__OFADD__(v61, v58))
    {
      return sub_231366E50();
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_2312E9AE8@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = sub_231368260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231369050();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_231368090();
  v13 = *(v72 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v72);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v61 = *(type metadata accessor for RankedCandidateSuggestion() + 28);
  v62 = a1;
  v21 = sub_231254598(a1 + v61, v19, v20);
  v22 = 0;
  v23 = *(v21 + 16);
  v76 = v13 + 16;
  v77 = v23;
  v75 = (v6 + 88);
  v74 = *MEMORY[0x277D60E30];
  v73 = (v13 + 8);
  v70 = (v6 + 96);
  v71 = (v6 + 8);
  v69 = *MEMORY[0x277D60BA0];
  v59 = (v13 + 32);
  v68 = MEMORY[0x277D84F90];
LABEL_2:
  v24 = v72;
  while (v77 != v22)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v26 = *(v13 + 72);
    (*(v13 + 16))(v18, v21 + v25 + v26 * v22, v24);
    sub_231368060();
    v27 = (*v75)(v9, v5);
    if (v27 == v74)
    {
      v28 = v5;
      (*v70)(v9, v5);
      v29 = sub_231367D80();
      v30 = *(v29 - 8);
      v31 = (*(v30 + 88))(v9, v29);
      if (v31 == v69)
      {
        (*(v30 + 96))(v9, v29);
        v33 = sub_231367020();
        (*(*(v33 - 8) + 8))(v9, v33);
        v34 = *v59;
        (*v59)(v60, v18, v72);
        v35 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v35;
        v58 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = *(v35 + 16);
          sub_2311F5BD4();
          v35 = v78;
        }

        v38 = *(v35 + 16);
        v39 = v38 + 1;
        if (v38 >= *(v35 + 24) >> 1)
        {
          v68 = v38 + 1;
          sub_2311F5BD4();
          v39 = v68;
          v35 = v78;
        }

        ++v22;
        *(v35 + 16) = v39;
        v68 = v35;
        v58((v35 + v25 + v38 * v26), v60, v72);
        v5 = v28;
        goto LABEL_2;
      }

      v32 = v72;
      (*v73)(v18, v72);
      (*(v30 + 8))(v9, v29);
      v5 = v28;
      v24 = v32;
    }

    else
    {
      (*v73)(v18, v24);
      (*v71)(v9, v5);
    }

    ++v22;
  }

  if (qword_280F7C920 == -1)
  {
    goto LABEL_16;
  }

LABEL_21:
  swift_once();
LABEL_16:
  v40 = sub_2313698C0();
  __swift_project_value_buffer(v40, qword_280F7C928);
  v42 = v63;
  v41 = v64;
  v43 = v65;
  (*(v64 + 16))(v63, v62 + v61, v65);
  v44 = v68;
  swift_retain_n();
  v45 = sub_2313698A0();
  v46 = sub_23136A3A0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v78 = v48;
    *v47 = 136315394;
    sub_2312EEB0C(&qword_27DD42EE8, MEMORY[0x277D61268]);
    v49 = sub_23136A8B0();
    v51 = v50;
    (*(v41 + 8))(v42, v43);
    v52 = sub_2311CFD58(v49, v51, &v78);
    v44 = v68;

    *(v47 + 4) = v52;
    *(v47 + 12) = 2048;
    v53 = *(v44 + 16);

    *(v47 + 14) = v53;

    _os_log_impl(&dword_2311CB000, v45, v46, "Suggestion %s found %ld previous hints", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x23192B930](v48, -1, -1);
    MEMORY[0x23192B930](v47, -1, -1);
  }

  else
  {

    (*(v41 + 8))(v42, v43);
  }

  v54 = v66;
  v55 = *(v44 + 16);

  v56 = *(v54 + 16);
  return sub_231366E50();
}

uint64_t sub_2312EA284(__int128 *a1, uint64_t a2, double a3)
{
  sub_2311D38A8(a1, v3 + 32);
  *(v3 + 16) = a3;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_2312EA2C4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v78 = a3;
  v5 = COERCE_DOUBLE(type metadata accessor for RankedCandidateSuggestion());
  v6 = *(*(*&v5 - 8) + 64);
  MEMORY[0x28223BE20](*&v5);
  v77 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_231368260();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  v92 = sub_231368090();
  v16 = *(v92 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v92);
  v79 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v94 = &v75 - v22;
  v23 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v75 = v5;
  v25 = *(*&v5 + 28);
  v76 = a1;
  v26 = sub_231254598(a1 + v25, v23, v24);
  v27 = 0;
  v85 = *(v26 + 16);
  v90 = v16 + 16;
  v93 = *MEMORY[0x277D60E30];
  v28 = (v9 + 104);
  v29 = (v9 + 8);
  v80 = (v16 + 32);
  v83 = v16;
  v87 = (v16 + 8);
  v86 = MEMORY[0x277D84F90];
  v82 = v26;
  while (1)
  {
    v30 = v27;
LABEL_3:
    if (v30 == v85)
    {
      break;
    }

    if (v30 >= *(v26 + 16))
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_25;
    }

    v31 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v32 = *(v83 + 72);
    v91 = v30 + 1;
    v88 = v32;
    v89 = v31;
    (*(v83 + 16))(v94, v26 + v31 + v32 * v30, v92);
    v33 = 0.0;
    v34 = v84[3];
    v35 = *(v34 + 16);
    do
    {
      if (v35 == *&v33)
      {
        (*v87)(v94, v92);
        v30 = v91;
        v26 = v82;
        goto LABEL_3;
      }

      v36 = sub_231367D80();
      *&v5 = *&v33 + 1;
      (*(*(v36 - 8) + 16))(v15, v34 + ((*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80)) + *(*(v36 - 8) + 72) * *&v33, v36);
      (*v28)(v15, v93, v8);
      sub_231368060();
      v37 = sub_231368240();
      v38 = *v29;
      (*v29)(v13, v8);
      v38(v15, v8);
      v33 = v5;
    }

    while ((v37 & 1) == 0);
    v39 = *v80;
    (*v80)(v81, v94, v92);
    v40 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = *(*&v40 + 16);
      sub_2311F5BD4();
      v40 = v95;
    }

    v43 = *(*&v40 + 16);
    if (v43 >= *(*&v40 + 24) >> 1)
    {
      sub_2311F5BD4();
      v40 = v95;
    }

    *(*&v40 + 16) = v43 + 1;
    v86 = v40;
    v39((*&v40 + v89 + v43 * v88), v81, v92);
    v26 = v82;
    v27 = v91;
  }

  v44 = *(*&v86 + 16);
  if (v44)
  {
    v95 = MEMORY[0x277D84F90];
    v45 = v86;
    sub_2311F5B90(0, v44, 0);
    *&v46 = v95;
    v47 = *&v45 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v48 = *(v83 + 72);
    v49 = *(v83 + 16);
    v29 = v77;
    do
    {
      v50 = v79;
      v51 = v92;
      v49(v79, v47, v92);
      sub_231368050();
      v53 = v52;
      (*v87)(v50, v51);
      v95 = *&v46;
      v55 = *(v46 + 16);
      v54 = *(v46 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_2311F5B90(v54 > 1, v55 + 1, 1);
        *&v46 = v95;
      }

      *(v46 + 16) = v55 + 1;
      *(v46 + 8 * v55 + 32) = v53;
      v47 += v48;
      --v44;
    }

    while (v44);
  }

  else
  {

    *&v46 = MEMORY[0x277D84F90];
    v29 = v77;
  }

  v5 = COERCE_DOUBLE(sub_2312EAB04(v46));
  LOBYTE(v13) = v56;

  if ((v13 & 1) == 0)
  {
    v57 = v84[8];
    __swift_project_boxed_opaque_existential_1(v84 + 4, v84[7]);
    sub_231368F20();
    v5 = v58 - v5;
  }

  if (qword_280F7C920 != -1)
  {
    goto LABEL_31;
  }

LABEL_25:
  v59 = sub_2313698C0();
  __swift_project_value_buffer(v59, qword_280F7C928);
  sub_2311E1984(v76, v29);
  v60 = sub_2313698A0();
  v61 = sub_23136A3A0();
  if (!os_log_type_enabled(v60, v61))
  {

    sub_2311E1928(v29);
    if (v13)
    {
      return sub_231366E50();
    }

    goto LABEL_27;
  }

  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v97[0] = v63;
  *v62 = 136315394;
  v64 = (v29 + *(*&v75 + 20));
  v65 = v64[4];
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  v66 = sub_231368320();
  v68 = v67;
  sub_2311E1928(v29);
  v69 = sub_2311CFD58(v66, v68, v97);

  *(v62 + 4) = v69;
  *(v62 + 12) = 2080;
  v95 = v5;
  v96 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44820, &qword_231376298);
  v70 = sub_23136A010();
  v72 = sub_2311CFD58(v70, v71, v97);

  *(v62 + 14) = v72;
  _os_log_impl(&dword_2311CB000, v60, v61, "Suggestion %s found a previous hint %s", v62, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x23192B930](v63, -1, -1);
  MEMORY[0x23192B930](v62, -1, -1);

  if ((v13 & 1) == 0)
  {
LABEL_27:
    v73 = v84[2];
  }

  return sub_231366E50();
}

uint64_t sub_2312EAB04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2312EAB90@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a3;
  v78 = sub_231368260();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v78);
  v75 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v57 - v9;
  v10 = type metadata accessor for RankedCandidateSuggestion();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231368090();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v64 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v58 = v10;
  v22 = *(v10 + 28);
  v60 = a1;
  v23 = sub_231254598(a1 + v22, v20, v21);
  v24 = 0;
  v79 = *(v23 + 16);
  v74 = v14 + 16;
  v73 = *MEMORY[0x277D607E0];
  v72 = *MEMORY[0x277D60BA0];
  v71 = *MEMORY[0x277D60E30];
  v69 = (v5 + 8);
  v70 = (v5 + 104);
  v66 = (v14 + 8);
  v76 = v14;
  v63 = (v14 + 32);
  v65 = MEMORY[0x277D84F90];
  v68 = v23;
  v25 = v78;
  while (v79 != v24)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v67 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v26 = *(v76 + 72);
    (*(v76 + 16))(v19, v23 + v67 + v26 * v24, v13);
    v27 = v13;
    v28 = v77;
    sub_231368060();
    v29 = sub_231367020();
    v30 = v24;
    v31 = v75;
    (*(*(v29 - 8) + 104))(v75, v73, v29);
    v32 = sub_231367D80();
    (*(*(v32 - 8) + 104))(v31, v72, v32);
    (*v70)(v31, v71, v25);
    v33 = sub_231368240();
    v34 = *v69;
    (*v69)(v31, v25);
    v34(v28, v25);
    if (v33)
    {
      v35 = v26;
      v36 = v67;
      v59 = *v63;
      v59(v64, v19, v27);
      v37 = v65;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v37;
      v13 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v37 + 16);
        sub_2311F5BD4();
        v37 = v80;
      }

      v23 = v68;
      v40 = *(v37 + 16);
      if (v40 >= *(v37 + 24) >> 1)
      {
        sub_2311F5BD4();
        v37 = v80;
      }

      v24 = v30 + 1;
      *(v37 + 16) = v40 + 1;
      v65 = v37;
      v59((v37 + v36 + v40 * v35), v64, v13);
    }

    else
    {
      (*v66)(v19, v27);
      v24 = v30 + 1;
      v13 = v27;
      v23 = v68;
    }
  }

  if (qword_280F7C920 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  swift_once();
LABEL_12:
  v41 = sub_2313698C0();
  __swift_project_value_buffer(v41, qword_280F7C928);
  v42 = v61;
  sub_2311E1984(v60, v61);
  v43 = v65;
  swift_retain_n();
  v44 = sub_2313698A0();
  v45 = sub_23136A3A0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v80 = v47;
    *v46 = 136315394;
    v48 = (v42 + *(v58 + 20));
    v49 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v50 = sub_231368320();
    v52 = v51;
    sub_2311E1928(v42);
    v53 = sub_2311CFD58(v50, v52, &v80);

    *(v46 + 4) = v53;
    *(v46 + 12) = 2048;
    v54 = *(v43 + 16);

    *(v46 + 14) = v54;

    _os_log_impl(&dword_2311CB000, v44, v45, "Suggestion %s was spoken %ld time(s) before", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x23192B930](v47, -1, -1);
    MEMORY[0x23192B930](v46, -1, -1);
  }

  else
  {

    sub_2311E1928(v42);
  }

  v55 = *(v43 + 16);

  return sub_231366E50();
}

uint64_t sub_2312EB298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v5 = sub_2313698C0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v84 = v7;
  v85 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v74 - v13;
  v14 = sub_231368BC0();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v79 = v16;
  v80 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v74 - v24;
  v82 = sub_231368600();
  v26 = OUTLINED_FUNCTION_0_0(v82);
  v76 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_23();
  v75 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED0, &unk_23136B7C0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v74 - v33;
  v35 = sub_2313689A0();
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_23();
  v42 = v41;
  v43 = (a1 + *(type metadata accessor for RankedCandidateSuggestion() + 20));
  v44 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v45 = sub_231368320();
  sub_2311CF324(a2, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF8, &unk_23136B7F0);
  v46 = swift_dynamicCast();
  v83 = v45;
  if (v46)
  {
    v74 = v38;
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    sub_231368E80();
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
    {
      v47 = v74;
      v48 = v42;
      (*(v74 + 32))(v42, v34, v35);
      sub_231368990();
      v49 = v82;
      if (__swift_getEnumTagSinglePayload(v25, 1, v82) == 1)
      {
        v50 = v35;
        sub_231228E9C(v25, &qword_27DD42ED8, &qword_23136EBD0);
        v51 = v81;
        sub_2313690F0();
        sub_231369EE0();
        v52 = sub_2313698A0();
        v53 = sub_23136A3A0();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v88 = v55;
          v56 = OUTLINED_FUNCTION_4_23(4.8149e-34);

          *(v54 + 4) = v56;
          OUTLINED_FUNCTION_5_24(&dword_2311CB000, v57, v58, "config for suggestion - %s is not having enable/disable info - suggestion is to be considered enabled");
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();
        }

        else
        {
        }

        (*(v84 + 8))(v51, v85);
        OUTLINED_FUNCTION_1_36();
        return (*(v74 + 8))(v48, v50);
      }

      else
      {
        v85 = v35;

        v84 = v42;
        v67 = v76;
        v68 = v75;
        (*(v76 + 32))(v75, v25, v49);
        v69 = v77;
        sub_2313685E0();
        v71 = v78;
        v70 = v79;
        v72 = v80;
        (*(v79 + 104))(v78, *MEMORY[0x277D61118], v80);
        sub_231312274(v69, v71);
        v73 = *(v70 + 8);
        v73(v71, v72);
        v73(v69, v72);
        OUTLINED_FUNCTION_1_36();
        (*(v67 + 8))(v68, v49);
        return (*(v47 + 8))(v84, v85);
      }
    }
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_231228E9C(&v88, &qword_27DD42F00, &qword_2313762B0);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
  }

  sub_231228E9C(v34, &qword_27DD42ED0, &unk_23136B7C0);
  sub_2313690F0();
  sub_231369EE0();
  v59 = sub_2313698A0();
  v60 = sub_23136A3A0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v88 = v62;
    v63 = OUTLINED_FUNCTION_4_23(4.8149e-34);

    *(v61 + 4) = v63;
    OUTLINED_FUNCTION_5_24(&dword_2311CB000, v64, v65, "did not find config details for suggestion - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  (*(v84 + 8))(v12, v85);
  return OUTLINED_FUNCTION_1_36();
}

uint64_t sub_2312EBA6C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v128 = a2;
  v106 = a3;
  v125 = sub_231368260();
  v127 = *(v125 - 8);
  v4 = *(v127 + 64);
  v5 = MEMORY[0x28223BE20](v125);
  v124 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v123 = &v101 - v7;
  v108 = sub_231368090();
  v126 = *(v108 - 8);
  v8 = *(v126 + 64);
  v9 = MEMORY[0x28223BE20](v108);
  v107 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v101 - v12;
  MEMORY[0x28223BE20](v11);
  v109 = &v101 - v13;
  v14 = sub_231367D80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v115 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v101 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v101 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v101 - v31;
  v33 = (a1 + *(type metadata accessor for RankedCandidateSuggestion() + 20));
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v35 = v22;
  sub_2313682C0();
  v36 = *MEMORY[0x277D607E0];
  v37 = sub_231367020();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v122 = v36;
  v120 = v39;
  v121 = v37;
  v119 = v38 + 104;
  (v39)(v30, v36);
  v40 = *(v15 + 104);
  v118 = *MEMORY[0x277D60BA0];
  v116 = v40;
  v117 = v15 + 104;
  v40(v30);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v14);
  v41 = *(v19 + 56);
  sub_2312EEA0C(v32, v35);
  sub_2312EEA0C(v30, v35 + v41);
  if (__swift_getEnumTagSinglePayload(v35, 1, v14) == 1)
  {
    sub_231228E9C(v30, &qword_27DD42F18, &unk_23136B810);
    sub_231228E9C(v32, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(v35 + v41, 1, v14) == 1)
    {
      sub_231228E9C(v35, &qword_27DD42F18, &unk_23136B810);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2312EEA0C(v35, v27);
  if (__swift_getEnumTagSinglePayload(v35 + v41, 1, v14) == 1)
  {
    sub_231228E9C(v30, &qword_27DD42F18, &unk_23136B810);
    sub_231228E9C(v32, &qword_27DD42F18, &unk_23136B810);
    (*(v15 + 8))(v27, v14);
LABEL_6:
    sub_231228E9C(v35, &qword_27DD437F0, &unk_23136DFE0);
LABEL_7:
    v42 = v105[2];
    v43 = v105[3];
    sub_231369EE0();
    return sub_231366E50();
  }

  v44 = v115;
  (*(v15 + 32))(v115, v35 + v41, v14);
  sub_2312EEB0C(&qword_280F7CA50, MEMORY[0x277D60BA8]);
  v114 = sub_231369F60();
  v45 = *(v15 + 8);
  v45(v44, v14);
  sub_231228E9C(v30, &qword_27DD42F18, &unk_23136B810);
  sub_231228E9C(v32, &qword_27DD42F18, &unk_23136B810);
  v45(v27, v14);
  sub_231228E9C(v35, &qword_27DD42F18, &unk_23136B810);
  if ((v114 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v46 = v128[3];
  v47 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v46);
  v48 = sub_2312546AC(v46, v47);
  v49 = 0;
  v115 = *(v48 + 16);
  v128 = (v126 + 16);
  v114 = *MEMORY[0x277D60E30];
  v112 = (v127 + 8);
  v113 = (v127 + 104);
  v127 = v126 + 8;
  v102 = (v126 + 32);
  v103 = MEMORY[0x277D84F90];
  v50 = v108;
  v51 = v109;
  v111 = v48;
  v110 = v14;
  while (v115 != v49)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v109 = ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v52 = *(v126 + 72);
    (*(v126 + 16))(v51, &v109[v48 + v52 * v49], v50);
    v53 = v123;
    v54 = v49;
    sub_231368060();
    v55 = v51;
    v56 = v124;
    v120(v124, v122, v121);
    v116(v56, v118, v14);
    v57 = v125;
    (*v113)(v56, v114, v125);
    v58 = sub_231368240();
    v59 = v50;
    v60 = *v112;
    (*v112)(v56, v57);
    v60(v53, v57);
    if (v58)
    {
      v61 = v52;
      v62 = v109;
      v101 = v54;
      v63 = *v102;
      (*v102)(v104, v55, v59);
      v64 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v64;
      v50 = v59;
      v51 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = *(v64 + 16);
        sub_2311F5BD4();
        v64 = v129;
      }

      v14 = v110;
      v48 = v111;
      v67 = v101;
      v68 = *(v64 + 16);
      v69 = v68 + 1;
      if (v68 >= *(v64 + 24) >> 1)
      {
        sub_2311F5BD4();
        v69 = v68 + 1;
        v67 = v101;
        v64 = v129;
      }

      v49 = v67 + 1;
      *(v64 + 16) = v69;
      v103 = v64;
      v63(&v62[v64 + v68 * v61], v104, v50);
    }

    else
    {
      (*v127)(v55, v59);
      v49 = v54 + 1;
      v50 = v59;
      v14 = v110;
      v51 = v55;
      v48 = v111;
    }
  }

  if (qword_280F7C920 == -1)
  {
    goto LABEL_20;
  }

LABEL_37:
  swift_once();
LABEL_20:
  v70 = sub_2313698C0();
  __swift_project_value_buffer(v70, qword_280F7C928);
  v71 = v103;

  v72 = sub_2313698A0();
  v73 = sub_23136A3A0();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134217984;
    *(v74 + 4) = *(v71 + 16);

    _os_log_impl(&dword_2311CB000, v72, v73, "Found %ld previous spoken suggestions", v74, 0xCu);
    MEMORY[0x23192B930](v74, -1, -1);
  }

  else
  {
  }

  v75 = *(v71 + 16);
  if (v75)
  {
    v129 = MEMORY[0x277D84F90];
    sub_2311F5B90(0, v75, 0);
    v76 = v129;
    v77 = v71 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v78 = *(v126 + 72);
    v79 = *(v126 + 16);
    do
    {
      v80 = v107;
      v81 = v108;
      v79(v107, v77, v108);
      sub_231368050();
      v83 = v82;
      (*v127)(v80, v81);
      v129 = v76;
      v85 = *(v76 + 16);
      v84 = *(v76 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_2311F5B90(v84 > 1, v85 + 1, 1);
        v76 = v129;
      }

      *(v76 + 16) = v85 + 1;
      *(v76 + 8 * v85 + 32) = v83;
      v77 += v78;
      --v75;
    }

    while (v75);
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  sub_2312EAB04(v76);
  v87 = v86;

  if (v87)
  {
    v88 = v105[2];
    v89 = v105[3];
    sub_231369EE0();
  }

  else
  {
    v90 = v105[8];
    __swift_project_boxed_opaque_existential_1(v105 + 4, v105[7]);
    sub_231368F20();
    v91 = sub_2313698A0();
    v92 = sub_23136A3A0();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v129 = v94;
      *v93 = 136315138;
      v95 = sub_23136A2F0();
      v97 = sub_2311CFD58(v95, v96, &v129);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_2311CB000, v91, v92, "Seconds since previous spokenHint %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x23192B930](v94, -1, -1);
      MEMORY[0x23192B930](v93, -1, -1);
    }

    v98 = v105[2];
    v99 = v105[3];
    sub_231369EE0();
  }

  return sub_231366E50();
}

uint64_t sub_2312EC74C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2312EC7E0(__int128 *a1, double a2)
{
  strcpy((v2 + 16), "usedRecently");
  *(v2 + 29) = 0;
  *(v2 + 30) = -5120;
  sub_2311D38A8(a1, v2 + 32);
  *(v2 + 72) = a2;
  return v2;
}

uint64_t sub_2312EC830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *(v3 + 64);
  __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
  sub_231368F20();
  v9 = v8;
  v10 = *(v3 + 72);
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v12 = (a1 + *(type metadata accessor for RankedCandidateSuggestion() + 20));
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v14 = sub_231368320();
  *&v16 = COERCE_DOUBLE(sub_231254074(v14, v15));
  LOBYTE(a3) = v17;

  if (a3)
  {
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v18 = sub_2313698C0();
    __swift_project_value_buffer(v18, qword_280F7C928);
    v19 = sub_2313698A0();
    v20 = sub_23136A3A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2311CB000, v19, v20, "[RecentUsagePolicy] suggestion does not have appId, skipping", v21, 2u);
LABEL_10:
      MEMORY[0x23192B930](v21, -1, -1);
    }
  }

  else
  {
    v22 = v9 - v10;
    v23 = *&v16;
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v24 = sub_2313698C0();
    __swift_project_value_buffer(v24, qword_280F7C928);

    v19 = sub_2313698A0();
    v25 = sub_23136A3A0();

    if (os_log_type_enabled(v19, v25))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v10;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v22 <= v23;
      _os_log_impl(&dword_2311CB000, v19, v25, "[RecentUsagePolicy] suggestion seen in %f: isMeetingPolicy: %{BOOL}d", v21, 0x12u);
      goto LABEL_10;
    }
  }

  v26 = *(v4 + 16);
  v27 = *(v4 + 24);
  sub_231369EE0();

  return sub_231366E50();
}

uint64_t sub_2312ECB48(__int128 *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 2);
  *(v2 + 16) = 0xD00000000000002FLL;
  *(v2 + 24) = 0x8000000231380E40;
  sub_2311D38A8(a1, v2 + 32);
  *(v2 + 72) = v5;
  *(v2 + 88) = v3;
  return v2;
}

uint64_t sub_2312ECBAC@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v119 = a1;
  v108 = a2;
  v134 = sub_231368090();
  v4 = *(v134 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v134);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231367D80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v107 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v106 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v106 - v16;
  MEMORY[0x28223BE20](v15);
  v113 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44828, &qword_2313762B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v124 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v120 = &v106 - v23;
  v24 = v3[11];
  v25 = *(v24 + 64);
  v121 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v109 = (v26 + 63) >> 6;
  v126 = (v9 + 32);
  v127 = (v9 + 16);
  v114 = v9;
  v131 = (v9 + 8);
  v133 = v4 + 16;
  v111 = v4;
  v132 = (v4 + 8);
  v115 = v24;
  result = sub_231369EE0();
  v30 = 0;
  v130 = 0;
  *&v31 = 136315650;
  v110 = v31;
  v112 = v8;
  v122 = v17;
  v125 = v3;
  while (v28)
  {
    v32 = v17;
    v33 = v30;
LABEL_11:
    v129 = (v28 - 1) & v28;
    v35 = __clz(__rbit64(v28)) | (v33 << 6);
    v36 = v115;
    v37 = v114;
    v38 = v113;
    (*(v114 + 16))(v113, *(v115 + 48) + *(v114 + 72) * v35, v8);
    v39 = *(*(v36 + 56) + 8 * v35);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    v41 = *(v40 + 48);
    v42 = *(v37 + 32);
    v43 = v124;
    v42(v124, v38, v8);
    *(v43 + v41) = v39;
    v34 = v43;
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v40);
LABEL_12:
    v44 = v34;
    v45 = v120;
    sub_2312EEA7C(v44, v120);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {

      v89 = v125[2];
      v90 = v125[3];
      sub_231369EE0();
      return sub_231366E50();
    }

    v47 = *(v45 + *(v46 + 48));
    v17 = v32;
    (*v126)(v32, v45, v8);
    v48 = v119[3];
    v49 = v119[4];
    __swift_project_boxed_opaque_existential_1(v119, v48);
    v50 = sub_2312546AC(v48, v49);
    MEMORY[0x28223BE20](v50);
    *(&v106 - 2) = v32;
    v51 = v130;
    sub_231254C78(sub_2312EEAEC, (&v106 - 4), v52);
    v54 = v53;
    v130 = v51;
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v55 = sub_2313698C0();
    v56 = __swift_project_value_buffer(v55, qword_280F7C928);
    v57 = v118;
    v116 = *v127;
    v116(v118, v32, v8);
    v58 = v125;

    sub_231369EE0();
    v117 = v56;
    v59 = sub_2313698A0();
    v60 = sub_23136A3A0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v54;
      v62 = v8;
      v63 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v135[0] = v123;
      *v63 = v110;
      *(v63 + 4) = sub_2311CFD58(v58[2], v58[3], v135);
      *(v63 + 12) = 2048;
      *(v63 + 14) = *(v61 + 16);

      *(v63 + 22) = 2080;
      sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8]);
      v64 = sub_23136A8B0();
      v65 = v57;
      v67 = v66;
      v128 = *v131;
      v128(v65, v62);
      v68 = sub_2311CFD58(v64, v67, v135);

      *(v63 + 24) = v68;
      _os_log_impl(&dword_2311CB000, v59, v60, "[%s] Found %ld previous %s suggestions", v63, 0x20u);
      v69 = v123;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v69, -1, -1);
      v70 = v63;
      v8 = v62;
      v54 = v61;
      v17 = v122;
      MEMORY[0x23192B930](v70, -1, -1);
    }

    else
    {

      v128 = *v131;
      v128(v57, v8);
    }

    v71 = *(v54 + 16);
    if (v71)
    {
      v135[0] = MEMORY[0x277D84F90];
      sub_2311F5B90(0, v71, 0);
      v72 = v135[0];
      v73 = *(v111 + 80);
      v123 = v54;
      v74 = v54 + ((v73 + 32) & ~v73);
      v75 = *(v111 + 72);
      v76 = *(v111 + 16);
      do
      {
        v77 = v134;
        v76(v7, v74, v134);
        sub_231368050();
        v79 = v78;
        (*v132)(v7, v77);
        v135[0] = v72;
        v81 = *(v72 + 16);
        v80 = *(v72 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_2311F5B90(v80 > 1, v81 + 1, 1);
          v72 = v135[0];
        }

        *(v72 + 16) = v81 + 1;
        *(v72 + 8 * v81 + 32) = v79;
        v74 += v75;
        --v71;
      }

      while (v71);

      v58 = v125;
      v8 = v112;
      v17 = v122;
    }

    else
    {

      v72 = MEMORY[0x277D84F90];
    }

    v82 = COERCE_DOUBLE(sub_2312EAB04(v72));
    v84 = v83;

    v28 = v129;
    if ((v84 & 1) == 0)
    {
      v85 = v47 * 3600.0;
      v86 = v58[8];
      __swift_project_boxed_opaque_existential_1(v58 + 4, v58[7]);
      sub_231368F20();
      if (v85 >= v87 - v82)
      {
        v91 = v107;
        v116(v107, v17, v8);

        v92 = sub_2313698A0();
        v93 = sub_23136A3A0();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v135[0] = v95;
          *v94 = 134218498;
          *(v94 + 4) = v85;
          v96 = v91;
          *(v94 + 12) = 2080;
          sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8]);
          v97 = v93;
          v98 = sub_23136A8B0();
          v100 = v99;
          v101 = v128;
          v128(v96, v112);
          v102 = sub_2311CFD58(v98, v100, v135);
          v8 = v112;

          *(v94 + 14) = v102;
          *(v94 + 22) = 2080;
          *(v94 + 24) = sub_2311CFD58(v58[2], v58[3], v135);
          _os_log_impl(&dword_2311CB000, v92, v97, "Has not passed suppressionWindowPeriod %f since last %s suggestion. Returning false for policy %s", v94, 0x20u);
          swift_arrayDestroy();
          v103 = v95;
          v17 = v122;
          MEMORY[0x23192B930](v103, -1, -1);
          MEMORY[0x23192B930](v94, -1, -1);
        }

        else
        {

          v101 = v128;
          v128(v91, v8);
        }

        v104 = v58[2];
        v105 = v58[3];
        sub_231369EE0();
        sub_231366E50();

        return v101(v17, v8);
      }
    }

    result = (v128)(v17, v8);
  }

  v34 = v124;
  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v33 >= v109)
    {
      v32 = v17;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
      __swift_storeEnumTagSinglePayload(v34, 1, 1, v88);
      v129 = 0;
      goto LABEL_12;
    }

    v28 = *(v121 + 8 * v33);
    ++v30;
    if (v28)
    {
      v32 = v17;
      v30 = v33;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312ED734(uint64_t a1, uint64_t a2)
{
  v3 = sub_231368260();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_231368060();
  v11 = sub_231367D80();
  (*(*(v11 - 8) + 16))(v8, a2, v11);
  (*(v4 + 104))(v8, *MEMORY[0x277D60E30], v3);
  v12 = sub_231368240();
  v13 = *(v4 + 8);
  v13(v8, v3);
  v13(v10, v3);
  return v12 & 1;
}

void *sub_2312ED8C0()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[11];

  return v0;
}

uint64_t sub_2312ED8F0()
{
  sub_2312ED8C0();

  return swift_deallocClassInstance();
}

uint64_t sub_2312ED968(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = 0xD00000000000002ALL;
  *(v1 + 24) = 0x8000000231380E10;
  *(v1 + 32) = *a1;
  *(v1 + 48) = v2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2312ED998@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v103 = a1;
  v90 = a2;
  v2 = sub_231367D80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v89 = &v88 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v88 - v10;
  MEMORY[0x28223BE20](v9);
  v96 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44828, &qword_2313762B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v104 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = (&v88 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44838, &qword_2313762C8);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44840, &unk_2313762D0) - 8);
  v19 = *(*v18 + 72);
  v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23136B670;
  v22 = v21 + v20;
  v23 = v18[14];
  v24 = *MEMORY[0x277D607E0];
  v25 = sub_231367020();
  (*(*(v25 - 8) + 104))(v22, v24, v25);
  (*(v3 + 104))(v22, *MEMORY[0x277D60BA0], v2);
  *(v22 + v23) = 2;
  sub_2312EEB0C(&qword_280F7CA58, MEMORY[0x277D60BA8]);
  v26 = sub_231369EC0();
  v28 = 0;
  v30 = v26 + 64;
  v29 = *(v26 + 64);
  v97 = v3;
  v98 = v26;
  v31 = 1 << *(v26 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v106 = (v3 + 16);
  v107 = (v3 + 32);
  v101 = (v3 + 8);
  v102 = 0x800000023137DF00;
  *&v27 = 136315138;
  v92 = v27;
  v99 = v34;
  v100 = v26 + 64;
  v105 = v11;
  if ((v32 & v29) == 0)
  {
LABEL_5:
    v36 = v104;
    v37 = &qword_27DD44830;
    while (1)
    {
      v35 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v35 >= v34)
      {
        v48 = v2;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
        __swift_storeEnumTagSinglePayload(v36, 1, 1, v68);
        v33 = 0;
        goto LABEL_11;
      }

      v33 = *(v30 + 8 * v35);
      ++v28;
      if (v33)
      {
        v28 = v35;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  while (1)
  {
    v35 = v28;
LABEL_10:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v35 << 6);
    v41 = v97;
    v40 = v98;
    v42 = v96;
    (*(v97 + 16))(v96, *(v98 + 48) + *(v97 + 72) * v39, v2);
    v43 = *(*(v40 + 56) + 8 * v39);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    v45 = *(v44 + 48);
    v46 = *(v41 + 32);
    v36 = v104;
    v47 = v42;
    v48 = v2;
    v46(v104, v47, v2);
    *(v36 + v45) = v43;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v44);
LABEL_11:
    v49 = v108;
    sub_2312EEA7C(v36, v108);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
    {

      v69 = *(v91 + 16);
      v70 = *(v91 + 24);
      sub_231369EE0();
      return sub_231366E50();
    }

    v37 = *(v108 + *(v50 + 48));
    v2 = v48;
    (*v107)(v11);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_23136A650();

    v110 = 0xD000000000000020;
    v111 = v102;
    v51 = sub_231367D40();
    MEMORY[0x23192A730](v51);

    v52 = v110;
    v53 = v111;
    v54 = v103[3];
    v55 = v103[4];
    __swift_project_boxed_opaque_existential_1(v103, v54);
    (*(v55 + 8))(&v110, v52, v53, v54, v55);

    if (!v112)
    {
      sub_231228E9C(&v110, &qword_27DD443C0, &unk_23136E000);
LABEL_18:
      v11 = v105;
      v56 = v95;
      if (qword_280F7C920 != -1)
      {
        swift_once();
      }

      v57 = sub_2313698C0();
      __swift_project_value_buffer(v57, qword_280F7C928);
      (*v106)(v56, v11, v2);
      v58 = sub_2313698A0();
      v59 = sub_23136A3A0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v110 = v94;
        *v60 = v92;
        sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8]);
        v61 = sub_23136A8B0();
        v62 = v56;
        v64 = v63;
        v93 = *v101;
        v93(v62, v2);
        v65 = sub_2311CFD58(v61, v64, &v110);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_2311CB000, v58, v59, "Not able to get the siriInitiatedActionCount, likely because Siri has not delivered with vehicle %s before. Continuing", v60, 0xCu);
        v66 = v94;
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
        v11 = v105;
        MEMORY[0x23192B930](v66, -1, -1);
        MEMORY[0x23192B930](v60, -1, -1);

        v93(v11, v2);
      }

      else
      {

        v67 = *v101;
        (*v101)(v56, v2);
        v67(v11, v2);
      }

      goto LABEL_23;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v11 = (v109 - 1);
    if (__OFSUB__(v109, 1))
    {
      goto LABEL_33;
    }

    if (v11 < v37)
    {
      break;
    }

    v11 = v105;
    (*v101)(v105, v2);
LABEL_23:
    v34 = v99;
    v30 = v100;
    if (!v33)
    {
      goto LABEL_5;
    }
  }

  if (qword_280F7C920 != -1)
  {
LABEL_34:
    swift_once();
  }

  v72 = sub_2313698C0();
  __swift_project_value_buffer(v72, qword_280F7C928);
  v73 = v89;
  (*v106)(v89, v105, v2);
  v74 = v91;

  v75 = sub_2313698A0();
  v76 = sub_23136A3A0();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v110 = v108;
    *v77 = 136315906;
    sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8]);
    v78 = sub_23136A8B0();
    v79 = v73;
    v81 = v80;
    v82 = *v101;
    (*v101)(v79, v2);
    v83 = sub_2311CFD58(v78, v81, &v110);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2048;
    *(v77 + 14) = v11;
    *(v77 + 22) = 2048;
    *(v77 + 24) = v37;
    *(v77 + 32) = 2080;
    *(v77 + 34) = sub_2311CFD58(*(v91 + 16), *(v91 + 24), &v110);
    _os_log_impl(&dword_2311CB000, v75, v76, "Siri initiated actions count since last %s (not including current instance) is %ld, which is less than %ld.\nReturning false for policy %s", v77, 0x2Au);
    v84 = v108;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v84, -1, -1);
    v85 = v77;
    v74 = v91;
    MEMORY[0x23192B930](v85, -1, -1);
  }

  else
  {

    v82 = *v101;
    (*v101)(v73, v2);
  }

  v86 = *(v74 + 16);
  v87 = *(v74 + 24);
  sub_231369EE0();
  sub_231366E50();

  return (v82)(v105, v2);
}

uint64_t sub_2312EE4A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_2312EE4C8()
{
  sub_2312EE4A0();

  return swift_deallocClassInstance();
}

uint64_t sub_2312EE540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = *(v3 + 32);
  v7 = sub_2313697F0();
  v9 = v8;
  v10 = *(type metadata accessor for RankedCandidateSuggestion() + 20);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  sub_231330C6C(v11, v12);
  v13 = COERCE_DOUBLE(sub_231369810());
  LOBYTE(v11) = v14;

  if (v11)
  {
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v15 = sub_2313698C0();
    __swift_project_value_buffer(v15, qword_280F7C928);

    sub_231369EE0();
    v16 = sub_2313698A0();
    v17 = sub_23136A3A0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2311CFD58(*(v4 + 16), *(v4 + 24), v30);
      *(v18 + 12) = 2080;
      v20 = sub_2311CFD58(v7, v9, v30);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_2311CB000, v16, v17, "%s failed to get score from engagement estimator with model %s, returning true", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v19, -1, -1);
      MEMORY[0x23192B930](v18, -1, -1);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v24 = *(v4 + 40);
  if (qword_280F7C920 != -1)
  {
    swift_once();
  }

  v25 = sub_2313698C0();
  __swift_project_value_buffer(v25, qword_280F7C928);

  sub_231369EE0();
  v16 = sub_2313698A0();
  v26 = sub_23136A3A0();

  if (!os_log_type_enabled(v16, v26))
  {
LABEL_6:

    goto LABEL_7;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v30[0] = v28;
  *v27 = 136316162;
  *(v27 + 4) = sub_2311CFD58(*(v4 + 16), *(v4 + 24), v30);
  *(v27 + 12) = 2080;
  v29 = sub_2311CFD58(v7, v9, v30);

  *(v27 + 14) = v29;
  *(v27 + 22) = 2048;
  *(v27 + 24) = v13;
  *(v27 + 32) = 2048;
  *(v27 + 34) = v24;
  *(v27 + 42) = 1024;
  *(v27 + 44) = v24 < v13;
  _os_log_impl(&dword_2311CB000, v16, v26, "%s using model %s score: %f > threshold: %f? %{BOOL}d", v27, 0x30u);
  swift_arrayDestroy();
  MEMORY[0x23192B930](v28, -1, -1);
  MEMORY[0x23192B930](v27, -1, -1);
LABEL_7:

  v22 = *(v4 + 16);
  v21 = *(v4 + 24);
  sub_231369EE0();

  return sub_231366E50();
}

uint64_t sub_2312EE96C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2312EE994()
{
  sub_2312EE96C();

  return swift_deallocClassInstance();
}

uint64_t sub_2312EEA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312EEA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44828, &qword_2313762B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312EEB0C(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_5_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2312EEB78(uint64_t *a1)
{
  v2 = *(sub_231367B30() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65EC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2312EF800(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2312EEC38(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = sub_2312F0B88(0, result, v5);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_2312F0AD8(0, v7, a2, a3);
      OUTLINED_FUNCTION_1_37();
      return OUTLINED_FUNCTION_2_24();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312EECB4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23136A070();
    sub_23136A0F0();
    OUTLINED_FUNCTION_1_37();
    return OUTLINED_FUNCTION_2_24();
  }

  return result;
}

uint64_t sub_2312EED54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_0_34();
  *(v0 + 64) = sub_2312EF7B8(v2, 255, v3);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  return v0;
}

uint64_t sub_2312EEE20(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = sub_2313698C0();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312EEF18, 0, 0);
}

uint64_t sub_2312EEF18()
{
  v35 = v0;
  v1 = v0[20];
  v2 = v0[15];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_2313683D0();
  sub_231369150();
  sub_231369EE0();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];
  if (v7)
  {
    v33 = v0[20];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136315138;
    v13 = sub_231367B30();
    v14 = MEMORY[0x23192A860](v4, v13);
    v16 = sub_2311CFD58(v14, v15, v34);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2311CB000, v5, v6, "Apps on-screen: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23192B930](v12, -1, -1);
    MEMORY[0x23192B930](v11, -1, -1);

    (*(v8 + 8))(v33, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v34[0] = v4;
  sub_231369EE0();
  sub_2312EEB78(v34);

  v17 = sub_2312EEC38(1, v34[0], MEMORY[0x277D60AA0]);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (v22)
  {
    sub_23136A930();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);

    if (__OFSUB__(v23 >> 1, v21))
    {
      __break(1u);
    }

    else if (v25 == (v23 >> 1) - v21)
    {
      v26 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v26)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  sub_2312593AC(v17, v19, v21, v23);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v27 = v0[16];
  v0[21] = sub_23136A1F0();

  sub_2311CF324(v27 + 16, (v0 + 2));
  type metadata accessor for FallbackSignalHelper();
  v0[22] = swift_initStackObject();
  sub_231369EE0();
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_2312EF28C;
  OUTLINED_FUNCTION_7();

  return sub_2312C4274(v29, v30);
}

uint64_t sub_2312EF28C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_2312EF38C, 0, 0);
}

void sub_2312EF38C()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_23136A6C0();
    sub_2313692F0();
    v24 = *MEMORY[0x277D60B50];
    v3 = sub_231367D20();
    OUTLINED_FUNCTION_0_34();
    v6 = sub_2312EF7B8(v4, 255, v5);
    v7 = (v1 + 40);
    do
    {
      v8 = v0[24];
      v9 = v0[17];
      v10 = *(v7 - 1);
      v11 = *v7;
      v0[10] = v3;
      v0[11] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, v24, v3);
      sub_231369EE0();
      sub_2312C3FA0(v10, v11);
      sub_231367B70();
      v13 = sub_231367B80();
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
      sub_231369220();
      sub_23136A6A0();
      v14 = *(v25 + 16);
      sub_23136A6D0();
      sub_23136A6E0();
      sub_23136A6B0();
      v7 += 2;
      --v2;
    }

    while (v2);
    v15 = v0[24];
    v16 = v0[21];
  }

  else
  {
    v17 = v0[24];
    v18 = v0[21];
  }

  v19 = v0[20];
  v20 = v0[17];

  v21 = v0[1];
  OUTLINED_FUNCTION_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2312EF5B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2312EF624(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23120B320;

  return sub_2312EEE20(v6, a2);
}

void sub_2312EF6BC(uint64_t a1, uint64_t a2)
{
  sub_2312EF7B8(qword_280F815F0, a2, type metadata accessor for OpenAppSignalExtractor);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312EF7B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2312EF800(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231367B30();
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231367B30() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2312EFBC8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2312EF930(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312EF930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_231367B30();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v41 = v20;
      v42 = a3;
      v39 = v22;
      v40 = v21;
      v23 = v21;
      v24 = v20;
      do
      {
        v25 = v49;
        v26 = v47;
        v47(v49, v22, v8);
        v27 = v50;
        v26(v50, v24, v8);
        sub_231367B10();
        v29 = v28;
        sub_231367B10();
        v31 = v30;
        v32 = *v19;
        (*v19)(v27, v8);
        result = v32(v25, v8);
        if (v31 >= v29)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v33 = *v44;
        v34 = v46;
        (*v44)(v46, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v33)(v24, v34, v8);
        v24 += v43;
        v22 += v43;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v42 + 1;
      v20 = v41 + v37;
      v21 = v40 - 1;
      v22 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2312EFBC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v6 = sub_231367B30();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v134 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v144 = &v129 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v129 - v13;
  MEMORY[0x28223BE20](v12);
  v149 = &v129 - v15;
  v139 = v14;
  v140 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_103:
    v150 = *v131;
    if (!v150)
    {
      goto LABEL_145;
    }

    a3 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v142;
    if (isUniquelyReferenced_nonNull_native)
    {
      v121 = a3;
LABEL_106:
      a3 = (v121 + 16);
      v122 = *(v121 + 2);
      while (v122 >= 2)
      {
        if (!*v140)
        {
          goto LABEL_142;
        }

        v123 = v121;
        v124 = &v121[16 * v122];
        v125 = *v124;
        v126 = a3 + 16 * v122;
        v127 = *(v126 + 8);
        sub_2312F05A8(&(*v140)[*(v139 + 72) * *v124], &(*v140)[*(v139 + 72) * *v126], &(*v140)[*(v139 + 72) * v127], v150);
        if (v17)
        {
          break;
        }

        if (v127 < v125)
        {
          goto LABEL_130;
        }

        if (v122 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v124 = v125;
        *(v124 + 1) = v127;
        v128 = *a3 - v122;
        if (*a3 < v122)
        {
          goto LABEL_132;
        }

        v122 = *a3 - 1;
        sub_2311E6448((v126 + 16), v128, v126);
        *a3 = v122;
        v121 = v123;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v121 = sub_2311E6430(a3);
    goto LABEL_106;
  }

  v129 = a4;
  v17 = 0;
  v147 = (v14 + 8);
  v148 = v14 + 16;
  v146 = (v14 + 32);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v20 = v19;
      v21 = *(v14 + 72);
      v22 = &(*v140)[v21 * v17];
      v145 = *v140;
      v23 = v145;
      v24 = *(v14 + 16);
      v25 = v149;
      v138 = v18;
      v141 = v16;
      v24(v149, &v145[v21 * v17], v6);
      v26 = &v23[v21 * v19];
      v27 = v150;
      v137 = v24;
      v24(v150, v26, v6);
      sub_231367B10();
      v29 = v28;
      sub_231367B10();
      v31 = v30;
      v32 = *(v139 + 8);
      v33 = v27;
      a3 = v147;
      v32(v33, v6);
      v136 = v32;
      v32(v25, v6);
      v34 = v141;
      v18 = v138;
      v130 = v20;
      v35 = v20 + 2;
      v143 = v21;
      v36 = &v145[v21 * (v20 + 2)];
      while (1)
      {
        v37 = v35;
        v38 = v17 + 1;
        if (v38 >= v34)
        {
          break;
        }

        LODWORD(v145) = v31 < v29;
        v39 = v149;
        v40 = v137;
        (v137)(v149, v36, v6, v18);
        v41 = v38;
        v42 = v150;
        v40(v150, v22, v6);
        sub_231367B10();
        v44 = v43;
        sub_231367B10();
        v46 = v45;
        v47 = v42;
        v17 = v41;
        a3 = v147;
        v48 = v136;
        (v136)(v47, v6);
        v48(v39, v6);
        v34 = v141;
        v18 = v138;
        v36 = &v143[v36];
        v22 += v143;
        v35 = v37 + 1;
        if (((v145 ^ (v46 >= v44)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v17 = v34;
LABEL_9:
      if (v31 >= v29)
      {
        v14 = v139;
      }

      else
      {
        v19 = v130;
        if (v17 < v130)
        {
          goto LABEL_136;
        }

        if (v130 >= v17)
        {
          v14 = v139;
          goto LABEL_32;
        }

        if (v34 >= v37)
        {
          v49 = v37;
        }

        else
        {
          v49 = v34;
        }

        a3 = v143 * (v49 - 1);
        v50 = v130;
        v51 = v143 * v49;
        v52 = v130 * v143;
        v53 = v17;
        do
        {
          if (v50 != --v53)
          {
            v54 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            v145 = *v146;
            (v145)(v134, &v54[v52], v6, v18);
            v55 = v52 < a3 || &v54[v52] >= &v54[v51];
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v145)(&v54[a3], v134, v6);
          }

          ++v50;
          a3 -= v143;
          v51 -= v143;
          v52 += v143;
        }

        while (v50 < v53);
        v18 = v138;
        v14 = v139;
      }

      v19 = v130;
    }

LABEL_32:
    v56 = v140[1];
    if (v17 < v56)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_135;
      }

      if (v17 - v19 < v129)
      {
        break;
      }
    }

LABEL_48:
    if (v17 < v19)
    {
      goto LABEL_134;
    }

    v75 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v75;
    }

    else
    {
      v117 = v75[2];
      sub_23126DB78();
      v18 = v118;
    }

    a3 = v18[2];
    v76 = a3 + 1;
    if (a3 >= v18[3] >> 1)
    {
      sub_23126DB78();
      v18 = v119;
    }

    v18[2] = v76;
    v77 = v18 + 4;
    v78 = &v18[2 * a3 + 4];
    *v78 = v19;
    v78[1] = v17;
    v145 = *v131;
    if (!v145)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v141 = v17;
      while (1)
      {
        v79 = v76 - 1;
        v80 = &v77[2 * v76 - 2];
        v81 = &v18[2 * v76];
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = v18[4];
          v83 = v18[5];
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_69:
          if (v85)
          {
            goto LABEL_121;
          }

          v97 = *v81;
          v96 = v81[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = v80[1];
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_129;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v76 < 2)
        {
          goto LABEL_123;
        }

        v104 = *v81;
        v103 = v81[1];
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_84:
        if (v100)
        {
          goto LABEL_126;
        }

        v106 = *v80;
        v105 = v80[1];
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v107 < v99)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v79 - 1 >= v76)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v17 = v18;
        a3 = &v77[2 * v79 - 2];
        v111 = *a3;
        v112 = v79;
        v113 = &v77[2 * v79];
        v114 = *(v113 + 1);
        v115 = v142;
        sub_2312F05A8(&(*v140)[*(v139 + 72) * *a3], &(*v140)[*(v139 + 72) * *v113], &(*v140)[*(v139 + 72) * v114], v145);
        v142 = v115;
        if (v115)
        {
          goto LABEL_114;
        }

        if (v114 < v111)
        {
          goto LABEL_116;
        }

        v116 = *(v17 + 16);
        if (v112 > v116)
        {
          goto LABEL_117;
        }

        *a3 = v111;
        *(a3 + 8) = v114;
        if (v112 >= v116)
        {
          goto LABEL_118;
        }

        v76 = v116 - 1;
        sub_2311E6448(v113 + 16, v116 - 1 - v112, v113);
        v18 = v17;
        *(v17 + 16) = v116 - 1;
        v17 = v141;
        if (v116 <= 2)
        {
          goto LABEL_98;
        }
      }

      v86 = &v77[2 * v76];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_119;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_120;
      }

      v93 = v81[1];
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_122;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = v80[1];
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_133;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v14 = v139;
    v16 = v140[1];
    if (v17 >= v16)
    {
      goto LABEL_103;
    }
  }

  v57 = v19 + v129;
  if (__OFADD__(v19, v129))
  {
    goto LABEL_137;
  }

  if (v57 >= v56)
  {
    v57 = v140[1];
  }

  if (v57 < v19)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v17 == v57)
  {
    goto LABEL_48;
  }

  v138 = v18;
  v58 = *v140;
  v59 = *(v14 + 72);
  v145 = *(v14 + 16);
  v60 = &v58[v59 * (v17 - 1)];
  v61 = -v59;
  v130 = v19;
  v62 = (v19 - v17);
  v143 = v58;
  v132 = v59;
  v63 = &v58[v17 * v59];
  v133 = v57;
LABEL_41:
  v141 = v17;
  v135 = v63;
  v136 = v62;
  v137 = v60;
  while (1)
  {
    v64 = v149;
    v65 = v145;
    (v145)(v149, v63, v6);
    v66 = v150;
    v65(v150, v60, v6);
    sub_231367B10();
    v68 = v67;
    sub_231367B10();
    v70 = v69;
    v71 = *v147;
    (*v147)(v66, v6);
    v72 = v64;
    a3 = v6;
    v71(v72, v6);
    if (v70 >= v68)
    {
LABEL_46:
      v17 = v141 + 1;
      v60 = &v137[v132];
      v62 = v136 - 1;
      v63 = &v135[v132];
      if (v141 + 1 == v133)
      {
        v17 = v133;
        v18 = v138;
        v19 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    v73 = *v146;
    v74 = v144;
    (*v146)(v144, v63, v6);
    swift_arrayInitWithTakeFrontToBack();
    v73(v60, v74, v6);
    v60 += v61;
    v63 += v61;
    v55 = __CFADD__(v62++, 1);
    if (v55)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_2312F05A8(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v61 = a4;
  v8 = sub_231367B30();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v66 = v57 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v16;
  v70 = a1;
  v69 = v61;
  v64 = (v13 + 8);
  v65 = (v13 + 16);
  v21 = v18 / v16;
  v57[1] = v4;
  if (v20 >= v18 / v16)
  {
    v62 = a1;
    sub_23126F71C(a2, v18 / v16, v61);
    v34 = v61;
    v35 = v61 + v21 * v16;
    v36 = -v16;
    v37 = v35;
    v59 = -v16;
LABEL_37:
    v63 = a2 + v36;
    v38 = a3;
    v57[0] = v37;
    v60 = a2;
    while (1)
    {
      if (v35 <= v34)
      {
        v70 = a2;
        v68 = v37;
        goto LABEL_59;
      }

      if (a2 <= v62)
      {
        break;
      }

      v58 = v37;
      v39 = v38 + v36;
      v40 = v35 + v36;
      v41 = v66;
      v42 = *v65;
      v43 = v35;
      (*v65)(v66, v35 + v36, v8);
      v44 = v67;
      v42(v67, v63, v8);
      sub_231367B10();
      v46 = v45;
      sub_231367B10();
      v48 = v47;
      v49 = *v64;
      (*v64)(v44, v8);
      v49(v41, v8);
      if (v48 < v46)
      {
        v53 = v38 < v60 || v39 >= v60;
        a3 = v38 + v36;
        if (v53)
        {
          v54 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v54;
          v37 = v58;
          v36 = v59;
          v34 = v61;
          v35 = v43;
        }

        else
        {
          v55 = v58;
          v36 = v59;
          v37 = v58;
          v56 = v63;
          v34 = v61;
          v35 = v43;
          a2 = v63;
          if (v38 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
            v35 = v43;
            v34 = v61;
            a2 = v56;
            v37 = v55;
          }
        }

        goto LABEL_37;
      }

      v50 = v38 < v43 || v39 >= v43;
      v51 = v38 + v36;
      v52 = v60;
      if (v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 += v36;
        v35 = v40;
        v37 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v52;
      }

      else
      {
        v37 = v40;
        v17 = v43 == v38;
        v38 += v36;
        v35 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v60;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v61;
          v38 = v51;
          v35 = v40;
          v37 = v40;
        }
      }
    }

    v70 = a2;
    v68 = v57[0];
  }

  else
  {
    v63 = a3;
    sub_23126F71C(a1, (a2 - a1) / v16, v61);
    v22 = v61;
    v62 = v61 + v20 * v16;
    v68 = v62;
    v23 = v67;
    while (v22 < v62 && a2 < v63)
    {
      v25 = v66;
      v26 = *v65;
      (*v65)(v66, a2, v8);
      v26(v23, v22, v8);
      sub_231367B10();
      v28 = v27;
      sub_231367B10();
      v30 = v29;
      v31 = *v64;
      (*v64)(v23, v8);
      v31(v25, v8);
      if (v30 >= v28)
      {
        if (a1 < v22 || a1 >= v22 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = v22 + v16;
        v22 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v70 = a1;
    }
  }

LABEL_59:
  sub_23120C4CC(&v70, &v69, &v68);
  return 1;
}

unint64_t sub_2312F0AD8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *(a4(0) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    return sub_231369EE0();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2312F0B88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2312F0BF4()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v3 + 8);
  sub_231367AD0();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  *(v2 + 16) = MEMORY[0x231929610](v5, v6);
  *(v2 + 24) = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[1];

  return v8(v2 | 0xA000000000000000);
}

uint64_t sub_2312F0CEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23120B320;

  return sub_2312F0BD4(v4, a2);
}

uint64_t sub_2312F0D80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44860, &qword_2313765E0);
  result = sub_231368700();
  qword_27DD4BA18 = result;
  return result;
}

uint64_t sub_2312F0DD8()
{
  OUTLINED_FUNCTION_8();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v1[29] = *v0;
  v6 = sub_231368180();
  v1[30] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[31] = v7;
  v9 = *(v8 + 64);
  v1[32] = OUTLINED_FUNCTION_43();
  v10 = sub_2313667A0();
  v1[33] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[34] = v11;
  v13 = *(v12 + 64);
  v1[35] = OUTLINED_FUNCTION_43();
  v14 = sub_2313673A0();
  v1[36] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[37] = v15;
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_43();
  v18 = sub_2313698C0();
  v1[39] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[40] = v19;
  v21 = *(v20 + 64);
  v1[41] = OUTLINED_FUNCTION_67();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44858, &qword_2313765C0);
  OUTLINED_FUNCTION_40_0(v22);
  v24 = *(v23 + 64);
  v1[46] = OUTLINED_FUNCTION_43();
  v25 = sub_231367490();
  v1[47] = v25;
  OUTLINED_FUNCTION_0(v25);
  v1[48] = v26;
  v28 = *(v27 + 64);
  v1[49] = OUTLINED_FUNCTION_67();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2312F1050()
{
  v38 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  if (sub_231368520() == *(v1 + 16) && v3 == *(v1 + 24))
  {
  }

  else
  {
    v5 = OUTLINED_FUNCTION_33_14();

    if ((v5 & 1) == 0)
    {
      v6 = *(v0 + 336);
      v7 = *(v0 + 224);
      v8 = *(v0 + 192);
      sub_231369130();

      v9 = sub_2313698A0();
      v10 = sub_23136A3A0();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 336);
      v13 = *(v0 + 312);
      v14 = *(v0 + 320);
      if (v11)
      {
        v15 = *(v0 + 224);
        v35 = *(v0 + 232);
        v36 = *(v0 + 336);
        v16 = *(v0 + 192);
        v17 = OUTLINED_FUNCTION_29_0();
        v37 = swift_slowAlloc();
        *v17 = 136315650;
        v18 = sub_231368520();
        sub_2311CFD58(v18, v19, &v37);
        OUTLINED_FUNCTION_36_12();
        *(v17 + 4) = v13;
        *(v17 + 12) = 2080;
        *(v0 + 176) = v15;

        v20 = sub_23136A010();
        sub_2311CFD58(v20, v21, &v37);
        OUTLINED_FUNCTION_36_12();
        *(v17 + 14) = v13;
        *(v17 + 22) = 2080;
        v22 = OUTLINED_FUNCTION_26_1();
        *(v17 + 24) = sub_2311CFD58(v22, v23, v24);
        OUTLINED_FUNCTION_34_12(&dword_2311CB000, v25, v26, "Parameter's identifier (%s) is required to match %s's resolverTypeOperand (%s). Returning empty results");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_25();
        OUTLINED_FUNCTION_29();

        (*(v14 + 8))(v36, v13);
      }

      else
      {

        (*(v14 + 8))(v12, v13);
      }

      OUTLINED_FUNCTION_1_38();

      OUTLINED_FUNCTION_14();
      v33 = MEMORY[0x277D84F90];

      return v32(v33);
    }
  }

  OUTLINED_FUNCTION_2_25(*(v0 + 200));
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 416) = v27;
  *(v0 + 424) = v28;
  *(v0 + 432) = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v29 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v29, v30, v31);
}